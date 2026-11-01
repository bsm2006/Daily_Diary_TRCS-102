# Week 4 – Day 4

**Date: Thursday, 16 July 2026**

# Random Forest: Ensemble Learning, Model Comparison and Feature Importance

## Objective

To understand the concept of Ensemble Learning and Random Forest, explore how multiple Decision Trees work together to improve prediction stability, implement a Random Forest Classifier using Scikit-learn, compare its performance with a single Decision Tree, and analyse feature importance.

## 1. Introduction to Ensemble Learning

Ensemble Learning is a Machine Learning technique in which multiple models are combined to produce a final prediction instead of relying on a single model.

The main idea is that combining the predictions of multiple models can produce more reliable results than using an individual model.

### Real-World Analogy

Imagine visiting five different doctors to get opinions about a medical condition. Instead of relying on just one opinion, you consider the majority decision.

Similarly, Ensemble Learning combines predictions from multiple models and uses their collective output.

**Key Idea:** Individual models may make mistakes, but combining multiple models can reduce the impact of individual errors.

## 2. Introduction to Random Forest

Random Forest is an Ensemble Learning algorithm that combines multiple Decision Trees to perform classification or regression.

For classification, each tree produces a prediction, and the final output is determined through majority voting.

For example, consider five Decision Trees predicting the category of an input:

| Decision Tree | Prediction |
|---|---|
| Tree 1 | Cat |
| Tree 2 | Dog |
| Tree 3 | Cat |
| Tree 4 | Cat |
| Tree 5 | Dog |

Since three out of five trees predict Cat, the final prediction is **Cat**.

### Why Is It Called Random Forest?

- **Random:** Each tree is trained using random subsets of training data and features.
- **Forest:** The algorithm consists of multiple Decision Trees working together.

Instead of relying on one tree, Random Forest combines the predictions of many trees.

## 3. Decision Tree vs Random Forest

| Parameter | Decision Tree | Random Forest |
|---|---|---|
| Number of Trees | Single tree | Multiple trees |
| Overfitting | More prone to overfitting | Generally less prone to overfitting |
| Accuracy | Can provide good accuracy | Often provides better predictive performance |
| Training Speed | Generally faster | Slower due to multiple trees |
| Interpretability | Easy to visualize and interpret | More difficult to interpret |
| Stability | Sensitive to changes in training data | Generally more stable |

**In simple terms:**

- Decision Tree: One model makes the prediction independently.
- Random Forest: Multiple models make predictions, and their results are combined.

## 4. Why Are Multiple Trees Better Than One?

A single Decision Tree can be sensitive to changes in the training dataset. Even small changes in the observations can produce a significantly different tree structure.

Random Forest addresses this limitation by introducing two types of randomness.

### 4.1 Random Data – Bagging

Bagging stands for **Bootstrap Aggregating**.

In this technique, each Decision Tree is trained using a randomly selected sample of the training dataset, with replacement.

For example:

- Tree 1 may receive rows 1, 3, 3, 5 and 7.
- Tree 2 may receive rows 2, 4, 4, 6 and 7.

Since the trees receive different samples, they learn from slightly different subsets of the available data.

This helps introduce diversity among the individual trees.

### 4.2 Random Feature Selection

Random Forest also introduces randomness when selecting features for splitting.

At each split, a tree considers a randomly selected subset of available features rather than evaluating all features.

This prevents every tree from following exactly the same decision-making process.

### 4.3 How Randomness Improves Performance

If all trees were trained using identical data and features, they could produce very similar predictions and errors.

By introducing randomness:

1. Different trees learn different patterns.
2. Individual trees make different predictions and mistakes.
3. Their predictions are combined through majority voting.
4. The combined result can be more stable and reliable.

This concept is also associated with the **Wisdom of the Crowd**.

## 5. Random Forest Implementation Using Scikit-Learn

The practical implementation used the existing `sales_data.xlsx` dataset to predict the `Revenue_Tier` of transactions.

The target variable contained three categories:

- Low
- Medium
- High

The model used numerical and encoded categorical features to make predictions.

### 5.1 Importing Required Libraries

```python
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
from sklearn.preprocessing import LabelEncoder

import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
```

Important imports:

