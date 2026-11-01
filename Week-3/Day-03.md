# Week 3 - Day 3

**Date: Wednesday, 8 July 2026**

# Topic: Statistical Data Visualization Using Histograms, Boxplots, and Subplots

## Objective

To understand and implement statistical data visualization techniques using Matplotlib. The practical focused on examining revenue and price distributions, identifying potential outliers, comparing product categories, and presenting multiple visualizations within a single figure.

## Topics Covered

### 1. Importing Libraries and Loading the Dataset

The practical began by importing the required Python libraries and loading the sales dataset using Pandas.

**Libraries Used:**
- `Matplotlib`: For creating data visualizations.
- `Pandas`: For loading and manipulating the dataset.
- `NumPy`: Imported for numerical operations.

**Dataset Loading:**

The `sales_data.xlsx` file was loaded into a Pandas DataFrame using `pd.read_excel()`.

```python
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

df = pd.read_excel('sales_data.xlsx')
```

### 2. Histogram

A histogram is a statistical visualization used to represent the frequency distribution of numerical data. It divides values into intervals called bins and displays the number of observations falling within each interval.

**Revenue Distribution:**

A histogram was created to examine the distribution of transaction revenue.

```python
plt.hist(df['Revenue'], edgecolor='Black', alpha=0.5)
plt.xlabel('Revenue')
plt.ylabel('Number of Transactions')
plt.grid(axis='y', alpha=1)
plt.show()
```

**Price Distribution:**

A second histogram was created to visualize the distribution of product prices using five bins.

```python
plt.hist(df['Price'], bins=5, color='red',
         edgecolor='black', alpha=0.6)

plt.xlabel('Price (Rs.)')
plt.ylabel('Number of Transactions')
plt.title('Distribution of Product Prices', fontsize=14)
plt.grid(axis='y', alpha=0.5)
plt.show()
```

This helped in understanding how transaction revenue and product prices were distributed across the dataset.

### 3. Boxplot

A boxplot is a statistical graph used to summarize the distribution of numerical data. It represents the median, quartiles, spread, and potential outliers.

**Revenue Boxplot:**

A boxplot was created to examine the distribution of revenue and identify potential outliers.

```python
plt.boxplot(
    df['Revenue'],
    patch_artist=True,
    boxprops=dict(facecolor='Lightgreen', color='black'),
    medianprops=dict(color='purple', linewidth=2)
)

plt.ylabel('Revenue (Rs.)')
plt.title('Boxplot of Revenue - Checking for Outliers')
plt.grid(axis='y', alpha=0.5)
plt.tight_layout()
plt.show()
```

**Category-wise Revenue Comparison:**

Revenue values were separated into Electronics and Accessories categories using conditional filtering.

```python
elec_rev = df[df['Category'] == 'Electronics']['Revenue']
acc_rev = df[df['Category'] == 'Accessories']['Revenue']

plt.boxplot(
    [elec_rev, acc_rev],
    tick_labels=['Electronics', 'Accessories'],
    patch_artist=True,
    boxprops=dict(facecolor='lightyellow', color='red'),
    medianprops=dict(color='red', linewidth=3)
)

plt.ylabel('Revenue')
plt.title('Revenue by Category')
plt.grid(axis='y')
plt.show()
```

This visualization enabled a comparison of revenue distributions across the two product categories.

**Price Boxplot:**

A separate boxplot was also created to examine the distribution of product prices.

```python
plt.boxplot(
    df['Price'],
    tick_labels=['Price'],
    patch_artist=True,
    boxprops=dict(facecolor='lightblue', color='black'),
    medianprops=dict(color='red', linewidth=3)
)

plt.ylabel('Price')
plt.title('Price Distribution')
plt.grid(axis='y')
plt.show()
```

### 4. Category-wise Revenue Trend Analysis

The practical also involved comparing the daily revenue trends of Electronics and Accessories.

The dataset was filtered category-wise, and daily revenue was calculated using `groupby()` and `sum()`.

```python
elec = df[df['Category'] == 'Electronics'].groupby('Date')['Revenue'].sum()

acc = df[df['Category'] == 'Accessories'].groupby('Date')['Revenue'].sum()

plt.plot(elec.index, elec.values, marker='o', label='Electronics')
plt.plot(acc.index, acc.values, marker='d', label='Accessories')

plt.legend()
plt.xticks(rotation=50)
plt.grid(True)
plt.tight_layout()
plt.show()
```

Two line plots were displayed together to compare the revenue trends of both categories over time.

### 5. Creating Multiple Plots Using Subplots

The `plt.subplots()` function was used to create multiple visualizations within a single figure.

A figure containing two rows and two columns was initialized. The practical displayed the daily revenue trend and revenue distribution in separate subplot positions.

**Daily Revenue Trend:**

Daily revenue was calculated by grouping the dataset according to Date and summing the Revenue values.

**Revenue Distribution:**

A histogram was created to represent the distribution of transaction revenue.

```python
rev = df.groupby('Date')['Revenue'].sum()

fig, axes = plt.subplots(nrows=2, ncols=2, figsize=(15, 10))

axes[0][0].plot(rev.index, rev.values, marker='s')
axes[0][0].set_xlabel('Dates')
axes[0][0].set_ylabel('Revenue')
axes[0][0].set_title('Revenue Trend')
axes[0][0].tick_params(axis='x', rotation=45)
axes[0][0].grid(axis='y')

axes[0][1].hist(df['Revenue'], edgecolor='black')
axes[0][1].set_xlabel('Revenue')
axes[0][1].set_ylabel('Transactions')
axes[0][1].set_title('Revenue Distribution')
axes[0][1].grid(axis='y')

fig.suptitle('Revenue Trend V/S Revenue Distribution')
plt.show()
```

The `axes` array was used to access individual subplot positions and configure each visualization independently.

## Practical Implementation

The following practical exercises were performed:

1. Loaded the sales dataset using Pandas.
2. Created histograms to analyze Revenue and Price distributions.
3. Used different bin configurations and graphical properties in histograms.
4. Created boxplots to examine Revenue and Price distributions.
5. Compared revenue distributions between Electronics and Accessories using category-wise boxplots.
6. Applied conditional filtering and `groupby()` to calculate daily category-wise revenue.
7. Compared Electronics and Accessories revenue trends using line plots.
8. Created multiple visualizations within a single figure using `plt.subplots()`.
9. Customized graph titles, axis labels, legends, gridlines, colors, markers, and figure layout.

## Learning Outcome

By completing this practical, I developed an understanding of statistical data visualization using Matplotlib. I learned how to represent numerical distributions through histograms, examine data spread and potential outliers using boxplots, compare multiple categories through graphical analysis, and organize multiple visualizations using subplots.

These techniques are useful in Exploratory Data Analysis (EDA), particularly for understanding numerical distributions, identifying unusual observations, and communicating patterns in datasets.
