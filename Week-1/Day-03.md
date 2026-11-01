# Day 03

**Date: Wednesday, 24 June 2026**

## Objective

To understand Python operators, decision-making statements, loops, and functions. Learn how to perform calculations, compare values, evaluate logical conditions, automate repetitive tasks, and write reusable code using functions. These concepts complete the fundamentals of Python programming.

---

## Topics Covered

### Operators in Python

Operators are special symbols used to perform operations on variables and values.

#### Arithmetic Operators

Used to perform mathematical calculations.

| Operator | Description    |
| -------- | -------------- |
| `+`      | Addition       |
| `-`      | Subtraction    |
| `*`      | Multiplication |
| `/`      | Division       |
| `%`      | Modulus        |
| `**`     | Exponentiation |
| `//`     | Floor Division |

#### Comparison Operators

Used to compare two values and return a Boolean result (`True` or `False`).

| Operator | Description              |
| -------- | ------------------------ |
| `==`     | Equal to                 |
| `!=`     | Not equal to             |
| `>`      | Greater than             |
| `<`      | Less than                |
| `>=`     | Greater than or equal to |
| `<=`     | Less than or equal to    |

#### Logical Operators

Used to combine multiple conditions.

| Operator | Description                                    |
| -------- | ---------------------------------------------- |
| `and`    | Returns True if both conditions are True       |
| `or`     | Returns True if at least one condition is True |
| `not`    | Reverses the result                            |

#### Assignment Operators

Used to assign and update values.

| Operator | Description             |
| -------- | ----------------------- |
| `=`      | Assignment              |
| `+=`     | Add and assign          |
| `-=`     | Subtract and assign     |
| `*=`     | Multiply and assign     |
| `/=`     | Divide and assign       |
| `%=`     | Modulus and assign      |
| `**=`    | Exponent and assign     |
| `//=`    | Floor divide and assign |

#### Identity Operators

Used to compare memory locations of objects.

| Operator | Description                                             |
| -------- | ------------------------------------------------------- |
| `is`     | Returns True if both variables refer to the same object |
| `is not` | Returns True if variables refer to different objects    |

#### Membership Operators

Used to check whether a value exists in a sequence.

| Operator | Description                          |
| -------- | ------------------------------------ |
| `in`     | Returns True if value exists         |
| `not in` | Returns True if value does not exist |

---

## Conditional Statements

Conditional statements allow a program to make decisions based on conditions.

### if Statement

Executes a block of code only when a condition is true.

```python
age = 18

if age >= 18:
    print("Eligible to vote")
```

### if-else Statement

Provides an alternative block of code when the condition is false.

```python
age = 16

if age >= 18:
    print("Eligible to vote")
else:
    print("Not eligible to vote")
```

### if-elif-else Statement

Used when multiple conditions need to be checked.

```python
marks = 85

if marks >= 90:
    print("Grade A")
elif marks >= 75:
    print("Grade B")
elif marks >= 60:
    print("Grade C")
else:
    print("Grade D")
```

### Nested if Statement

```python
age = 20

if age >= 18:
    if age < 65:
        print("Adult")
```

---

## Loops

Loops execute a block of code repeatedly until a condition is satisfied.

### for Loop

The `for` loop is used to iterate over sequences such as lists, tuples, strings, and ranges.

```python
for item in sequence:
    # code
```

### The `range()` Function

The `range()` function generates a sequence of numbers.

```python
range(start, stop, step)
```

* `start` is optional.
* `stop` is mandatory.
* `step` is optional.

---

## Functions

A function is a reusable block of code that performs a specific task.

### Syntax

```python
def function_name():
    # code
```

---

## Return Statement

The `return` statement sends a value back to the function caller.

```python
def add(a, b):
    return a + b
```

---

## Variable Scope

Variables can be classified based on where they are declared.

* **Local Variables** are declared inside a function.
* **Global Variables** are declared outside all functions.

---

## *args

`*args` allows a function to accept multiple positional arguments.

```python
def add_numbers(*numbers):
    print(sum(numbers))
```

---

## **kwargs

`**kwargs` allows a function to accept multiple keyword arguments.

```python
def build_profile(**user_info):
    print(user_info)
```

---

## Lambda Functions

Lambda functions are anonymous functions used for short expressions.

```python
square = lambda x: x * x
```

---

## Practical Work

### Identity Operator Example

```python
x = [10, 20]
y = [10, 20]

print(x == y)
print(x is y)

z = x

print(z is x)
```

### Email Domain Validator

```python
allowed_domains = ["gmail.com", "yahoo.com", "outlook.com"]

user_email = input("Enter your email address: ")

if "@" in user_email:
    domain = user_email.split("@")[1]

    if domain in allowed_domains:
        print("Valid email address")
    else:
        print("Invalid email address")
```

