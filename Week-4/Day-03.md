# Week 4 - Day 3

# Topic: Introduction to Machine Learning, Data Preprocessing, Linear Regression and Logistic Regression

## Objective

To understand the fundamentals of Machine Learning, its major learning approaches, and the process of preparing datasets for model development. The session focused on implementing supervised Machine Learning algorithms, particularly Linear Regression and Logistic Regression, and understanding the techniques used to evaluate their performance.

## Topics Covered

### 1. Introduction to Machine Learning

Machine Learning (ML) is a branch of Artificial Intelligence that enables computers to learn patterns from data and make predictions without being explicitly programmed with every rule.

The basic working process of Machine Learning involves:

1. Providing training data to the computer.
2. Identifying patterns and relationships within the data.
3. Learning from those patterns.
4. Using the learned information to make predictions on new data.

The session also introduced Scikit-learn (`sklearn`), a Python library used for implementing Machine Learning algorithms and preprocessing techniques.

### 2. Types of Machine Learning

Machine Learning was broadly divided into two major learning approaches.

#### A. Supervised Learning

Supervised Learning uses labelled data containing both input features and their corresponding target values. The model learns the relationship between the inputs and the correct outputs.

Two major types were discussed:

**Classification**

Classification is used when the target variable represents a category or class.

Examples:
- Predicting whether a transaction is High Value or Not High Value.
- Classifying emails as Spam or Not Spam.
- Predicting disease categories.

**Regression**

Regression is used when the target variable is a numerical value.

Examples:
- Predicting transaction Revenue.
- Predicting house prices.
- Estimating temperature.

#### B. Unsupervised Learning

Unsupervised Learning works with input data without predefined target labels. The model attempts to identify hidden patterns, structures, or groups within the dataset.

Two common approaches were introduced:

- **Clustering:** Groups similar data points together, such as grouping customers based on purchasing behaviour.
- **Dimensionality Reduction:** Reduces the number of input features while retaining important information.

### 3. Understanding Features and Target Variables

The sales dataset was used to understand the distinction between input features and target variables.

- **Features (X):** Input columns used by the model to make predictions.
- **Target (y):** The output column that the model is expected to predict.

For example, when predicting whether a transaction is high value:

- Features: `Price` and `Quantity`
- Target: `Is_High_Value`

The dataset was initially examined using Pandas to understand its dimensions, column names, and data types.

### 4. Data Preprocessing

Data preprocessing involves preparing raw data before providing it to a Machine Learning algorithm.

The following techniques were explored.

#### A. Train-Test Split

The dataset was divided into training and testing subsets.

- **Training set:** Used by the model to learn patterns from the data.
- **Testing set:** Used to evaluate the model on unseen data.

The `train_test_split()` function from Scikit-learn was used.

```python
from sklearn.model_selection import train_test_split

X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.2, random_state=42
)
```

The following parameters were used:

- `test_size=0.2`: Allocates 20% of the data for testing.
- `random_state=42`: Ensures that the same split can be reproduced.

The concept of overfitting was also introduced. Overfitting occurs when a model performs well on training data but fails to generalize effectively to unseen data.

#### B. Feature Scaling

Feature scaling brings numerical features to comparable scales so that differences in their numerical ranges do not disproportionately influence certain Machine Learning algorithms.

Two scaling techniques were implemented.

**StandardScaler (Standardization)**

Standardization transforms data using its mean and standard deviation.

\[
z=\frac{x-\mu}{\sigma}
\]

Where:

- \(x\) = Original value
- \(\mu\) = Mean
- \(\sigma\) = Standard deviation
- \(z\) = Standardized value

```python
from sklearn.preprocessing import StandardScaler

scaler = StandardScaler()

X_train_scaled = scaler.fit_transform(X_train)
X_test_scaled = scaler.transform(X_test)
```

The transformed training data was examined to verify that its mean was approximately zero and its standard deviation was approximately one.

**MinMaxScaler (Normalization)**

Min-Max Scaling transforms numerical values into a specified range, which is [0, 1] by default.

\[
X_{\text{scaled}}=
\frac{X-X_{\min}}{X_{\max}-X_{\min}}
\]

```python
from sklearn.preprocessing import MinMaxScaler

minmax_scaler = MinMaxScaler()

X_train_minmax = minmax_scaler.fit_transform(X_train)
X_test_minmax = minmax_scaler.transform(X_test)
```

The minimum and maximum values of the scaled training data were examined.

An important preprocessing rule was also discussed: the scaler must be fitted only on training data and then used to transform both training and testing data. This prevents information from the testing data from influencing the preprocessing process.

#### C. Label Encoding

Label Encoding converts categorical values into numerical representations.

The `LabelEncoder` class was used to encode columns such as `Is_High_Value`, `Category`, and `Revenue_Tier`.

```python
from sklearn.preprocessing import LabelEncoder

le = LabelEncoder()

df['Is_High_Value_Encoded'] = le.fit_transform(
    df['Is_High_Value']
)
```

