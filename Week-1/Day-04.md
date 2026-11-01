# Week 1 - Day 4

**Date: Thursday, 25 June 2026**
## Topic: Introduction to NumPy

### Objective
Today's session focused on understanding the fundamentals of NumPy, one of the most important Python libraries for numerical computing and data analysis. The objective was to learn how NumPy arrays differ from Python lists, create arrays using various methods, and explore their properties.

---

## Topics Covered

### Introduction to NumPy
- What is NumPy?
- Advantages of NumPy over Python Lists
- Installation and Importing NumPy

```python
import numpy as np
```

---

### Creating NumPy Arrays

Created one-dimensional and two-dimensional arrays using the `array()` function.

```python
arr1 = np.array([10, 20, 30, 40, 50])

arr2 = np.array([
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
])
```

---

### Array Creation Functions

Practiced creating arrays using different built-in NumPy functions.

```python
np.arange(5, 55, 5)
```

Output

```
[ 5 10 15 20 25 30 35 40 45 50]
```

---

```python
np.linspace(0, 10, 5)
```

```python
np.zeros((3,4))
```

```python
np.ones((2,3))
```

```python
np.eye(4)
```

---

### Understanding Array Properties

Explored various attributes of NumPy arrays.

```python
print(arr2.ndim)
print(arr2.shape)
print(arr2.size)
print(arr2.dtype)
```

Learnt about

- Number of dimensions
- Shape of an array
- Total number of elements
- Data type of elements

---

### Mathematical Operations

Performed element-wise mathematical operations.

```python
arr = np.array([1,2,3,4])

print(arr + 5)
print(arr * 2)
print(arr ** 2)
```

---

### Practical Exercises

- Created arrays using different methods.
- Generated identity matrices.
- Worked with evenly spaced values using `arange()` and `linspace()`.
- Compared NumPy arrays with normal Python lists.

---

## Learning Outcome

By the end of today's session, I understood the fundamentals of NumPy and learnt how to create arrays efficiently using different NumPy functions. I also explored array properties such as dimensions, shape, size, and data types, along with performing basic mathematical operations on arrays.