### Leap Year Checker

```python
year = int(input("Enter a year: "))

if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0):
    print(f"{year} is a leap year")
else:
    print(f"{year} is not a leap year")
```

### Age Category Classifier

```python
age = int(input("Enter your age: "))

if age < 12:
    print("You are a child")
elif 12 <= age < 18:
    print("You are a teenager")
elif age < 65:
    print("You are an adult")
else:
    print("You are a senior citizen")
```

### Simple Calculator

```python
num1 = float(input("Enter first number: "))
num2 = float(input("Enter second number: "))

print("1. Addition")
print("2. Subtraction")
print("3. Multiplication")
print("4. Division")

choice = input("Enter choice: ")

if choice == "1":
    print(num1 + num2)

elif choice == "2":
    print(num1 - num2)

elif choice == "3":
    print(num1 * num2)

elif choice == "4":
    if num2 == 0:
        print("Division by zero is not allowed")
    else:
        print(num1 / num2)

else:
    print("Invalid choice")
```

### Driving License Eligibility Checker

```python
age = int(input("Enter your age: "))

if age >= 18:
    dl = input("Do you have a driving license? (yes/no): ")

    if dl == "yes":
        print("You are eligible to drive")
    else:
        print("You are not eligible to drive")
else:
    print("You are not eligible to drive")
```

### Scholarship Eligibility Checker

```python
gender = input("Enter your gender (male/female): ")

if gender == "male":

    cgpa = float(input("Enter your CGPA: "))

    if 9.0 <= cgpa <= 10.0:
        print("100 percent Scholarship")

    elif 8.0 <= cgpa < 9.0:
        print("80 percent Scholarship")

    elif 6.0 <= cgpa < 8.0:
        print("60 percent Scholarship")

    else:
        print("No Scholarship")

else:
    print("100 percent Scholarship")
```

### Sum of Even Numbers Using a Loop

```python
total = 0

for i in range(0, 10000, 2):
    total += i

print(total)
```

### Prime Numbers from 1 to 100

```python
for num in range(1, 101):

    if num % 2 == 0 and num != 2:
        continue

    for i in range(3, num, 2):
        if num % i == 0:
            break
    else:
        print(num)
```

### Sum of Even Numbers Until Total Reaches 150

```python
total = 0

for num in range(2, 51, 2):

    if total < 150:
        total += num
        last_even = num

print(last_even)
print(total)
```

### Numbers Not Divisible by 3 or 5

```python
for num in range(1, 20):

    if num % 3 == 0 or num % 5 == 0:
        continue

    print(num)
```

### Function with Return Statement

```python
def add(a, b):
    return a + b

result = add(10, 20)

print(result)
```

### Using *args

```python
def add_numbers(*numbers):
    print(sum(numbers))

add_numbers(5, 10, 15, 20)
```

### Building a User Profile Using **kwargs

```python
def build_profile(name="Not Available",
                  age="Not Available",
                  city="Not Available",
                  **user_info):

    profile = {}

    profile["Name"] = name
    profile["Age"] = age
    profile["City"] = city

    for key, value in user_info.items():
        profile[key] = value

    return profile


user = build_profile(
    age=20,
    city="Ludhiana",
    course="B.Tech CSE",
    college="GNDEC",
    skills=["Python", "Java", "SQL"],
    cgpa=8.9
)

print(user)
```

### Lambda Function

```python
square = lambda x: x * x

print(square(5))
```

---

## Learning Outcomes

* Learned different categories of Python operators.
* Performed arithmetic, comparison, logical, assignment, identity, and membership operations.
* Understood how conditional statements control the execution flow of a program.
* Implemented `if`, `if-else`, `if-elif-else`, and nested conditional statements.
* Learned to automate repetitive tasks using `for` loops and the `range()` function.
* Understood the concept of functions and code reusability.
* Used the `return` statement to send values back from functions.
* Differentiated between local and global variable scope.
* Implemented flexible functions using `*args` and `**kwargs`.
* Learned to create anonymous functions using lambda expressions.
* Strengthened logical thinking by solving practical programming problems.

---

## Summary

The third day completed the core Python programming concepts by covering operators, conditional statements, loops, functions, variable scope, `*args`, `**kwargs`, and lambda functions. Multiple practical programs were implemented to strengthen problem-solving skills and understand real-world applications of Python. With the completion of these topics, the Python fundamentals required for Data Science have been covered, providing a strong foundation for learning libraries such as NumPy, Pandas, Matplotlib, and Scikit-learn in the upcoming sessions.