Manual mapping was also explored for ordered categories.

For example:

```python
tier_mapping = {
    'Low': 0,
    'Medium': 1,
    'High': 2
}

df['Revenue_Tier_Encoded'] = df['Revenue_Tier'].map(
    tier_mapping
)
```

The importance of preserving the natural order of ordinal categories was discussed.

Label Encoding is suitable for binary or naturally ordered categories. For unordered categories with multiple values, assigning numerical labels can introduce an unintended numerical relationship.

#### D. One-Hot Encoding

One-Hot Encoding converts categorical values into separate binary columns.

Each unique category receives an individual column containing either 1 or 0.

It was implemented using two approaches.

**Using Pandas:**

```python
product_encoded = pd.get_dummies(
    df['Product'],
    dtype=int
)
```

The original Product column and encoded columns were combined using `pd.concat()`.

**Using Scikit-learn:**

```python
from sklearn.preprocessing import OneHotEncoder

ohe = OneHotEncoder(sparse_output=False)

product_ohe = ohe.fit_transform(df[['Product']])
```

The encoded output was converted into a DataFrame using `get_feature_names_out()`.

The `drop_first=True` parameter was also explored with `pd.get_dummies()` to remove one category column and reduce redundant information in suitable modelling scenarios.

### 5. Linear Regression

Linear Regression is a supervised Machine Learning algorithm used to predict continuous numerical values.

The session introduced the basic linear equation:

\[
y=mx+c
\]

Where:

- \(y\) = Predicted output
- \(x\) = Input feature
- \(m\) = Slope
- \(c\) = Intercept

For multiple input features, the equation becomes:

\[
y=w_1x_1+w_2x_2+b
\]

Here, \(w_1\) and \(w_2\) represent feature coefficients, while \(b\) represents the intercept.

#### A. Assumptions of Linear Regression

The following assumptions were introduced:

1. **Linearity:** The relationship between input features and the target should be approximately linear.
2. **No Multicollinearity:** Input features should not be highly correlated with each other.
3. **Homoscedasticity:** The variance of prediction errors should remain approximately constant across different levels of predicted values.
4. **Normal Residuals:** Residuals should approximately follow a normal distribution.
5. **Independence:** Observations should be independent of one another.

A regression line was also visualized using sample temperature and ice cream sales data. NumPy's `polyfit()` function was used to calculate a best-fit straight line, which was plotted alongside the actual data points.

#### B. Building a Linear Regression Model

The sales dataset was used to predict Revenue using Price and Quantity.

- Input features (X): `Price` and `Quantity`
- Target variable (y): `Revenue`

The model was developed using the following steps:

1. Loading the dataset.
2. Selecting input features and the target variable.
3. Splitting the dataset into training and testing subsets.
4. Creating and training the Linear Regression model.
5. Generating predictions.
6. Evaluating model performance.

```python
from sklearn.linear_model import LinearRegression

model = LinearRegression()

model.fit(X_train, y_train)
```

The model coefficients and intercept were extracted using `model.coef_` and `model.intercept_`.

These values were used to construct the learned regression equation.

#### C. Making Predictions

The trained model was used to predict Revenue for the testing dataset.

```python
y_pred = model.predict(X_test)
```

A comparison DataFrame was created containing:

- Actual Revenue
- Predicted Revenue
- Difference between actual and predicted values

The model was also used to predict Revenue for a new transaction with Price = 500 and Quantity = 3.

#### D. Regression Evaluation Metrics

The performance of the Linear Regression model was evaluated using the following metrics.

**Mean Absolute Error (MAE)**

Calculates the average absolute difference between actual and predicted values.

\[
MAE=\frac{1}{n}\sum_{i=1}^{n}|y_i-\hat{y}_i|
\]

Lower values indicate smaller average prediction errors.

**Mean Squared Error (MSE)**

Calculates the average squared difference between actual and predicted values.

\[
MSE=\frac{1}{n}\sum_{i=1}^{n}(y_i-\hat{y}_i)^2
\]

It penalizes larger prediction errors more heavily.

**Root Mean Squared Error (RMSE)**

Calculates the square root of MSE.

\[
RMSE=\sqrt{MSE}
\]

It expresses the prediction error in the same unit as the target variable.

**R-squared Score (R²)**

Measures the proportion of variation in the target variable explained by the model.

\[
R^2=1-\frac{SS_{res}}{SS_{tot}}
\]

A value closer to 1 generally indicates that the model explains a larger proportion of the variation in the target variable.

The metrics were calculated using Scikit-learn's `mean_absolute_error()`, `mean_squared_error()`, and `r2_score()` functions.

Scatter plots of Price vs Revenue and Quantity vs Revenue were also generated to visually examine the relationships between the features and the target.

### 6. Logistic Regression

Logistic Regression is a supervised Machine Learning algorithm used for classification problems.

Although its name contains the word Regression, it is primarily used to predict categorical outcomes by estimating probabilities.

The session used Logistic Regression to predict whether a transaction was high value or not.

