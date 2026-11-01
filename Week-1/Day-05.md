# Week 1 - Day 5

**Date: Friday, 26 June 2026**

# NumPy Array Manipulation and Operations

## Objective

The objective of today's session was to understand how NumPy arrays can be manipulated using indexing, slicing, reshaping, and flattening techniques. The session also focused on generating random numbers, working with random seeds for reproducibility, and performing various statistical operations on arrays.

---

## Array Indexing and Slicing

The session began by exploring different methods of accessing elements from NumPy arrays. Indexing was performed on both one-dimensional and two-dimensional arrays to retrieve specific elements, while slicing was used to extract portions of an array efficiently. Various combinations of row and column indexing were implemented to understand how multidimensional arrays are accessed.

```python
arr = np.array([10,20,30,40,50])

print(arr[0])
print(arr[2])
print(arr[-1])
```

```python
arr = np.array([[1,2,3],
                [4,5,6],
                [7,8,9]])

print(arr[1,2])
print(arr[:,1])
print(arr[0:2])
```

---

## Reshaping Arrays

NumPy provides the `reshape()` function to change the dimensions of an array without modifying its data. Different combinations of rows and columns were created while ensuring that the total number of elements remained unchanged.

```python
arr = np.arange(12)

print(arr.reshape(3,4))
print(arr.reshape(2,6))
```

The use of `-1` in the reshape function was also introduced, allowing NumPy to automatically determine the missing dimension.

```python
print(arr.reshape(3,-1))
print(arr.reshape(-1,2))
```

---

## Flattening Arrays

The `flatten()` function was used to convert a multidimensional array into a one-dimensional array. This operation is particularly useful while preparing data for further processing or machine learning algorithms.

```python
arr = np.array([[1,2,3],
                [4,5,6]])

print(arr.flatten())
```

---

## Random Number Generation

Different functions available in the `random` module of NumPy were explored to generate random values for testing and simulation purposes.

```python
print(np.random.rand(5))

print(np.random.randint(1,100,10))
```

Random matrices were also generated using the following function.

```python
print(np.random.rand(3,4))
```

---

## Random Seed

The concept of a random seed was introduced to generate reproducible random numbers. By fixing the seed value, the same sequence of random numbers can be generated every time the program is executed, which is particularly useful during experimentation and debugging.

```python
np.random.seed(10)

print(np.random.randint(1,100,5))
```

---

## Statistical and Utility Functions

Several built-in NumPy functions were used to perform basic statistical analysis on arrays. These functions simplify data analysis by providing quick access to commonly required statistical measures.

```python
arr = np.array([10,20,30,40])

print(np.sum(arr))
print(np.mean(arr))
print(np.max(arr))
print(np.min(arr))
print(np.std(arr))
```

The `unique()` function was also used to extract distinct values from an array and remove duplicate elements.

```python
arr = np.array([1,2,2,3,4,4,5,5])

print(np.unique(arr))
```

---

## Practical Implementation

During the practical session, several exercises were performed involving indexing, slicing, reshaping, flattening, and statistical analysis of arrays. Different random datasets were generated using NumPy's random module, and reproducible outputs were obtained using the `seed()` function. Practice problems were also solved to understand the use of `unique()` for identifying distinct values within a dataset.

---

## Learning Outcome

By the end of today's session, I gained a comprehensive understanding of array manipulation techniques in NumPy. I learnt how to access and modify array elements efficiently using indexing and slicing, reshape arrays according to different requirements, generate random data for experimentation, and analyse numerical datasets using various statistical functions. These concepts form the basis for efficient data preprocessing and numerical analysis in Data Science.
