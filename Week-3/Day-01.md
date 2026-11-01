# Week 3 - Day 1

# Topic: Data Encoding and Data Cleaning Using Pandas

## Objective

The objective of this session was to understand data encoding and data cleaning techniques using Pandas and NumPy. The session focused on converting categorical data into numerical representations, applying custom functions to DataFrame columns, identifying and handling missing values, detecting duplicate records, and understanding appropriate strategies for filling missing numerical and categorical values.

## Topics Covered

### 1. Introduction to Data Encoding

Data encoding is the process of converting categorical or textual data into numerical representations so that it can be used effectively in statistical analysis and machine learning algorithms.

Two encoding techniques were covered:

- Label Encoding
- One-Hot Encoding

### 2. Label Encoding

Label encoding assigns a numerical value to each category in a categorical column.

A dictionary was created to map the category names to numerical values. The `map()` function was then used to generate a new encoded column.

```python
cat_map = {
    'Electronics': 1,
    'Accessories': 0
}

df['Cat_Encod'] = df['Category'].map(cat_map)

print(df[['Category', 'Cat_Encod']].drop_duplicates())
```

In this implementation:

- Electronics was assigned the value 1.
- Accessories was assigned the value 0.
- Missing values remained missing after mapping.

### 3. One-Hot Encoding

One-hot encoding converts categorical values into separate binary columns. Each unique category gets its own column, containing True or False values depending on whether the record belongs to that category.

The `pd.get_dummies()` function was used to perform one-hot encoding.

**Encoding the Product Column**

```python
product_dummies = pd.get_dummies(
    df['Product'],
    prefix='Product'
)

print(product_dummies.head(10))
```

**Encoding the Category Column**

```python
category_dummies = pd.get_dummies(
    df['Category'],
    prefix='Category'
)

print(category_dummies.head(10))
```

The generated columns represent individual categories. A value of True indicates that the record belongs to that category, whereas False indicates that it does not.

### 4. Using the apply() Function

The `apply()` function was studied to perform custom operations on DataFrame columns. It can be used with user-defined functions and lambda expressions to apply conditions and transformations to individual values.

The Transaction_ID column contained identifiers in the format `TXN-1001`. The numerical portion was extracted and converted into an integer.

```python
print(df['Transaction_ID'].dtype)

print(df['Transaction_ID'].isnull().sum())

df = df.dropna(subset=['Transaction_ID'])

print(df['Transaction_ID'].isnull().sum())

df['Transaction_Number'] = df['Transaction_ID'].apply(
    lambda x: int(x.split("-")[1])
)

print(df[['Transaction_ID', 'Transaction_Number']].head(10))
```

The `split()` function separated the transaction prefix from the numerical identifier, while `int()` converted the extracted value into an integer.

### 5. Applying Custom Conditional Functions

A user-defined function was created to classify revenue into different ranking categories based on multiple conditions.

```python
def conditions(revenue):
    if revenue >= 2000:
        return 'Top'
    elif revenue >= 500:
        return 'Mid'
    else:
        return 'Bottom'

df['Revenue_Ranking'] = df['Revenue'].apply(conditions)

print(df[['Revenue', 'Revenue_Ranking']].head(10))
```

The revenue values were classified into three categories:

- Top: Revenue greater than or equal to 2000.
- Mid: Revenue greater than or equal to 500 but below 2000.
- Bottom: Revenue below 500.

### 6. Introduction to Data Cleaning

Data cleaning is the process of identifying and handling missing, duplicate, inconsistent, or incorrect values in a dataset.

The following Pandas functions were introduced:

- `dropna()` – Removes rows or columns containing missing values.
- `fillna()` – Replaces missing values with specified values.
- `drop_duplicates()` – Removes duplicate records.

### 7. Identifying Missing Values

The total number of missing values was calculated, and records containing at least one missing value were extracted.

```python
df['Missing_Count'] = df.isnull().sum().sum()

df['missing_percentage'] = (
    df['Missing_Count'] / len(df)
) * 100

print(df[['Missing_Count', 'missing_percentage']])

missing = df[df.isnull().any(axis=1)]

print(missing)
```

The `isnull().any(axis=1)` operation identifies rows containing at least one missing value.

This helped isolate incomplete records for further examination.

### 8. Removing Missing Values

The `dropna()` function was used to remove records with missing values in a specific column.

```python
df = df.dropna(subset=['Transaction_ID'])

print(df['Transaction_ID'].isnull().sum())
```

This operation removed rows where Transaction_ID was missing, ensuring that every remaining record had a transaction identifier.

### 9. Handling Missing Values Using Statistical Measures

Different statistical measures were studied for filling missing values.

The selection of an appropriate measure depends on the nature of the column:

- Mean: Used for numerical columns when the data distribution is suitable and is not significantly affected by outliers.
- Median: Used for numerical columns when outliers are present because it is less sensitive to extreme values.
- Mode: Used for categorical columns to replace missing values with the most frequently occurring category.

**Filling Missing Numerical Values Using Median**

```python
median_price = df['Price'].median()

print("Median Price:", median_price)

print(df['Price'].fillna(median_price).head(10))
```

**Filling Missing Categorical Values Using Mode**

```python
mode_product = df['Product'].mode()

print("Mode of Products is:", mode_product[0])

print(df['Product'].fillna(mode_product[0]).head(10))
```

The median of the Price column and the mode of the Product column were calculated and used to demonstrate missing value replacement.

### 10. Creating a Copy of the Dataset

A separate copy of the DataFrame was created to perform data cleaning and experimentation without directly modifying the original DataFrame.

```python
df_exp = df.copy()
```

This approach helps preserve the original dataset while performing preprocessing operations on a separate copy.

### 11. Additional Data Cleaning Concepts

The following concepts were also introduced for further data preprocessing:

- Text Cleaning: Using `.str.strip()` to remove unnecessary whitespace and `.str.title()` to standardize text capitalization.
- Duplicate Removal: Using `drop_duplicates()` to remove repeated records.
- Outlier Detection: Identifying extreme values using statistical techniques.
- Clipping and Capping: Handling outliers by restricting values within specified limits.

## Practical Implementation

The practical implementation involved encoding categorical columns using dictionary mapping and one-hot encoding. The `apply()` function was used to extract numerical transaction identifiers and classify revenue values through custom conditional functions.

Data cleaning operations were also performed on the sales dataset. Missing values were identified, incomplete transaction records were removed, and median and mode were used to demonstrate missing value replacement.

A separate DataFrame copy was created for further preprocessing and experimentation.

## Learning Outcome

By the end of this session, I understood the fundamentals of data encoding and data cleaning using Pandas and NumPy. I learned how to convert categorical values into numerical representations, apply custom functions to DataFrame columns, extract information from string-based identifiers, identify incomplete records, and handle missing values using statistical measures.

The session also introduced text cleaning, duplicate removal, outlier detection, and clipping and capping techniques, providing a foundation for preparing datasets for further analysis and machine learning.
