# Week 4 – Day 3

# Decision Trees: Understanding, Implementation and Evaluation

## Objective

To understand the working principle of Decision Tree algorithms, learn how they make predictions through decision-based splits, explore Gini Impurity, implement a Decision Tree Classifier using Scikit-learn, and understand overfitting and the importance of controlling tree complexity.

## 1. Introduction to Decision Trees

A Decision Tree is a supervised Machine Learning algorithm that makes predictions by asking a sequence of questions about the input data.

It works similarly to a flowchart. At every step, the model evaluates a condition and follows the corresponding branch until it reaches a final prediction.

In this practical, the existing `sales_data.xlsx` dataset was used to predict whether a transaction was **High Value (Yes)** or **Not High Value (No)**.

For example, a decision process could involve questions such as:

- Is the Price greater than 300?
- Is the Quantity greater than or equal to 2?
- Based on these conditions, should the transaction be classified as High Value?

Unlike manually defined rules, a Decision Tree automatically identifies useful questions and splits from the training data.

## 2. Parts of a Decision Tree

A Decision Tree consists of three major types of nodes.

| Node | Description | Sales Example |
|---|---|---|
| Root Node | The first question at the top of the tree. | Is Price greater than 300? |
| Decision Node | A subsequent question that further divides the data. | Is Quantity greater than or equal to 2? |
| Leaf Node | The final prediction or classification. | High Value or Not High Value |

**Quick Summary:**

- Root Node: Starting point of the tree.
- Decision Node: Intermediate condition used to divide the data.
- Leaf Node: Final predicted class.

## 3. How Does a Decision Tree Select Splits?

A Decision Tree examines the available features and selects the conditions that best separate the observations into different classes.

The objective is to create groups that contain predominantly one class. Such groups are considered more pure.

### 3.1 Good Split

In the sales dataset, splitting transactions using the condition:

`Price > 300`

produced comparatively cleaner groups of High Value and Not High Value transactions.

### 3.2 Bad Split

The condition:

`Day > 15`

produced groups containing a mixture of both classes.

Therefore, splitting based on Price was demonstrated as a better choice than splitting based on Day.

### 3.3 Gini Impurity

Gini Impurity is a measure used by Decision Trees to evaluate the quality of a split.

It measures how mixed the classes are within a particular group.

\[
Gini = 1-\sum_{i=1}^{n}p_i^2
\]

Where:

- \(p_i\) represents the proportion of observations belonging to class \(i\).
- \(n\) represents the number of classes.

For a binary classification problem:

- Gini = 0: The group is perfectly pure.
- Gini = 0.5: The two classes are equally distributed, representing maximum impurity for a binary classification problem.

The model attempts to select splits that produce groups with lower impurity.

## 4. Implementing a Decision Tree Classifier

### 4.1 Importing Libraries and Loading the Dataset

The following libraries were imported:

```python
import pandas as pd
import matplotlib.pyplot as plt

from sklearn.tree import DecisionTreeClassifier, plot_tree
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
```

The existing sales dataset was loaded using Pandas:

```python
df = pd.read_excel('sales_data.xlsx')

df.head()
```

### 4.2 Defining Features and Target

The objective was to predict whether a transaction was High Value or Not High Value.

**Input Features:**
- `Price`
- `Quantity`

**Target Variable:**
- `Is_High_Value`

Implementation:

```python
X = df[['Price', 'Quantity']]
y = df['Is_High_Value']
```

Here, `X` represents the input features, while `y` represents the output that the model needs to predict.

### 4.3 Splitting the Dataset

The dataset was divided into training and testing subsets using `train_test_split()`.

```python
X_train, X_test, y_train, y_test = train_test_split(
    X,
    y,
    test_size=0.2,
    random_state=42
)
```

- 80% of the data was used for training.
- 20% of the data was used for testing.
- `random_state=42` ensured reproducibility.

### 4.4 Training the Decision Tree Model

A Decision Tree Classifier was created with a maximum depth of 2.

```python
tree_model = DecisionTreeClassifier(
    max_depth=2,
    random_state=42
)

tree_model.fit(X_train, y_train)
```

The `max_depth` parameter limits the number of levels in the tree and helps control its complexity.

The `fit()` method trained the model using the training features and their corresponding target labels.

### 4.5 Making Predictions and Evaluating Accuracy

After training, the model was used to predict the classes of the testing dataset.

```python
y_pred = tree_model.predict(X_test)

accuracy = accuracy_score(y_test, y_pred)

print(f"Accuracy: {accuracy * 100:.1f}%")
```

Accuracy measures the proportion of correctly classified observations.

\[
Accuracy = \frac{\text{Correct Predictions}}{\text{Total Predictions}}
\]

## 5. Visualizing the Decision Tree

One of the most useful characteristics of Decision Trees is that their decision-making process can be visualized.

The `plot_tree()` function from Scikit-Learn was used to display the trained model.

```python
plt.figure(figsize=(14, 7))

plot_tree(
    tree_model,
    feature_names=['Price', 'Quantity'],
    class_names=['No', 'Yes'],
    filled=True,
    rounded=True,
    fontsize=10
)

plt.title("Decision Tree — Is This a High Value Transaction?")
plt.tight_layout()
plt.show()
```

### 5.1 Understanding the Tree Visualization

