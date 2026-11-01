# Week 4 - Day 2

# Topic: Machine Learning Model Development Using Linear Regression and Logistic Regression

## Objective

To understand the process of developing and training Machine Learning models using Scikit-learn. The session focused on implementing Linear Regression for predicting continuous numerical values and Logistic Regression for classification problems, along with evaluating model performance.

## Topics Covered

### 1. Introduction to Machine Learning Model Creation

The session introduced the development of Machine Learning models using Python libraries such as Pandas, NumPy, Matplotlib, and Scikit-learn.

The sales dataset was loaded using Pandas, and its initial records were examined.

The dataset was used to explore two different Machine Learning approaches:

- Linear Regression for predicting numerical values.
- Logistic Regression for classification tasks.

### 2. Linear Regression Model

Linear Regression is a supervised Machine Learning algorithm used to predict continuous numerical values by identifying relationships between input features and a target variable.

In this practical, the objective was to predict Revenue using Price and Quantity.

**Feature selection:**

- Input features (X): `Price` and `Quantity`
- Target variable (y): `Revenue`

```python
X = df[['Price', 'Quantity']]
y = df['Revenue']
```

The dimensions of the input features and target variable were examined using `.shape`.

### 3. Splitting the Dataset

The dataset was divided into training and testing subsets using `train_test_split()`.

An 80:20 split was implemented, where 80% of the data was used for training and 20% for testing.

```python
from sklearn.model_selection import train_test_split

X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.2, random_state=42
)
```

### 4. Training the Linear Regression Model

The `LinearRegression` class from Scikit-learn was used to create and train the model.

```python
from sklearn.linear_model import LinearRegression

model = LinearRegression()
model.fit(X_train, y_train)
```

After training, the model coefficients and intercept were extracted using:

- `model.coef_`: Represents the coefficients associated with the input features.
- `model.intercept_`: Represents the intercept of the regression equation.

The resulting regression equation was represented as:

\[
Revenue = (a \times Price) + (b \times Quantity) + c
\]

Where \(a\) and \(b\) represent the learned coefficients and \(c\) represents the intercept.

### 5. Actual vs Predicted Values

After training, the model was used to predict Revenue for the testing dataset.

```python
y_pred = model.predict(X_test)
```

A comparison DataFrame was created containing:

- Actual Revenue
- Predicted Revenue
- Difference between actual and predicted values

This comparison helped examine how closely the model's predictions matched the actual values.

### 6. Regression Model Performance Evaluation

Different evaluation metrics were used to measure the performance of the Linear Regression model.

**Mean Absolute Error (MAE)**

Calculates the average absolute difference between actual and predicted values.

\[
MAE = \frac{1}{n}\sum
