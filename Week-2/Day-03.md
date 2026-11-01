# Week 2 - Day 3

# Topic: Exploratory Data Analysis Using Pandas

## Objective

The objective of this session was to explore a sales dataset using Pandas and NumPy. The session focused on understanding the dataset structure, inspecting its columns, identifying missing values, analysing unique values, calculating statistical measures, and sorting records.

## Topics Covered

### 1. Importing Libraries and Loading the Dataset

Pandas and NumPy were imported for data manipulation and numerical operations. An Excel dataset named `sales_data_messy.xlsx` was loaded using the `read_excel()` function.

```python
import pandas as pd
import numpy as np

df = pd.read_excel('./DataSets/sales_data_messy.xlsx')
```

### 2. Dataset Exploration

Various Pandas methods and attributes were studied to understand the structure and characteristics of the dataset.

```python
df.head()
df.head(10)
df.info()
df.describe()

print("Rows:", df.shape[0])
print("Columns:", df.shape[1])
```

- `head()` displays the first five rows of the dataset.
- `head(10)` displays the first ten rows.
- `info()` provides information about columns, data types, and non-null values.
- `describe()` generates descriptive statistical information.
- `shape` returns the number of rows and columns.

### 3. Identifying Missing Values

Missing values were examined using the `isnull()` function. Different approaches were used to calculate the number of missing entries.

```python
df.isnull()

df.isnull().sum()

df.isnull().sum().sum()

df['Date'].isnull().sum()
```

- `isnull()` identifies missing values using Boolean values.
- `isnull().sum()` calculates missing values column-wise.
- `isnull().sum().sum()` calculates the total number of missing values in the dataset.
- `df['Date'].isnull().sum()` checks missing values in a specific column.

### 4. Analysing Unique Values and Frequencies

Unique values and their frequencies were examined to understand the distribution of data within individual columns.

```python
df.nunique()

df['Date'].unique()
df['Category'].unique()
df['Product'].unique()

df['Quantity'].value_counts()
df['Product'].value_counts()
```

- `nunique()` returns the number of distinct values in each column.
- `unique()` returns the distinct values present in a column.
- `value_counts()` calculates the frequency of each value in a column.

### 5. Statistical Analysis

Statistical operations were performed on the Revenue column to understand its numerical characteristics.

```python
df['Revenue'].max()

df['Revenue'].min()

df['Revenue'].sum()

df['Revenue'].mean()

df['Revenue'].median()
```

These functions calculate the maximum, minimum, total, mean, and median values of the Revenue column.

### 6. Sorting and Selecting Columns

Specific columns were selected for focused analysis. The `sort_values()` function was used to arrange records according to product prices in descending order.

```python
sub = df[["Product", "Price", "Revenue"]]

sorted_data = sub.sort_values(
    ['Price'],
    ascending=[False]
).head()

print(sorted_data[['Product', 'Price', 'Revenue']])
```

The data types of selected columns were also examined.

```python
print(sub.dtypes)

print(df.columns.tolist())
```

- `dtypes` displays the data types of selected columns.
- `columns.tolist()` returns the column names as a Python list.
- `sort_values()` arranges records based on the specified column.

### 7. Python Environment and Pandas Version

The Python executable path and installed Pandas version were checked to verify the working environment.

```python
import sys

print(sys.executable)

print(pd.__version__)
```

## Practical Implementation

A sales dataset was loaded into a Pandas DataFrame and explored using different data analysis operations. The practical work included examining dataset dimensions, checking missing values, identifying unique values, calculating value frequencies, performing statistical analysis on revenue, and sorting product records based on price.

The session also included checking the Python environment and the installed Pandas version.

## Learning Outcome

By the end of this session, I understood how to perform basic exploratory data analysis using Pandas. I learned to inspect dataset structures, identify missing values, analyse unique values and frequencies, calculate statistical measures, select specific columns, and sort records.

These operations provide a foundation for understanding and examining datasets before proceeding with data cleaning and preprocessing.
