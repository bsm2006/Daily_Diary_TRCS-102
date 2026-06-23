# Day 01

## Objective

To understand the fundamentals of Data Science and build a strong foundation in Python programming by learning basic syntax, variables, user interaction, and string manipulation techniques.

## Topics Covered

### Introduction to Data Science

* Overview of Data Science
* Applications of Data Science in various domains
* Data Science Workflow
* Importance of data-driven decision making

### Python Fundamentals

* Python syntax and structure
* Variables and data types
* Input and output operations
* Escape characters
* Separator and end parameters in print statements
* String formatting using f-strings

### String Operations

* String indexing
* String slicing
* String reversal using slicing
* Common string methods:

  * strip()
  * title()
  * upper()
  * lower()
  * capitalize()
  * count()
  * find()
  * replace()
  * split()
  * join()

## Practical Work

### Hello Python Program

```python
print("Hello Python")
```

### Variables and Data Types

```python
name = "Sahibdeep Singh"
age = 20
urn = 2435154

print(name, age, urn)
```

### Using Separator and End Parameters

```python
print("Sahib", "gmail.com", sep="@")

print(name, age, "Under Graduation", sep="->")

print(name, end="->")
print(age, end="->")
print("Under Graduation")
```

### String Formatting

```python
name = "Sahibdeep Singh"
age = 20

print(f"My name is {name} and I am {age} years old.")
```

### User Input

```python
user_input = input("Enter your name: ")
user_city = input("Enter your city: ")

print("Hello", user_input, "from", user_city)
```

### String Reversal Using Slicing

```python
name = "Sahibdeep Singh"
print(name[::-1])
```

### String Methods

```python
name = "sahibdeep singh"

print(name.title())
print(name.upper())
print(name.lower())
print(name.capitalize())
print(name.count("e"))
print(name.find("deep"))
print(name.replace("Singh", "Benipal"))
```

## Learning Outcomes

* Understood the fundamentals of Data Science and its applications.
* Learned Python syntax and basic programming constructs.
* Gained practical experience with variables, data types, and user input.
* Explored string indexing, slicing, and manipulation techniques.
* Practiced commonly used string methods for data processing.
* Developed confidence in writing simple Python programs.

## Summary

The first day focused on understanding the basics of Data Science and learning Python programming fundamentals. Practical exercises were performed to gain familiarity with variables, input/output operations, string formatting, indexing, slicing, and commonly used string methods. These concepts form the foundation for future Data Science and Machine Learning tasks.
