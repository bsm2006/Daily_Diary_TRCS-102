# Week 2 - Day 1

# Advanced NumPy Operations

## Objective

The objective of today's session was to strengthen the understanding of NumPy by exploring advanced array operations and commonly used functions for data analysis. The session focused on sorting arrays, identifying unique values, applying Boolean indexing for data filtering, performing aggregate operations, and understanding how NumPy simplifies numerical computations through vectorized operations.

---

## Sorting Arrays

The session began with sorting one-dimensional arrays using NumPy's built-in sorting function. Sorting is one of the most common preprocessing operations performed before analysing numerical data.

```python
arr = np.array([5,1,8,3])

print(np.sort(arr))
```

Sorting functions were used to arrange the elements in ascending order and understand how NumPy internally processes array data.

---

## Finding Unique Values

The `unique()` function was introduced to identify distinct values present in an array. This function automatically removes duplicate values and returns only the unique elements, making it useful during data cleaning and preprocessing.

```python
arr = np.array([1,2,2,3,4,4,5,5])

print(np.unique(arr))
```

The function was also used to determine the number of unique values present in a dataset.

```python
print(len(np.unique(arr)))
```

---

## Boolean Indexing

Boolean indexing was explored as an efficient method for filtering data based on conditions. Instead of using loops, logical expressions were directly applied to arrays to extract the required values.

```python
arr = np.array([10,20,30,40,50])

print(arr[arr > 25])
```

Different conditions such as greater than, less than, and even number filtering were implemented to understand conditional selection of data.

---

## Aggregate Functions

Various aggregate functions were practised to summarize numerical datasets. These functions provide statistical information about an array without requiring manual calculations.

```python
arr = np.array([10,20,30,40,50])

print(np.sum(arr))
print(np.mean(arr))
print(np.max(arr))
print(np.min(arr))
print(np.std(arr))
```

These functions are widely used during Exploratory Data Analysis (EDA) and Machine Learning preprocessing.

---

## Array Operations

The session also focused on performing element-wise operations between NumPy arrays. Unlike Python lists, NumPy allows arithmetic operations to be applied directly to arrays without writing explicit loops.

```python
a = np.array([1,2,3])
b = np.array([4,5,6])

print(a + b)
print(a * b)
```

Scalar operations were also performed on arrays.

```python
print(a + 5)
print(a * 2)
print(a ** 2)
```

---

## Practical Implementation

Several practice problems were solved during the session involving array filtering, identifying unique values, sorting datasets, and performing statistical analysis using aggregate functions. Different examples were executed to understand how vectorized operations improve both code readability and computational efficiency when compared to conventional Python programming.

---

## Learning Outcome

By the end of today's session, I developed a stronger understanding of NumPy's data manipulation capabilities. I learnt how to sort arrays, filter data using Boolean indexing, identify unique elements, perform statistical analysis, and apply arithmetic operations directly on arrays. These concepts significantly improve the efficiency of numerical computations and provide the foundation for working with real-world datasets before introducing higher-level libraries such as Pandas.
