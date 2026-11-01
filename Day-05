# Week 4 – Day 5

# Deployment of a Machine Learning Application Using Streamlit and Streamlit Community Cloud

## Objective

To convert the developed Movie Recommendation System into an interactive web application using Streamlit, integrate the trained machine learning models and supporting components, build an accessible application interface, resolve deployment-related issues, and deploy the complete project through Streamlit Community Cloud using GitHub.

## 1. Introduction to Streamlit

Streamlit is an open-source Python framework used to build interactive web applications, particularly for Data Science, Machine Learning and Data Analytics projects.

It allows developers to convert Python scripts and machine learning models into functional web applications without requiring extensive frontend development.

### Why Streamlit?

Streamlit provides several useful capabilities:

- **Rapid Development:** Build interactive applications directly using Python.
- **Data Visualization:** Display charts, graphs and analytical results.
- **Machine Learning Integration:** Integrate trained models and generate predictions.
- **Interactive Components:** Add buttons, selection boxes, text inputs and other controls.
- **Deployment Support:** Publish applications through Streamlit Community Cloud.

In this practical, Streamlit was used to deploy the previously developed Movie Recommendation System as a complete interactive application.

## 2. Introduction to the Movie Recommendation System

The project implemented a content-based movie recommendation system using multiple machine learning and Natural Language Processing techniques.

The system used movie information and textual metadata to identify similarities between movies and generate recommendations.

### 2.1 Recommendation Models

Three recommendation approaches were integrated into the application.

**1. CountVectorizer**

CountVectorizer converts textual information into numerical representations based on the frequency of words.

It creates a document-term matrix, which can be used to calculate similarity between movies.

**2. TF-IDF (Term Frequency-Inverse Document Frequency)**

TF-IDF represents textual information by considering both the frequency of a term in a document and its importance across the complete collection of documents.

It helps assign greater importance to terms that are relatively informative.

**3. BERT (Bidirectional Encoder Representations from Transformers)**

BERT-based embeddings represent textual information as dense numerical vectors that capture semantic relationships.

The project used 384-dimensional embeddings to represent movie information and calculate semantic similarity.

### 2.2 Similarity Calculation

Cosine Similarity was used to compare movie representations and identify similar movies.

\[
\text{Cosine Similarity}(A,B)=
\frac{A\cdot B}{\|A\|\|B\|}
\]

A higher cosine similarity indicates that two movie representations are more similar in the vector space.

The recommendation system generated the top 10 recommendations based on the selected movie and recommendation approach.

## 3. Preparing the Application for Deployment

Before deployment, the existing machine learning project was organized into an application structure that could be executed through Streamlit.

### 3.1 Main Application File

The primary application was developed in:

```text
app.py
```

This file served as the main entry point of the Streamlit application.

It contained the homepage, application layout, styling and project overview.

The application used Streamlit's wide page layout to provide sufficient space for its content and visualizations.

### 3.2 Machine Learning Components

The recommendation functionality was maintained separately from the main interface.

The `recommender.py` module handled the recommendation logic and loaded the precomputed model resources.

The project used the following stored resources:

- `movie_data.pkl`
- `movie_index.pkl`
- Precomputed CountVectorizer and TF-IDF representations.
- Sparse similarity matrices.
- `bert_embeddings.npy`

These files allowed the application to use previously generated representations instead of rebuilding the complete recommendation resources every time a user accessed the application.

### 3.3 Application Structure

The project used a modular structure to separate the main application from its individual pages and supporting components.

The application included the following sections:

| Component | Purpose |
|---|---|
| `app.py` | Main homepage and application entry point |
| `recommender.py` | Movie recommendation and similarity functionality |
| Analytics Page | Movie-related analytical visualizations |
| Dataset Page | Dataset exploration and inspection |
| Model Comparison | Comparison of CountVectorizer, TF-IDF and BERT |
| `image_renderer.py` | Supporting image-rendering functionality |
| Assets | CSS and other application resources |

## 4. Developing the Streamlit Application Interface

The Streamlit interface was designed to provide an organized and interactive experience.

### 4.1 Homepage

The homepage introduced the Movie Recommendation System and presented an overview of its capabilities.

The application highlighted:

- More than 45,000 movies.
- Three recommendation models.
- 384-dimensional BERT embeddings.
- More than eight analytical visualizations.