| Library/Class | Purpose |
|---|---|
| `DecisionTreeClassifier` | Implements a single Decision Tree |
| `RandomForestClassifier` | Implements Random Forest |
| `train_test_split` | Divides the dataset into training and testing sets |
| `accuracy_score` | Evaluates classification accuracy |
| `LabelEncoder` | Converts categorical values into numerical labels |
| `matplotlib.pyplot` | Creates visualizations |
| `pandas` | Handles dataset operations |
| `numpy` | Supports numerical operations |

### 5.2 Loading the Dataset

The sales dataset was loaded using Pandas.

```python
df = pd.read_excel("sales_data.xlsx")

print("Dataset shape:", df.shape)
print("\nColumns:", df.columns.tolist())

df.head()
```

The dataset shape and column names were examined to understand the available information.

### 5.3 Encoding Categorical Features

Machine Learning algorithms generally require numerical input features.

Therefore, categorical columns were converted into numerical representations using `LabelEncoder`.

The following categorical columns were encoded:

- `Product`
- `Category`
- `DayOfWeek`

Implementation:

```python
le_product = LabelEncoder()
le_category = LabelEncoder()
le_day_of_week = LabelEncoder()

df["Product_Encoded"] = le_product.fit_transform(
    df["Product"]
)

df["Category_Encoded"] = le_category.fit_transform(
    df["Category"]
)

df["DayOfWeek_Encoded"] = le_day_of_week.fit_transform(
    df["DayOfWeek"]
)
```

This created three additional numerical columns that could be used as model inputs.

### 5.4 Selecting Features and Target

The objective was to predict `Revenue_Tier` using available sales-related features.

**Input Features:**

1. `Price`
2. `Quantity`
3. `Day`
4. `WeekNumber`
5. `Product_Encoded`
6. `Category_Encoded`
7. `DayOfWeek_Encoded`

**Target Variable:**

- `Revenue_Tier`

Implementation:

```python
feature_cols = [
    "Price",
    "Quantity",
    "Day",
    "WeekNumber",
    "Product_Encoded",
    "Category_Encoded",
    "DayOfWeek_Encoded"
]

X = df[feature_cols]
y = df["Revenue_Tier"]
```

Here, `X` contains the input features, while `y` contains the category that the model needs to predict.

### 5.5 Splitting the Dataset

The dataset was divided into training and testing subsets.

```python
X_train, X_test, y_train, y_test = train_test_split(
    X,
    y,
    test_size=0.2,
    random_state=42
)
```

- 80% of the observations were used for training.
- 20% were used for testing.
- `random_state=42` ensured reproducibility.

## 6. Training Decision Tree and Random Forest Models

To understand the advantage of using multiple trees, two classification models were trained using the same training dataset.

### 6.1 Training a Single Decision Tree

```python
dt = DecisionTreeClassifier(max_depth=2)

dt.fit(X_train, y_train)
```

A Decision Tree Classifier with a maximum depth of 2 was created and trained.

### 6.2 Training a Random Forest

```python
rf = RandomForestClassifier(
    n_estimators=100,
    random_state=42
)

rf.fit(X_train, y_train)
```

Here:

- `n_estimators=100` specifies that the Random Forest will contain 100 Decision Trees.
- `random_state=42` ensures reproducibility.

Each tree learns from a different randomized training sample and feature selection process.

The final classification is determined through majority voting.

## 7. Comparing Decision Tree and Random Forest Accuracy

After training both models, their performance was evaluated using the testing dataset.

```python
dt_acc = accuracy_score(
    y_test,
    dt.predict(X_test)
) * 100

rf_acc = accuracy_score(
    y_test,
    rf.predict(X_test)
) * 100

print(f"Decision Tree accuracy: {dt_acc:.1f}%")
print(f"Random Forest accuracy: {rf_acc:.1f}%")
```

### Understanding the Comparison

The comparison helped demonstrate how combining multiple Decision Trees can improve predictive performance.

The notebook used the same input features, target variable and train-test split for both models.

Therefore, the accuracy comparison was performed under the same experimental conditions.

**Important:** Random Forest often provides more stable and accurate results, but its performance is not guaranteed to be higher in every dataset or experiment.

## 8. Understanding the Effect of the Number of Trees

An important concept in Random Forest is the number of individual Decision Trees used in the ensemble.

The notebook experimented with different forest sizes to examine how the number of trees affects accuracy.

### 8.1 Different Forest Sizes

The following values were tested:

```python
tree_counts = [1, 5, 10, 25, 50, 100, 200, 300]

accuracies = []

for n in tree_counts:

    model = RandomForestClassifier(
        n_estimators=n,
        random_state=42
    )

    model.fit(X_train, y_train)

    acc = accuracy_score(
        y_test,
        model.predict(X_test)
    ) * 100

    accuracies.append(acc)

print(accuracies)
```

