#!/usr/bin/env bash
set -euo pipefail

# Run this script from the root of your cloned Daily_Diary_TRCS-102 repository.
# Set BACKDATE_COMMITS=1 only if these dates accurately represent when the work
# was completed. Otherwise leave it at 0: the diary headings will be dated,
# while Git commits will correctly use the current time.

BACKDATE_COMMITS="${BACKDATE_COMMITS:-0}"

declare -a files=(
  "Week-1/Day-01.md"
  "Week-1/Day-02.md"
  "Week-1/Day-03.md"
  "Week-1/Day-04.md"
  "Week-1/Day-05.md"
  "Week-2/Day-01.md"
  "Week-2/Day-02.md"
  "Week-2/Day-03.md"
  "Week-2/Day-04.md"
  "Week-2/Day-05.md"
  "Week-3/Day-01.md"
  "Week-3/Day-02.md"
  "Week-3/Day-03.md"
  "Week-3/Day-04.md"
  "Week-3/Day-05.md"
  "Week-4/Day-01.md"
  "Week-4/Day-02.md"
  "Week-4/Day-03.md"
  "Week-4/Day-04.md"
  "Week-4/Day-05.md"
)

declare -a dates=(
  "2026-06-22|Monday, 22 June 2026"
  "2026-06-23|Tuesday, 23 June 2026"
  "2026-06-24|Wednesday, 24 June 2026"
  "2026-06-25|Thursday, 25 June 2026"
  "2026-06-26|Friday, 26 June 2026"
  "2026-06-29|Monday, 29 June 2026"
  "2026-06-30|Tuesday, 30 June 2026"
  "2026-07-01|Wednesday, 1 July 2026"
  "2026-07-02|Thursday, 2 July 2026"
  "2026-07-03|Friday, 3 July 2026"
  "2026-07-06|Monday, 6 July 2026"
  "2026-07-07|Tuesday, 7 July 2026"
  "2026-07-08|Wednesday, 8 July 2026"
  "2026-07-09|Thursday, 9 July 2026"
  "2026-07-10|Friday, 10 July 2026"
  "2026-07-13|Monday, 13 July 2026"
  "2026-07-14|Tuesday, 14 July 2026"
  "2026-07-15|Wednesday, 15 July 2026"
  "2026-07-16|Thursday, 16 July 2026"
  "2026-07-17|Friday, 17 July 2026"
)

if ! git rev-parse --show-toplevel >/dev/null 2>&1; then
  echo "ERROR: Run this script from inside the cloned Git repository."
  exit 1
fi

if [[ "$(git branch --show-current)" != "main" ]]; then
  echo "ERROR: You are not on the main branch. Switch to main and rerun."
  exit 1
fi

if [[ -n "$(git status --porcelain)" ]]; then
  echo "ERROR: Your working tree is not clean. Commit or stash existing changes first."
  git status --short
  exit 1
fi

for f in "${files[@]}"; do
  if [[ ! -f "$f" ]]; then
    echo "ERROR: Missing expected diary file: $f"
    exit 1
  fi
done

echo "Adding date lines to 20 diary entries..."
for i in "${!files[@]}"; do
  file="${files[$i]}"
  date_text="${dates[$i]#*|}"

  # Idempotent: replace an existing Date line immediately below the first
  # heading, otherwise insert one there.
  python3 - "$file" "$date_text" <<'PY'
from pathlib import Path
import sys

path = Path(sys.argv[1])
date_text = sys.argv[2]
text = path.read_text(encoding="utf-8")
lines = text.splitlines()

heading_index = next((i for i, line in enumerate(lines) if line.startswith("# ")), None)
if heading_index is None:
    raise SystemExit(f"No Markdown heading found in {path}")

date_line = f"**Date: {date_text}**"
if heading_index + 1 < len(lines) and lines[heading_index + 1].startswith("**Date:"):
    lines[heading_index + 1] = date_line
else:
    lines.insert(heading_index + 1, "")
    lines.insert(heading_index + 2, date_line)

path.write_text("\n".join(lines).rstrip() + "\n", encoding="utf-8")
PY
done

echo "Creating one commit per diary day..."
for i in "${!files[@]}"; do
  file="${files[$i]}"
  date_iso="${dates[$i]%%|*}"
  date_text="${dates[$i]#*|}"
  git add -- "$file"

  if [[ "$BACKDATE_COMMITS" == "1" ]]; then
    # Use only when the date is the genuine date of the work.
    timestamp="${date_iso}T18:00:00+05:30"
    GIT_AUTHOR_DATE="$timestamp" GIT_COMMITTER_DATE="$timestamp" \
      git commit -m "Add diary entry for ${date_text} (retrospective record)"
  else
    git commit -m "Add diary entry for ${date_text} (dated entry)"
  fi
done

echo
echo "Completed. Review the commit history before pushing:"
git --no-pager log --date=iso --pretty=format:'%h %ad %s' -20
echo
echo
echo "Push with: git push origin main"
if [[ "$BACKDATE_COMMITS" == "1" ]]; then
  echo "Note: these commits carry historical timestamps; use this mode only if accurate."
fi