The homepage also provided an overview of the technologies used in the project.

### 4.2 Movie Recommendation Interface

The recommendation section allowed users to search for movies and obtain recommendations.

The application integrated the three recommendation approaches:

1. CountVectorizer.
2. TF-IDF.
3. BERT.

The recommendation engine used movie similarity calculations to retrieve the top 10 similar movies.

### 4.3 Analytics Page

The Analytics section provided visual insights into the movie dataset through multiple Matplotlib visualizations.

The page was implemented as a separate Streamlit page:

```text
pages/2_📊_Analytics.py
```

It included analytical charts designed to help users understand different aspects of the movie dataset.

### 4.4 Dataset Explorer

The Dataset section provided an interface for exploring the underlying movie data.

It was implemented in:

```text
pages/3_📚_Dataset.py
```

This page allowed users to inspect the dataset and understand the information used by the recommendation system.

### 4.5 Model Comparison

A separate section was included to demonstrate the differences between the three recommendation approaches.

The comparison focused on:

- CountVectorizer-based recommendations.
- TF-IDF-based recommendations.
- BERT-based semantic recommendations.

This allowed users to explore how different text representation techniques influence movie similarity and recommendation results.

## 5. Styling and Customization

The application interface was customized using CSS to improve its visual presentation.

The project used a dedicated stylesheet:

```text
assets/style.css
```

CSS was used to customize the appearance of the Streamlit interface, including its layout and visual elements.

The styling was integrated into the application to maintain a consistent design across its different sections.

## 6. Preparing the Project for GitHub

Once the application was developed and tested locally, the project was prepared for deployment through GitHub.

The source code and supporting resources were maintained in the following repository:

**GitHub Repository:** `bsm2006/Movie-Recommendation-System`

**Branch:** `main`

Git was used to track the changes made during application development and deployment preparation.

The following workflow was followed:

1. Reviewed the application structure and supporting files.
2. Checked the Python source files for syntax errors.
3. Verified that the required project files were included.
4. Updated the application components.
5. Committed the changes to Git.
6. Pushed the updated project to the GitHub repository.

Example Git commands:

```bash
git status

git add .

git commit -m "Prepare Streamlit deployment"

git push origin main
```

GitHub acted as the source repository from which Streamlit Community Cloud accessed the application.

## 7. Deploying Through Streamlit Community Cloud

Streamlit Community Cloud provides a platform for hosting Streamlit applications directly from GitHub repositories.

The project was deployed using this platform.

### 7.1 Connecting GitHub

The GitHub repository was connected to Streamlit Community Cloud.

The following deployment details were selected:

| Configuration | Value |
|---|---|
| Repository | `bsm2006/Movie-Recommendation-System` |
| Branch | `main` |
| Main Application File | `app.py` |
| Deployment Platform | Streamlit Community Cloud |

The platform used the selected repository, branch and application entry point to build and run the application.

### 7.2 Deployment Process

The deployment workflow involved:

1. Opening Streamlit Community Cloud.
2. Connecting the GitHub account.
3. Selecting the Movie Recommendation System repository.
4. Selecting the `main` branch.
5. Specifying `app.py` as the application entry point.
6. Initiating the deployment.
7. Allowing the platform to install dependencies and start the application.
8. Inspecting the deployed application for runtime and rendering issues.

Once deployment was completed, the application became accessible through its hosted web interface.

## 8. Resolving Deployment Issues

During deployment, certain differences between the local development environment and the cloud environment caused application issues.

These issues were investigated and resolved before considering the deployment complete.

### 8.1 Case-Sensitive File Paths

One of the issues involved the stylesheet path.

The application initially referenced:

```text
Assets/style.css
```

However, the actual directory structure used:

```text
assets/style.css
```

This difference caused a problem because the cloud deployment environment treated the directory names as case-sensitive.

The path was corrected to match the actual directory structure.

**Learning:** File and directory names must match exactly when deploying applications to case-sensitive environments.

### 8.2 Matplotlib Chart Rendering Issue

Another issue occurred with Matplotlib visualizations on Streamlit Community Cloud.

The charts were working in the local environment, but their rendering through `st.pyplot(fig)` caused problems in the deployed application.

This issue affected visualizations on:

- Analytics Page.
- Dataset Page.

