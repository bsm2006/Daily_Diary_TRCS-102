# Day 02

**Date: Tuesday, 23 June 2026**

## Objective

To understand Python data structures and learn how to store, access, modify, organize, and manipulate data efficiently using Lists, Tuples, Dictionaries, and Sets. These data structures form the foundation of data handling and are widely used in Data Science, Machine Learning, and Software Development.

---

## Topics Covered

### Lists

* Creating lists
* Accessing elements using positive and negative indexing
* Modifying list elements
* Adding elements using:

  * `append()`
  * `insert()`
  * `extend()`
* Removing elements using:

  * `remove()`
  * `pop()`
* Sorting and reversing lists
* Built-in functions:

  * `len()`
  * `min()`
  * `max()`
  * `sum()`
  * `sorted()`
  * `enumerate()`

### Tuples

* Introduction to tuples
* Immutable nature of tuples
* Creating tuples
* Single-element tuples
* Tuple unpacking
* Tuple methods:

  * `count()`
  * `index()`
* Built-in functions with tuples

### Dictionaries

* Creating dictionaries
* Accessing values using keys
* Adding new key-value pairs
* Updating existing values
* Using `get()` method
* Dictionary update operations
* Introduction to dictionary comprehension

### Sets

* Introduction to sets
* Characteristics of sets
* Unique and unordered nature of sets
* Adding and removing elements
* Set methods:

  * `add()`
  * `remove()`
  * `discard()`
  * `union()`
  * `intersection()`
  * `difference()`
  * `symmetric_difference()`
  * `issubset()`
  * `issuperset()`
* Membership testing using `in` and `not in`
* Removing duplicate values from collections
* Real-world applications of sets

---

## Practical Work

### List Operations

```python
fruits = ["apple", "banana", "cherry"]

print(fruits[0])
print(fruits[-1])

fruits[1] = "blueberry"

fruits.append("date")
fruits.insert(1, "kiwi")

more_fruits = ["mango", "papaya"]
fruits.extend(more_fruits)

print(fruits)
```

### Removing Elements from Lists

```python
fruits.remove("kiwi")

removed_fruit = fruits.pop(2)

print(fruits)
print(removed_fruit)
```

### Sorting and Reversing Lists

```python
numbers = [5, 2, 9, 1, 5, 6]

numbers.sort()
print(numbers)

numbers.sort(reverse=True)
print(numbers)

numbers.reverse()
print(numbers)
```

### Built-in Functions

```python
numbers = [12, 45, 2, 89, 30]

print(len(numbers))
print(max(numbers))
print(min(numbers))
print(sum(numbers))
print(sorted(numbers))
print(list(enumerate(numbers)))
```

### Tuple Operations

```python
point = (4, 5)

x, y = point

print("x =", x)
print("y =", y)
```

### Tuple Methods

```python
scores = (8, 9, 10, 7, 8, 9, 6)

print(scores.count(8))
print(scores.index(10))
```

### Dictionary Operations

```python
student = {
    "Name": "Sahib",
    "Age": 20,
    "Courses": ["Python", "Data Science"]
}

print(student)
```

### Dictionary Modification

```python
book = {
    "Title": "The Hobbit",
    "Author": "J.R.R. Tolkien",
    "Year": 1937
}

book["Genre"] = "Fantasy"
book["Year"] = 1938

print(book)
```

### Using get() Method

```python
inventory = {
    "Apples": 15,
    "Bananas": 8
}

print(inventory.get("Oranges", 0))
```

### Set Operations

```python
colors = {"red", "green", "blue"}

print("Original Set:", colors)

colors.add("yellow")
colors.remove("green")

print(colors)
```

### Union and Intersection

```python
set_A = {1, 2, 3, 4}
set_B = {3, 4, 5, 6}

print(set_A.union(set_B))
print(set_A.intersection(set_B))
```

### Difference and Symmetric Difference

```python
print(set_A.difference(set_B))
print(set_A.symmetric_difference(set_B))
```

### Removing Duplicates Using Sets

```python
user_ids = ["id1", "id2", "id1", "id3", "id2", "id4"]

unique_user_ids = set(user_ids)

print(list(unique_user_ids))
```

### Finding Common Interests

```python
alice_interests = {"reading", "cycling", "cooking"}
bob_interests = {"cycling", "cooking", "gaming"}

common_interests = alice_interests.intersection(bob_interests)

print(common_interests)
```

---

## Learning Outcomes

* Learned how to store and manipulate collections of data using lists.
* Understood the difference between mutable and immutable data structures.
* Practiced sorting, searching, inserting, and deleting elements in lists.
* Learned tuple creation, unpacking, and tuple-specific methods.
* Gained experience working with dictionaries and key-value pairs.
* Understood the concept of sets and their ability to store unique values.
* Performed set operations such as union, intersection, difference, and symmetric difference.
* Used sets for duplicate removal and comparison tasks.
* Improved problem-solving skills using Python data structures.

---

## Summary

The second day focused on Python's core data structures: Lists, Tuples, Dictionaries, and Sets. Various operations such as insertion, deletion, sorting, searching, tuple unpacking, dictionary manipulation, and set operations were performed. Special attention was given to the use of sets for handling unique values and performing mathematical operations on collections. These data structures are essential for efficient data management and serve as the foundation for advanced topics in Data Science, Machine Learning, and Software Development.
