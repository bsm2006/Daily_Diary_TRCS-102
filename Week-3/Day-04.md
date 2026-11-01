# Week 3 - Day 4

# Topic: Categorical Data Visualization Using Seaborn

## Objective

To understand and implement categorical data visualization using the Seaborn library in Python. The practical focused on visualizing transaction frequencies across different products and categories using count plots.

## Topics Covered

### 1. Introduction to Seaborn

Seaborn is a Python data visualization library built on Matplotlib. It provides a high-level interface for creating statistical graphics and makes it easier to visualize patterns and relationships in datasets.

**Libraries Used:**
- `Pandas`: For loading and handling tabular data.
- `NumPy`: For numerical operations.
- `Matplotlib`: For configuring and displaying visualizations.
- `Seaborn`: For statistical data visualization.

```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
```

### 2. Configuring Seaborn Styles and Color Palettes

Seaborn provides different built-in styles and color palettes to improve the appearance of visualizations.

The `set_style()` function was used to apply a white background with gridlines, while `set_palette()` was used to configure the default color palette.

```python
sns.set_style('whitegrid')

sns.set_palette('Set2')

print("Library imported\nSeaborn version", sns.__version__)
```

**Functions Used:**

- `sns.set_style('whitegrid')`: Applies a white-grid visualization style.
- `sns.set_palette('Set2')`: Sets the default color palette.
- `sns.__version__`: Displays the installed Seaborn version.

### 3. Loading the Dataset

The sales dataset was loaded from an Excel file using Pandas.

```python
df = pd.read_excel('sales_data.xlsx')

df.head()
```

The dataset contained information such as Transaction_ID, Date, Product, Category, Price, Quantity, and Revenue.

### 4. Count Plot for Product-wise Transaction Analysis

A count plot is a categorical visualization that displays the number of observations belonging to each category.

The `sns.countplot()` function was used to examine the transaction frequency of different products. The `hue` parameter was used to further differentiate the products according to their respective categories.

```python
plt.Figure(figsize=(8, 5))

sns.countplot(
    x='Product',
    data=df,
    order=df["Product"].value_counts().index,
    hue='Category',
    palette='Blues_d',
    edgecolor='Black'
)

plt.xlabel("Product", fontsize=12)
plt.ylabel("Number of Transaction", fontsize=12)
plt.title("Transaction count by product", fontsize=14)

plt.tight_layout()
plt.show()
```

**Important Parameters:**

- `x='Product'`: Specifies the categorical variable to be displayed.
- `data=df`: Specifies the DataFrame containing the data.
- `order`: Arranges products according to their transaction frequency.
- `hue='Category'`: Separates the observations using category-based colors.
- `palette='Blues_d'`: Applies a blue color palette.
- `edgecolor='Black'`: Adds black borders to the bars.

### 5. Count Plot for Category-wise Transaction Analysis

A second count plot was created to compare the number of transactions across different product categories.

A custom color list was provided to distinguish the categories visually.

```python
plt.Figure(figsize=(8, 5))

colours = ["Blue", "red"]

sns.countplot(
    x='Category',
    data=df,
    order=df["Category"].value_counts().index,
    edgecolor='Black',
    palette=colours
)

plt.xlabel("Product", fontsize=12)
plt.ylabel("Number of Transaction", fontsize=12)
plt.title("Transaction count by product", fontsize=14)

plt.tight_layout()
plt.show()
```

The visualization represented the frequency of transactions for each category, allowing a direct comparison between Electronics and Accessories.

## Practical Implementation

The following practical exercises were performed:

1. Imported Pandas, NumPy, Matplotlib, and Seaborn.
2. Configured the Seaborn visualization style using `sns.set_style()`.
3. Applied a predefined color palette using `sns.set_palette()`.
4. Loaded the sales dataset using `pd.read_excel()`.
5. Created a product-wise count plot using `sns.countplot()`.
6. Used the `hue` parameter to differentiate product categories.
7. Arranged product observations according to transaction frequency using `value_counts()`.
8. Created a category-wise count plot using a custom color palette.
9. Customized visualization labels, titles, borders, and layouts.

## Learning Outcome

By completing this practical, I developed an understanding of categorical data visualization using Seaborn. I learned how to configure visualization styles and color palettes, create count plots, compare transaction frequencies across products and categories, and use the `hue` parameter to represent additional categorical information.

These techniques are useful in Exploratory Data Analysis (EDA) for understanding categorical distributions and identifying patterns in transactional datasets.
