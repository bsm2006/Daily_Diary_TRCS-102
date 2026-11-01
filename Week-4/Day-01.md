# Week 4 - Day 1

**Date: Monday, 13 July 2026**

# Topic: Machine Learning Data Preprocessing and Feature Encoding Using Scikit-learn

## Objective

To understand the essential data preprocessing techniques used in Machine Learning, including splitting datasets into training and testing sets, feature scaling, label encoding, and one-hot encoding. The session focused on preparing raw data for Machine Learning algorithms while avoiding data leakage.

## Topics Covered

### 1. Introduction to Data Preprocessing

Data preprocessing involves preparing a dataset before using it to train a Machine Learning model.

The session began by loading the sales dataset using Pandas and examining its initial records.

An important concept discussed was **data leakage**. Data leakage occurs when information that should not be available during model training is unintentionally included in the input features.

To prevent this, only appropriate input columns should be selected, avoiding columns directly associated with the target variable.

### 2. Feature Selection and Target Variable Identification

The dataset was divided into input features and the target variable.

- **Input features (X):** `Price` and `Quantity`
- **Target variable (y):** `Is_High_Value`

The following code was used:

```python
x = df[['Price', 'Quantity']]
y = df['Is_High_Value']
```

The number of available records was also examined using the `.shape` attribute.

### 3. Train-Test Split

The dataset was divided into training and testing subsets using Scikit-learn's `train_test_split()` function.

The purpose of this division is to train a model on one portion of the data and evaluate its performance on previously unseen data.

The following parameters were used:

- `test_size=0.2`: Allocates 20% of the dataset for testing and 80% for training.
- `random_state=42`: Ensures reproducibility of the split.

```python
from sklearn.model_selection import train_test_split

x_train, x_test, y_train, y_test = train_test_split(
    x, y, test_size=0.2, random_state=42
)
```

The dimensions of the training and testing datasets were examined to verify the split.

### 4. Feature Scaling Using StandardScaler

Feature scaling is used to bring numerical features to a comparable scale.

The StandardScaler technique standardizes numerical values using the mean and standard deviation.

The standardization formula is:

\[
z = \frac{x-\mu}{\sigma}
\]

Where:

- \(x\) represents the original value.
- \(\mu\) represents the mean.
- \(\sigma\) represents the standard deviation.
- \(z\) represents the standardized value.

The `StandardScaler` class from Scikit-learn was used.

```python
from sklearn.preprocessing import StandardScaler

scaler = StandardScaler()

x_train_scaled = scaler.fit_transform(x_train)
x_test_scaled = scaler.transform(x_test)
```

The scaler was fitted on the training data and then applied to the testing data. This approach prevents information from the testing dataset from influencing the scaling parameters.

The scaled training data was converted into a Pandas DataFrame, and its mean and standard deviation were examined.

### 5. Feature Scaling Using MinMaxScaler

Another scaling technique explored was Min-Max Scaling.

It transforms numerical values into a specified range, which is [0, 1] by default.

The formula is:

\[
X_{\text{scaled}} =
\frac{X-X_{\min}}{X_{\max}-X_{\min}}
\]

The `MinMaxScaler` class was used to scale the training and testing datasets.

```python
from sklearn.preprocessing import MinMaxScaler

minmax_scaler = MinMaxScaler()

x_train_minmax = minmax_scaler.fit_transform(x_train)
x_test_minmax = minmax_scaler.transform(x_test)
```

The minimum and maximum values of the scaled training features were examined to understand the transformation.

### 6. Label Encoding

Label Encoding converts categorical values into numerical labels so that they can be processed by Machine Learning algorithms.

The `LabelEncoder` class from Scikit-learn was used to encode categorical columns.

The following columns were encoded:

- `Is_High_Value`
- `Category`
- `Revenue_Tier`

Example:

```python
from sklearn.preprocessing import LabelEncoder

le = LabelEncoder()

df['Is_High_Value_Encoded'] = le.fit_transform(
    df['Is_High_Value']
)
```

Label encoding was also performed on the `Category` column.

For `Revenue_Tier`, two approaches were compared:

**Using LabelEncoder:**

```python
le_cat = LabelEncoder()

df['Revenue_Tier_LabelEncoded'] = le_cat.fit_transform(
    df['Revenue_Tier']
)
```

**Using Manual Mapping:**

```python
tier_mapping = {
    'Low': 0,
    'Medium': 1,
    'High': 2
}

df['Revenue_Tier_MapEncoded'] = df['Revenue_Tier'].map(
    tier_mapping
)
```

The results of both methods were compared to understand how categorical values can be converted into numerical representations.

### 7. One-Hot Encoding

One-Hot Encoding converts categorical values into separate binary columns.

Each category receives its own column, where:

- `1` indicates the presence of a category.
- `0` indicates its absence.

**Using Pandas `get_dummies()`:**

```python
product_encoded = pd.get_dummies(
    df['Product'],
    dtype=int
)
```

The encoded columns were combined with the original Product column using `pd.concat()`.

**Using Scikit-learn OneHotEncoder:**

```python
from sklearn.preprocessing import OneHotEncoder

ohe = OneHotEncoder(sparse_output=False)

product_ohe = ohe.fit_transform(df[['Product']])
```

The encoded output was converted into a Pandas DataFrame using `get_feature_names_out()` to obtain the generated column names.

## Practical Implementation

The practical session involved:

1. Loading the sales dataset using Pandas.
2. Selecting `Price` and `Quantity` as input features and `Is_High_Value` as the target variable.
3. Dividing the dataset into training and testing subsets using `train_test_split()`.
4. Applying StandardScaler to standardize numerical features.
5. Applying MinMaxScaler to transform numerical features into the [0, 1] range.
6. Comparing the mean and standard deviation of standardized training data.
7. Performing label encoding on categorical columns using `LabelEncoder`.
8. Comparing automatic label encoding with manually defined category mappings.
9. Performing one-hot encoding using Pandas `get_dummies()`.
10. Implementing one-hot encoding using Scikit-learn's `OneHotEncoder`.

## Learning Outcome

Developed an understanding of the data preprocessing stage in Machine Learning. Learned how to divide datasets into training and testing subsets, prevent data leakage during preprocessing, standardize and normalize numerical features, and convert categorical variables into numerical representations using label encoding and one-hot encoding.
