# Day 02

## Objective

To understand Python data structures and learn how to store, access, modify, and manipulate data efficiently using Lists, Tuples, and Dictionaries.

## Topics Covered

### Lists

* Creating lists
* Accessing list elements using indexing
* Modifying list elements
* Adding elements using:

  * append()
  * insert()
  * extend()
* Removing elements using:

  * remove()
  * pop()
* Sorting and reversing lists
* Built-in functions:

  * len()
  * min()
  * max()
  * sum()
  * sorted()
  * enumerate()

### Tuples

* Introduction to tuples
* Immutable nature of tuples
* Creating tuples
* Single-element tuples
* Tuple unpacking
* Tuple methods:

  * count()
  * index()
* Built-in functions with tuples

### Dictionaries

* Creating dictionaries
* Accessing values using keys
* Adding new key-value pairs
* Updating existing values
* Using get() method
* Dictionary update operations
* Introduction to dictionary comprehension

## Practical Work

### List Operations

```python
fruits = ["apple", "banana", "cherry"]

print(fruits[0])
print(fruits[-1])

fruits[1] = "blueberry"

fruits.append("date")
fruits.insert(1, "kiwi")

more_fruits = ["mango", "papaya"]
fruits.extend(more_fruits)

print(fruits)
```

### Removing Elements from Lists

```python
fruits.remove("kiwi")

removed_fruit = fruits.pop(2)

print(fruits)
print(removed_fruit)
```

### Sorting and Reversing Lists

```python
numbers = [5, 2, 9, 1, 5, 6]

numbers.sort()
print(numbers)

numbers.sort(reverse=True)
print(numbers)

numbers.reverse()
print(numbers)
```

### Built-in Functions

```python
numbers = [12, 45, 2, 89, 30]

print(len(numbers))
print(max(numbers))
print(min(numbers))
print(sum(numbers))
print(sorted(numbers))
print(list(enumerate(numbers)))
```

### Tuple Operations

```python
point = (4, 5)

x, y = point

print("x =", x)
print("y =", y)
```

### Tuple Methods

```python
scores = (8, 9, 10, 7, 8, 9, 6)

print(scores.count(8))
print(scores.index(10))
```

### Dictionary Operations

```python
student = {
    "Name": "Sahib",
    "Age": 20,
    "Courses": ["Python", "Data Science"]
}

print(student)
```

### Dictionary Modification

```python
book = {
    "Title": "The Hobbit",
    "Author": "J.R.R. Tolkien",
    "Year": 1937
}

book["Genre"] = "Fantasy"
book["Year"] = 1938

print(book)
```

### Using get() Method

```python
inventory = {
    "Apples": 15,
    "Bananas": 8
}

print(inventory.get("Oranges", 0))
```

## Learning Outcomes

* Learned how to store and manipulate collections of data using lists.
* Understood the difference between mutable and immutable data structures.
* Practiced sorting, searching, and modifying list elements.
* Learned tuple creation, unpacking, and tuple-specific methods.
* Gained experience working with dictionaries and key-value pairs.
* Developed problem-solving skills using Python data structures.

## Summary

The second day focused on Python data structures including Lists, Tuples, and Dictionaries. Various operations such as insertion, deletion, sorting, searching, tuple unpacking, and dictionary manipulation were performed. These data structures are fundamental for data handling and analysis tasks in Data Science and Machine Learning.
