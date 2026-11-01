# Week 3 - Day 5

**Date: Friday, 10 July 2026**

# Topic: Advanced Data Visualization Using Seaborn and Introduction to Machine Learning

## Objective

To explore advanced data visualization techniques using Seaborn, understand relationships between numerical and categorical variables, analyse correlations through heatmaps, and examine the dataset before beginning Machine Learning.

## Topics Covered

### 1. Scatter Plot Visualization Using Seaborn

Scatter plots were created using Seaborn to analyse relationships between numerical variables.

- **Price vs Revenue:** Visualized the relationship between product price and revenue.
- **Quantity vs Revenue:** Examined how the quantity of products relates to revenue, with additional categorical differentiation.

The following parameters were used to improve visualization:

- `s`: Controls marker size.
- `alpha`: Controls marker transparency.
- `edgecolor`: Defines the marker boundary.
- `hue`: Differentiates data points using colours based on categories.
- `style`: Uses different marker styles for categorical values.

### 2. Correlation Analysis

Correlation analysis was performed to understand the relationships between numerical columns in the dataset.

The selected columns were:

- Price
- Quantity
- Revenue
- Day
- Revenue_Per_Unit

The Pandas `.corr()` function was used to calculate the correlation matrix.

The resulting matrix was rounded to two decimal places using `.round(2)` for better readability.

### 3. Correlation Heatmap

A heatmap was generated using Seaborn to represent the correlation matrix visually.

The following parameters were used:

- `annot=True`: Displays correlation values inside the heatmap.
- `cmap='coolwarm'`: Applies a colour gradient to represent correlation.
- `linewidth=1`: Adds spacing between cells.
- `linecolor='white'`: Sets the cell boundary colour.
- `square=True`: Displays square-shaped cells.

### 4. Categorical Data Visualization

A count plot was created to examine whether transactions were classified as high-value transactions.

The `sns.countplot()` function was used with the `Is_High_Value` column to visualize the frequency of each category.

### 5. Product-Wise Quantity Analysis

Product-wise quantity analysis was performed using Pandas and Seaborn.

- Used `groupby('Product')` to group records by product.
- Calculated the average quantity using `.mean()`.
- Rounded the results to two decimal places.
- Created a bar plot to visualize average quantity across products.

### 6. Introduction to Machine Learning

The session introduced the Machine Learning section of the training.

Before proceeding with Machine Learning, the dataset was examined to understand its structure and data types.

The following operations were performed:

- Checked the number of rows and columns using `df.shape`.
- Displayed the initial records using `df.head()`.
- Examined column data types using `df.dtypes`.
- Installed the Scikit-learn library using `pip install scikit-learn`.

## Practical Implementation

The practical session involved:

1. Loading the sales dataset using Pandas.
2. Creating scatter plots to analyse Price vs Revenue and Quantity vs Revenue.
3. Using colour and marker-style differentiation to represent categorical variables.
4. Calculating the correlation matrix for selected numerical columns.
5. Visualizing correlations through a Seaborn heatmap.
6. Creating a count plot for high-value transaction classification.
7. Calculating average product-wise quantities and visualizing them through a bar plot.
8. Inspecting the dataset structure and preparing the environment for Machine Learning using Scikit-learn.

## Learning Outcome

Understood how Seaborn can be used for advanced statistical data visualization. Learned to analyse numerical relationships through scatter plots, calculate correlations, interpret heatmaps, and visualize categorical distributions. Also gained an initial understanding of the dataset inspection and library setup required before starting Machine Learning.
