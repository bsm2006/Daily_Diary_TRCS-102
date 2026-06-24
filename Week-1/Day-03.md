# Day 03

## Objective

To understand Python operators and decision-making statements. Learn how to perform calculations, compare values, evaluate logical conditions, and control the flow of program execution using conditional statements.

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

### Nested if Statements

An if statement inside another if statement.

```python
age = 20

if age >= 18:
    if age < 65:
        print("Adult")
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

---

## Learning Outcomes

* Learned different categories of Python operators.
* Performed arithmetic and logical operations using operators.
* Understood the difference between equality (`==`) and identity (`is`) operators.
* Applied membership operators for searching elements in collections.
* Learned how conditional statements control program flow.
* Implemented `if`, `if-else`, `if-elif-else`, and nested if statements.
* Developed practical programs using decision-making concepts.
* Improved logical thinking and problem-solving skills.

---

## Summary

The third day focused on operators and decision-making in Python. Various operator categories including arithmetic, comparison, logical, assignment, identity, and membership operators were studied and implemented. Conditional statements were used to build practical applications such as email validation, leap year checking, age classification, scholarship eligibility, and calculator programs. These concepts are fundamental for developing interactive and intelligent Python applications and serve as the basis for more advanced programming constructs such as loops, functions, and object-oriented programming.