The affected charts were reviewed and the rendering approach was modified.

### 8.3 Implementing a Custom Image Renderer

To resolve the chart-rendering issue, a supporting module named `image_renderer.py` was introduced.

The function:

```python
render_matplotlib_base64(fig)
```

was used to convert Matplotlib figures into Base64-encoded image representations.

Instead of directly relying on `st.pyplot(fig)` for the affected charts, the application used the custom rendering approach.

This allowed the charts to be displayed through image rendering in the deployed Streamlit application.

The implementation was applied to eight Matplotlib charts across the Analytics and Dataset pages.

### 8.4 Updating and Redeploying the Application

After making the necessary corrections:

1. The modified Python files were reviewed.
2. Python compilation was checked.
3. The updated files were committed to Git.
4. The changes were pushed to the GitHub `main` branch.
5. Streamlit Community Cloud was used to verify the updated deployment.
6. The affected pages and visualizations were checked again.

The deployment issues were resolved, and the application was successfully deployed.

## 9. Final Application Verification

After deployment, the complete application was checked to ensure that its major components were accessible and functional.

The verification included:

- Opening the deployed homepage.
- Checking the application layout and CSS styling.
- Accessing the movie recommendation functionality.
- Checking the CountVectorizer, TF-IDF and BERT recommendation approaches.
- Opening the Analytics page.
- Verifying Matplotlib chart rendering.
- Opening the Dataset Explorer.
- Checking the supporting application modules.
- Confirming that the deployed application loaded successfully after the GitHub updates.

The final deployment was successfully completed through Streamlit Community Cloud.

## 10. Practical Implementation

The following tasks were completed during this training day:

1. Prepared the Movie Recommendation System for web deployment.
2. Integrated the existing CountVectorizer, TF-IDF and BERT recommendation approaches.
3. Organized the project into a main application and supporting modules.
4. Used `app.py` as the main Streamlit application entry point.
5. Integrated the recommendation functionality through `recommender.py`.
6. Prepared the homepage, recommendation interface, Analytics page, Dataset Explorer and Model Comparison section.
7. Customized the application using CSS.
8. Organized the project resources and supporting model files.
9. Connected the GitHub repository `bsm2006/Movie-Recommendation-System` to Streamlit Community Cloud.
10. Selected the `main` branch and `app.py` as the deployment configuration.
11. Identified and corrected a case-sensitive stylesheet path issue.
12. Investigated Matplotlib chart-rendering issues in the cloud environment.
13. Implemented `image_renderer.py` and `render_matplotlib_base64(fig)` for the affected visualizations.
14. Updated the Analytics and Dataset pages to use the corrected chart-rendering approach.
15. Checked the Python files, committed the changes and pushed the updated code to GitHub.
16. Verified the final application after deployment.

## 11. Learning Outcomes

By the end of this training day, the following concepts and practical skills were developed:

- Understood the purpose and working of Streamlit.
- Learned how to convert a machine learning project into an interactive web application.
- Integrated multiple recommendation approaches into one application.
- Understood the role of modular Python files in application development.
- Learned how to structure a multipage Streamlit application.
- Integrated CSS for interface customization.
- Understood how GitHub repositories support cloud deployment.
- Learned how to configure and deploy an application using Streamlit Community Cloud.
- Understood the importance of case-sensitive file paths in cloud environments.
- Resolved chart-rendering issues involving Matplotlib and Streamlit.
- Implemented Base64-based image rendering for Matplotlib visualizations.
- Learned how to update an already deployed application through GitHub.
- Understood the importance of testing and verifying an application after deployment.

## 12. Final Outcome

The Movie Recommendation System was successfully converted from a locally developed machine learning project into a deployed, interactive web application.

The final application integrated three recommendation approaches: CountVectorizer, TF-IDF and BERT. It also provided a homepage, movie recommendation functionality, analytical visualizations, dataset exploration and model comparison.

The application was deployed through **Streamlit Community Cloud**, with GitHub serving as the source code repository.

Deployment-related issues involving file path case sensitivity and Matplotlib chart rendering were resolved, and the updated application was successfully verified.

**Key Takeaway:** Developing a machine learning model is only one part of a complete Data Science workflow. Deployment makes the developed solution accessible through a usable interface, allowing users to interact with its functionality without directly executing the underlying Python code.
