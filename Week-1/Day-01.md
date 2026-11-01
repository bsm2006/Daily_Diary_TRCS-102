# Day 1: Introduction to Data Science and Python Fundamentals

**Date: Monday, 22 June 2026**

# Module 1: Introduction to Data Science

## What is Data Science?

Data Science is a dynamic and rapidly growing field. At its core, **Data Science is the process of collecting, cleaning, analyzing, and interpreting data to solve real-world problems and support decision-making.**

### Discussion Starter: Think About It!

Take a moment to consider how technology impacts your daily life:

* **How does Netflix recommend movies?** It analyzes your watch history and compares it with similar users.
* **How does Amazon recommend products?** It looks at your browsing patterns, purchase history, and items frequently bought together.
* **How does Google Maps predict traffic?** It aggregates real-time location data from millions of smartphones to calculate speeds and detect congestion.

All of these are powered by **Data Science**.

---

## Real-World Applications

Data Science is used in almost every industry today.

### 1. Healthcare

* **Disease Prediction:** Identifying risks of diseases before they become severe.
* **Patient Analysis:** Tracking patient recovery rates and customizing treatments.

### 2. Banking & Finance

* **Fraud Detection:** Identifying unusual transaction patterns in real-time.
* **Loan Approval:** Assessing creditworthiness based on customer history.

### 3. E-Commerce

* **Product Recommendations:** Suggesting items you might like.
* **Customer Behavior Analysis:** Understanding why customers buy certain products.

### 4. Sports

* **Player Performance:** Tracking speed, stamina, and gameplay statistics.
* **Match Statistics:** Helping coaches build winning strategies.

### 5. Social Media

* **Content Recommendations:** Customizing your feed (Instagram, TikTok, YouTube).
* **Ad Targeting:** Showing advertisements that match user interests.

---

## Why Data Science?

Organizations generate massive amounts of data every single day. Without Data Science, this data is just noise.

Data Science helps organizations:

* **Make better, data-driven decisions** rather than relying on guesswork.
* **Improve customer experience** by personalizing services.
* **Increase efficiency** by identifying bottlenecks.
* **Reduce costs** by optimizing operations.
* **Identify hidden trends and patterns** in market data.
* **Increase revenue** through smarter pricing and products.

---

# Module 2: Data Science Lifecycle

Every successful Data Science project follows a structured, step-by-step process. This is known as the **Data Science Lifecycle**.

```text
    Business Problem
           │
           ▼
    Data Collection
           │
           ▼
     Data Cleaning
           │
           ▼
     Data Analysis
           │
           ▼
    Model Building
           │
           ▼
      Evaluation
           │
           ▼
       Deployment
           │
           ▼
       Monitoring
```

Let's break down each step using a real-world example: **A Telecom company wants to reduce customer churn (customers leaving the service).**

## Step 1: Business Problem

First, we must define the problem and ask the right questions.

* **Example:** The telecom company wants to identify customers likely to leave.
* **Core Question:** "Which customers are likely to churn (cancel their subscription)?"

## Step 2: Data Collection

Next, we gather relevant data from various sources.

### Data Sources

* Databases (SQL databases)
* Excel files or CSV spreadsheets
* APIs (web services)
* Websites (web scraping)
* Mobile applications (app logs)

## Step 3: Data Cleaning

Real-world data is messy, incomplete, and contains errors. We must clean it.

### Common Problems

* **Missing Values:** Age is unknown (`?`, `NaN`, or `NULL`).
* **Duplicate Records:** The same customer is listed multiple times.
* **Incorrect Entries:** Age is listed as `-5` or a negative salary.

## Step 4: Data Analysis (EDA)

We explore the clean data to find trends, summaries, and insights.

### Questions We Might Ask

* What is the average age of our customers?
* Which data plans sell the most?
* Which city generates the highest revenue?
* Do customers with higher bills leave more often?

## Step 5: Model Building

We use historical data to build mathematical or machine learning models that can make predictions.

* **Example:** Build a predictive model that takes customer usage details and predicts whether they will churn (Yes or No).

## Step 6: Evaluation

We test the model on new data to see how accurate it is before deployment.

* **Example:** Our churn model achieves 92% accuracy.

## Step 7: Deployment

We integrate the model into a live application where business users can use it.

* **Example:** Deploying the model into the customer service system so agents receive alerts about customers likely to churn.

## Step 8: Monitoring

We continuously monitor the model's performance over time. Since customer behavior and business environments change, the model must be periodically updated.

---

# Module 3: Environment Setup

To write and run code, we need an environment. Let's learn about the standard tools used in Python and Data Science.

## What is Python?

Python is a popular, high-level programming language that is easy to learn and write.

It is widely used in:

* Data Science and Data Analysis
* Machine Learning and Artificial Intelligence
* Task Automation and Scripting
* Web Development

### Why Python?

1. Easy to learn with simple syntax.
2. Easy to read because of clean formatting and indentation.
3. Huge community support.
4. Rich ecosystem of libraries such as `pandas`, `numpy`, `matplotlib`, and `scikit-learn`.

---

## What is Jupyter Notebook?

Jupyter Notebook is an interactive web-based coding environment.

It allows you to:

1. Write and run Python code in separate cells.
2. See output immediately below the code.
3. Add notes, explanations, and visualizations using Markdown.

---

## What is VS Code?

Visual Studio Code (VS Code) is a professional, lightweight code editor developed by Microsoft.

### How to Use It

1. Download and install VS Code.
2. Install the Python extension.
3. Install the Jupyter extension.
4. Run Python scripts and Jupyter notebooks directly inside VS Code.

---

## What is Google Colab?

Google Colaboratory (Colab) is a free cloud service from Google that lets you write and run Python code directly in your browser.

### Advantages

* No installation required.
* Free access to powerful computing resources.
* GPU support for machine learning tasks.
* Easy sharing through Google Drive.

---

## Your First Python Program

In Jupyter Notebook, code is executed cell by cell.

To run a cell:

1. Click the cell.
2. Press **Shift + Enter**.

Example:

```python
print("Hello World")
```

---

# Module 4: Python Fundamentals - Variables

## What is a Variable?

A **variable** is a container used to store data in a computer's memory.

Think of a variable as a labeled storage box. You store information in the box and assign it a name so it can be accessed later.

### Example

```python
name = "Rahul"
age = 25
salary = 50000
```

---

## Variable Naming Rules

Follow these rules when creating variable names.

### Valid Names

```python
student_name = "Rahul"
age1 = 25
salary_amount = 50000
```

### Invalid Names

```python
1age = 25
student-name = "Rahul"
student name = "Rahul"
```

### Best Practices

* Use meaningful and descriptive names.
* Use lowercase letters with underscores.
* Follow the snake_case naming convention.

Examples:

```python
employee_salary = 50000
student_marks = 95
total_amount = 1000
```

---

# Module 5: Input and Output

## Output Using print()

The `print()` function displays text, variables, and calculations on the screen.

### Basic Print

```python
print("Hello World")
```

### Printing Multiple Values

```python
name = "Rahul"
age = 25

print(name, age)
```

### The sep Parameter

By default, Python separates values with spaces.

```python
print("Python", "Data", "Science", sep="-")
```

Output:

```text
Python-Data-Science
```

### The end Parameter

```python
print("Hello", end=" ")
print("World")
```

Output:

```text
Hello World
```

### Escape Characters

#### New Line

```python
print("Hello\nWorld")
```

Output:

```text
Hello
World
```

#### Tab Space

```python
print("Name\tAge")
```

Output:

```text
Name    Age
```

### String Concatenation

```python
name = "Rahul"

print("My name is " + name)
```

Output:

```text
My name is Rahul
```

### f-Strings (Formatted Strings)

```python
name = "Rahul"
age = 25

print(f"My name is {name} and I am {age} years old.")
```

Output:

```text
My name is Rahul and I am 25 years old.
```

---

## Input Using input()

The `input()` function allows users to enter data through the keyboard.

### Syntax

```python
name = input("Enter your name: ")
print(name)
```

### Important Concept

Everything entered through `input()` is stored as a string by default.

Example:

```python
age = input("Enter age: ")

print(type(age))
```

Output:

```text
<class 'str'>
```

To use numeric values, type conversion is required.

```python
age = int(input("Enter age: "))
```

---

# Conclusion

In Day 1, we built a strong foundation in Data Science and Python programming. We learned what Data Science is, its real-world applications, and how organizations use data to make informed decisions. We also studied the complete Data Science Lifecycle, from identifying a business problem to deploying and monitoring a solution.

Next, we explored the tools required for Data Science, including Python, Jupyter Notebook, VS Code, and Google Colab. Finally, we covered the basics of Python programming by understanding variables, variable naming rules, input and output functions, string formatting, and common printing techniques.

## Key Takeaways

* Data Science transforms raw data into meaningful insights.
* Every Data Science project follows a structured lifecycle.
* Python is the most widely used programming language for Data Science.
* Jupyter Notebook, VS Code, and Google Colab are popular development environments.
* Variables are used to store data in memory.
* Python follows specific variable naming rules.
* The `print()` function is used to display output.
* The `input()` function is used to accept user input.
* f-strings provide a clean and efficient way to format output.

By completing Day 1, we have established the fundamental concepts required to begin programming in Python and continue our journey into Data Science and Machine Learning.