### 8.2 Understanding the Results

The accuracy values obtained from the experiment were examined to understand the relationship between forest size and predictive performance.

Generally:

1. A small number of trees may produce less stable predictions.
2. Increasing the number of trees can improve the stability of the ensemble.
3. Accuracy often stabilizes after a sufficient number of trees have been added.
4. Adding more trees beyond that point may increase training time without providing significant performance improvements.

The notebook highlighted that the accuracy often stabilizes around 50–100 trees, although the optimal number depends on the dataset.

**Key Takeaway:** Increasing the number of trees does not necessarily improve accuracy indefinitely.

## 9. Feature Importance in Random Forest

Feature Importance is one of the useful properties of Random Forest.

It helps identify which input features contribute most to the model's predictions.

### 9.1 How Feature Importance Works

Random Forest estimates feature importance based on the contribution of features to splits across its individual Decision Trees.

Features that contribute more to reducing impurity across the forest generally receive higher importance values.

The importance values are normalized and sum to 1.

For example, if a feature has an importance value of 0.30, it represents 30% of the total normalized importance assigned across the features.

### 9.2 Extracting Feature Importance

Feature importance was extracted using the `feature_importances_` attribute.

```python
importance = pd.Series(
    rf.feature_importances_,
    index=feature_cols
)

importance = importance.sort_values(
    ascending=True
)
```

The values were then visualized using a horizontal bar chart.

```python
plt.figure(figsize=(8, 5))

importance.plot.barh(color=['#2ecc71'])

plt.title(
    'Feature Importance (Random Forest) — Sales Data'
)

plt.xlabel('Importance')

plt.tight_layout()
plt.show()
```

The importance values were also displayed in descending order:

```python
print("\nFeature importance values:")

print(
    importance.sort_values(ascending=False)
)
```

### 9.3 Why Is Feature Importance Useful?

Feature importance helps in:

1. Understanding which variables influence model predictions.
2. Identifying features that contribute relatively little to prediction.
3. Simplifying models by examining less important features.
4. Explaining model behaviour to stakeholders and non-technical users.

The notebook discussed features such as Revenue, Price and Revenue_Per_Unit as potentially important indicators. However, the actual importance ranking should be determined from the values produced by the trained model.

## 10. Practical Implementation

The following tasks were completed during the practical session:

1. Loaded the `sales_data.xlsx` dataset using Pandas.
2. Examined the dataset dimensions and available columns.
3. Understood the concept of Ensemble Learning.
4. Studied the working principle of Random Forest.
5. Compared Decision Tree and Random Forest algorithms.
6. Understood Bagging and random feature selection.
7. Encoded `Product`, `Category` and `DayOfWeek` using LabelEncoder.
8. Selected seven input features and `Revenue_Tier` as the target.
9. Divided the dataset into training and testing subsets using an 80:20 split.
10. Trained a Decision Tree Classifier with `max_depth=2`.
11. Trained a Random Forest Classifier containing 100 trees.
12. Compared both models using Accuracy Score.
13. Experimented with different numbers of trees: 1, 5, 10, 25, 50, 100, 200 and 300.
14. Examined how increasing the number of trees affects model accuracy.
15. Extracted feature importance using `feature_importances_`.
16. Visualized feature importance using a horizontal bar chart.

## 11. Learning Outcomes

By the end of this training day, the following concepts and practical skills were developed:

- Understood the concept and importance of Ensemble Learning.
- Learned the working principle of Random Forest.
- Understood how multiple Decision Trees combine predictions through majority voting.
- Learned the concept of Bagging and bootstrap sampling.
- Understood random feature selection and its role in creating diverse trees.
- Differentiated between Decision Tree and Random Forest algorithms.
- Implemented a Random Forest Classifier using Scikit-Learn.
- Applied Label Encoding to categorical input features.
- Compared classification accuracy using a common testing dataset.
- Analysed the effect of different numbers of trees on model performance.
- Extracted and visualized feature importance.
- Understood how Random Forest can improve prediction stability and reduce the risk of overfitting compared with a single Decision Tree.

**Key Takeaway:** Random Forest combines multiple Decision Trees using randomized data samples and feature selection. By aggregating their predictions through majority voting, it can provide more stable and reliable classification results than relying on a single Decision Tree.
