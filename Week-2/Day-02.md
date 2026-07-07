# Week 2 - Day 2

# Introduction to Pandas

## Objective

The objective of today's session was to understand the fundamentals of the Pandas library and its role in data analysis. The session introduced the two primary data structures provided by Pandas—Series and DataFrame—and focused on importing datasets from CSV files for further analysis. Various functions were explored to inspect and understand the structure of real-world datasets.

---

## Introduction to Pandas

Pandas is one of the most widely used Python libraries for data manipulation and analysis. It is built on top of NumPy and provides powerful data structures that simplify working with structured and tabular data. Pandas is extensively used in Data Science, Data Analytics, and Machine Learning for cleaning, organizing, and analysing datasets.

The library was imported using the following statement:

```python
import pandas as pd
```

---

## Pandas Series

The first data structure introduced was the **Series**, which represents a one-dimensional labelled array capable of storing different types of data. Different methods of creating a Series were explored using Python lists and NumPy arrays.

```python
import pandas as pd

s = pd.Series([10, 20, 30, 40])

print(s)
```

Series with custom indexes were also created to understand how labelled indexing works in Pandas.

```python
s = pd.Series([90, 85, 95], index=["Math", "Science", "English"])

print(s)
```

---

## DataFrame

The **DataFrame** is a two-dimensional tabular data structure consisting of rows and columns. Different methods of creating DataFrames were practised using dictionaries and NumPy arrays.

```python
data = {
    "Name": ["Alice", "Bob", "Charlie"],
    "Age": [20, 21, 22]
}

df = pd.DataFrame(data)

print(df)
```

Creating DataFrames from NumPy arrays was also demonstrated.

```python
import numpy as np

arr = np.array([[1,2,3],
                [4,5,6],
                [7,8,9]])

df = pd.DataFrame(arr)

print(df)
```

---

## Reading CSV Files

The session focused on importing datasets stored in CSV format using the `read_csv()` function. Different parameters were discussed to customize the import process.

```python
df = pd.read_csv("Datasets/bollywood.csv")
```

The use of `index_col` was also introduced for selecting a specific column as the DataFrame index.

```python
df = pd.read_csv("Datasets/bollywood.csv", index_col="movie")
```

---

## Exploring the Dataset

After loading the dataset, several built-in Pandas functions were used to understand its structure and contents.

```python
df.head()
```

```python
df.tail()
```

```python
df.shape
```

```python
df.columns
```

```python
df.dtypes
```

```python
df.info()
```

```python
df.describe()
```

These functions provide useful information such as the number of rows and columns, column names, data types, summary statistics, and missing values present in the dataset.

---

## Accessing Data

Different techniques were practised for selecting individual columns and viewing their contents.

```python
df["movie"]
```

Multiple columns were also selected together for analysis.

```python
df[["movie", "lead"]]
```

The concept of converting a single-column DataFrame into a Series using the `squeeze()` function was also discussed.

---

## Practical Implementation

During the practical session, multiple DataFrames and Series were created using different data sources. A real-world CSV dataset was imported and explored using various Pandas functions. Different methods of inspecting the dataset, selecting columns, and understanding the overall structure of the data were implemented through hands-on practice.

---

## Learning Outcome

By the end of today's session, I developed a strong understanding of the basic concepts of Pandas and its importance in data analysis. I learnt how to create Series and DataFrames, import datasets from CSV files, inspect the structure of data using built-in functions, and access specific information from a dataset. This session established the foundation for performing data cleaning, preprocessing, and exploratory data analysis in future sessions.