#### A. Sigmoid Function

The Sigmoid Function, also known as the Logistic Function, converts a numerical value into a probability between 0 and 1.

\[
\sigma(z)=\frac{1}{1+e^{-z}}
\]

Where:

- \(z\) represents the linear combination of input features and model coefficients.
- \(e\) represents Euler's number.

The predicted probability is interpreted as follows:

- Probability greater than or equal to 0.5: Predict Yes.
- Probability below 0.5: Predict No.

#### B. Preparing Data and Training the Model

The sales dataset was used to predict `Is_High_Value` using `Price` and `Quantity`.

The target variable was converted into numerical labels using `LabelEncoder`.

The dataset was then divided into training and testing subsets.

StandardScaler was applied to the input features before training the model.

The Logistic Regression model was created and trained using:

```python
from sklearn.linear_model import LogisticRegression

log_model = LogisticRegression()

log_model.fit(X_train_scaled, y_train)
```

The model coefficients and intercept were also examined.

#### C. Making Predictions and Estimating Probabilities

The trained model generated predictions using `predict()`.

The `predict_proba()` function was used to obtain the probability estimates for each class.

```python
y_pred = log_model.predict(X_test_scaled)

y_prob = log_model.predict_proba(X_test_scaled)
```

The predicted numerical labels were converted back into their original categorical values using `inverse_transform()`.

A comparison DataFrame was created containing actual classes, predicted classes, and the probabilities of No and Yes.

### 7. Confusion Matrix

A Confusion Matrix is used to evaluate classification performance by comparing actual class labels with predicted class labels.

For binary classification, it contains four possible outcomes:

| Term | Meaning |
|---|---|
| True Positive (TP) | Model predicts Yes, and the actual class is Yes |
| True Negative (TN) | Model predicts No, and the actual class is No |
| False Positive (FP) | Model predicts Yes, but the actual class is No |
| False Negative (FN) | Model predicts No, but the actual class is Yes |

The confusion matrix was generated using Scikit-learn's `confusion_matrix()` function.

It was also visualized using `ConfusionMatrixDisplay` and Matplotlib.

### 8. Classification Evaluation Metrics

The session introduced additional metrics to evaluate classification models beyond overall accuracy.

**Accuracy**

Measures the proportion of total predictions that were correct.

\[
Accuracy=\frac{TP+TN}{TP+TN+FP+FN}
\]

**Precision**

Measures how many of the predicted positive cases were actually positive.

\[
Precision=\frac{TP}{TP+FP}
\]

**Recall**

Measures how many of the actual positive cases were correctly identified.

\[
Recall=\frac{TP}{TP+FN}
\]

**F1-Score**

Represents the harmonic mean of Precision and Recall.

\[
F1=2\times\frac{Precision\times Recall}{Precision+Recall}
\]

These metrics were calculated using:

- `accuracy_score()`
- `precision_score()`
- `recall_score()`
- `f1_score()`

The `classification_report()` function was also used to generate a detailed classification performance summary.

The importance of choosing appropriate evaluation metrics was discussed through examples:

- **Email Spam Filtering:** Precision is important to avoid incorrectly classifying legitimate emails as spam.
- **Disease Detection:** Recall is important to reduce the number of missed positive cases.
- **Fraud Detection:** Recall is important for identifying as many fraudulent transactions as possible.
- **Balanced Classification Problems:** F1-Score provides a balance between Precision and Recall.

## Practical Implementation

The practical sessions involved:

1. Loading and examining the sales dataset using Pandas.
2. Understanding the fundamentals and types of Machine Learning.
3. Identifying input features and target variables.
4. Implementing train-test splitting using Scikit-learn.
5. Applying StandardScaler and MinMaxScaler for feature scaling.
6. Performing Label Encoding and One-Hot Encoding.
7. Visualizing a regression line using NumPy and Matplotlib.
8. Building a Linear Regression model to predict Revenue.
9. Extracting regression coefficients and constructing the model equation.
10. Generating predictions for testing data and new transactions.
11. Evaluating regression performance using MAE, MSE, RMSE, and R².
12. Building a Logistic Regression model to classify high-value transactions.
13. Applying the Sigmoid Function to understand probability-based classification.
14. Generating class predictions and probability estimates.
15. Creating and visualizing a Confusion Matrix.
16. Evaluating classification performance using Accuracy, Precision, Recall, F1-Score, and the Classification Report.

## Learning Outcome

Developed a foundational understanding of Machine Learning, including supervised and unsupervised learning approaches. Gained practical experience in preparing datasets through train-test splitting, feature scaling, label encoding, and one-hot encoding.

Learned to develop Linear Regression and Logistic Regression models using Scikit-learn, generate predictions, and interpret model parameters. Also gained an understanding of regression and classification evaluation metrics, including MAE, MSE, RMSE, R², Accuracy, Precision, Recall, and F1-Score.

The session established a practical foundation for developing, training, and evaluating supervised Machine Learning models using Python.