Each node in the visualization contains important information.

| Parameter | Meaning |
|---|---|
| Question | The condition used to split the data, such as `Price <= 250` |
| `gini` | Measures impurity at that node |
| `samples` | Number of training observations reaching the node |
| `value` | Number of observations belonging to each class |
| `class` | Majority class predicted by the node |

A prediction can be understood by tracing the path from the Root Node through the Decision Nodes until reaching a Leaf Node.

This makes the model easier to interpret compared with many black-box machine learning algorithms.

## 6. Overfitting in Decision Trees

Overfitting occurs when a model learns the training data too closely, including noise and unnecessary patterns, instead of learning relationships that generalize well to unseen data.

In Decision Trees, this can happen when the tree is allowed to grow without restrictions.

An unrestricted tree may continue splitting until it memorizes the training observations. As a result, it can achieve very high training accuracy but perform poorly on testing data.

### 6.1 Understanding Overfitting Through Practical Implementation

An unrestricted Decision Tree was created without specifying a maximum depth.

```python
overfit_tree = DecisionTreeClassifier(
    random_state=42
)

overfit_tree.fit(X_train, y_train)
```

The training and testing accuracies were then calculated:

```python
train_acc = accuracy_score(
    y_train,
    overfit_tree.predict(X_train)
) * 100

test_acc = accuracy_score(
    y_test,
    overfit_tree.predict(X_test)
) * 100
```

The same evaluation was performed for the simpler Decision Tree with `max_depth=2`.

This comparison demonstrated how an unrestricted tree can achieve 100% training accuracy by memorizing the training observations, without necessarily performing equally well on unseen testing data.

The unrestricted tree was also visualized to observe its increased complexity.

### 6.2 Techniques to Prevent Overfitting

The notebook introduced three important Decision Tree hyperparameters.

| Hyperparameter | Purpose |
|---|---|
| `max_depth` | Limits the maximum depth of the tree |
| `min_samples_split` | Specifies the minimum number of samples required to split an internal node |
| `min_samples_leaf` | Specifies the minimum number of samples required at a leaf node |

These parameters are called **hyperparameters** because they are specified before model training.

Controlling them helps prevent unnecessary splits and reduces the risk of overfitting.

## 7. Interpretability and Feature Importance

Decision Trees are considered interpretable machine learning models because their decision-making process can be examined through individual conditions and branches.

Important characteristics include:

1. **Flowchart-like structure:** Predictions can be understood by following the decision path.
2. **Interpretability:** The conditions used to make predictions are visible.
3. **Feature Importance:** The model provides an estimate of how useful each feature was in making predictions.
4. **No Feature Scaling Required:** Decision Trees do not require numerical features to be standardized or normalized before training.

### 7.1 Feature Importance

Feature importance indicates the relative contribution of individual features to the decisions made by the trained tree.

In this practical, feature importance was extracted for `Price` and `Quantity`.

```python
importance = pd.Series(
    tree_model.feature_importances_,
    index=['Price', 'Quantity']
).sort_values(ascending=True)

importance.plot.barh(color='teal')

plt.title("Which features matter most for High Value prediction?")
plt.xlabel("Importance")
plt.tight_layout()
plt.show()
```

The notebook demonstrated that **Price was the most important feature** for predicting whether a transaction was High Value.

## 8. Practical Implementation

The following tasks were performed during the practical session:

1. Loaded the existing `sales_data.xlsx` dataset using Pandas.
2. Examined the `Is_High_Value` target variable.
3. Understood the structure and working principle of Decision Trees.
4. Identified Root Nodes, Decision Nodes and Leaf Nodes.
5. Examined good and bad data splits using Price and Day.
6. Understood Gini Impurity and its role in selecting suitable splits.
7. Prepared `Price` and `Quantity` as input features.
8. Used `Is_High_Value` as the target variable.
9. Divided the dataset into training and testing subsets.
10. Implemented a `DecisionTreeClassifier` with `max_depth=2`.
11. Evaluated the model using Accuracy Score.
12. Visualized the trained tree using `plot_tree()`.
13. Compared an unrestricted Decision Tree with a depth-limited tree.
14. Observed the effects of overfitting on training and testing accuracy.
15. Explored hyperparameters used to control tree complexity.
16. Extracted and visualized feature importance to identify the most influential input feature.

## 9. Learning Outcomes

By the end of this training day, the following concepts and practical skills were developed:

- Understood the working principle of Decision Tree algorithms.
- Identified Root Nodes, Decision Nodes and Leaf Nodes.
- Understood how a Decision Tree selects the best feature-based splits.
- Learned the concept of Gini Impurity.
- Implemented a Decision Tree Classifier using Scikit-Learn.
- Applied train-test splitting for model training and evaluation.
- Visualized decision-making paths using `plot_tree()`.
- Understood overfitting and its impact on model generalization.
- Learned the importance of hyperparameters such as `max_depth`, `min_samples_split` and `min_samples_leaf`.
- Extracted and interpreted feature importance.
- Understood why Decision Trees are interpretable and do not require feature scaling.

**Key Takeaway:** Decision Trees provide an intuitive approach to classification by dividing data through a sequence of conditions. However, controlling tree complexity is essential to prevent overfitting and improve performance on unseen data.
