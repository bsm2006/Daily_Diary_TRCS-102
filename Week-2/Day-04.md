# Week 2 - Day 4

# Topic: Data Quality Assessment and Data Validation Using Pandas

## Objective

The objective of this session was to examine the quality and consistency of a sales dataset using Pandas. The session focused on identifying missing values, detecting duplicate records, calculating missing value percentages, validating numerical columns, analysing unique values, and checking data types.

## Topics Covered

### 1. Loading the Dataset

Pandas and NumPy were imported, and the sales dataset was loaded from an Excel file.

```python
import pandas as pd
import numpy as np

df = pd.read_excel("./DataSets/sales_data_messy.xlsx")
```

### 2. Missing Value Analysis

Missing values were analysed to understand the completeness of the dataset. Different methods were used to calculate the total number of missing values and identify columns containing incomplete records.

```python
df.isnull().sum().sum()

df.isnull().sum()
```

The number and percentage of missing values in individual columns were calculated using:

```python
missing = df.isnull().sum()

print(missing)

mis_percent = (missing / len(df)) * 100

print(mis_percent.round(2))
```

The missing values in a specific column were also checked separately.

```python
mis = df['Product'].isnull().sum()

print(mis)
```

The dataset contained **4 missing values in the Product column**.

### 3. Duplicate Record Detection

Duplicate records were identified using the `duplicated()` function.

```python
duplicate = df[df.duplicated()]

print(duplicate)
```

The total number of duplicate records was calculated using:

```python
duplicate = df.duplicated().sum()

print(duplicate)
```

The dataset contained **10 duplicate records**.

### 4. Numerical Data Validation

Numerical columns were examined to identify their minimum, maximum, and average values. Additional validation checks were performed to identify negative and zero values.

The analysis was performed on three columns:

- Price
- Revenue
- Quantity

**Price Analysis**

```python
print(f"Max Price is : Rs.{df['Price'].max()}")

print(f"Min price is : Rs.{df['Price'].min()}")

print(f"Avg price is : Rs.{df['Price'].mean():.2f}")

print(f"Negative Price : Rs.{(df['Price'] < 0).sum()}")

print(f"Zero Price : Rs.{(df['Price'] == 0).sum()}")
```

**Revenue Analysis**

```python
print(f"Max Revenue is : Rs.{df['Revenue'].max()}")

print(f"Min Revenue is : Rs.{df['Revenue'].min()}")

print(f"Avg Revenue is : Rs.{df['Revenue'].mean():.2f}")

print(f"Negative Revenue : Rs.{(df['Revenue'] < 0).sum()}")

print(f"Zero Revenue : Rs.{(df['Revenue'] == 0).sum()}")
```

**Quantity Analysis**

```python
print(f"Max Quantity is : {df['Quantity'].max()}")

print(f"Min Quantity is : {df['Quantity'].min()}")

print(f"Avg Quantity is : {df['Quantity'].mean()}")

print(f"Negative Quantity : {(df['Quantity'] < 0).sum()}")

print(f"Zero Quantity : {(df['Quantity'] == 0).sum()}")
```

The analysis showed that no negative or zero values were present in the Price, Revenue, and Quantity columns.

### 5. Analysing Column Names and Unique Values

The column names and distinct values were examined to understand the different entries present in the dataset.

```python
print("Columns In the Data Set are:\n", df.columns.tolist())

print(df['Product'].unique().tolist())

print(df['Category'].unique().tolist())

print(df['Price'].unique().tolist())

print(df['Quantity'].unique().tolist())
```

These operations helped identify the different products, categories, prices, and quantities available in the dataset.

### 6. Data Type Inspection and Conversion

The data type of the Date column was inspected. The `pd.to_datetime()` function was then used to convert the column into a proper datetime format.

```python
print(df['Date'].dtype)

df['Date'] = pd.to_datetime(df['Date'])

print(df['Date'].dtype)
```

The conversion ensured that the Date column was represented using the appropriate datetime data type, making it suitable for date-based operations and analysis.

## Practical Implementation

The practical implementation involved examining the sales dataset through different data quality assessment techniques. Missing values and duplicate records were identified, and missing value percentages were calculated.

Numerical validation was performed on Price, Revenue, and Quantity to check for negative and zero values. Unique values were examined to understand the dataset entries, and the Date column was converted into the appropriate datetime format.

## Learning Outcome

By the end of this session, I understood how to assess the quality of a dataset using Pandas. I learned to identify missing values, calculate missing value percentages, detect duplicate records, validate numerical columns, analyse unique values, and convert columns into appropriate data types.

These techniques are essential for identifying inconsistencies and preparing datasets for further data cleaning and preprocessing.
