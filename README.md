# Obesity Risk Prediction System

## Overview

This project is an end-to-end machine learning web application that predicts obesity levels based on lifestyle, dietary habits, and physical activity data. The system is built using Flask and deployed on Render with Docker support for environment consistency.

It is a multi-class classification problem that categorizes individuals into different obesity levels based on input health parameters.

---
## Deployment Link 

👉 https://obesity-cvd-risk-detection-using-ml.onrender.com/


## Obesity Categories

- Insufficient Weight  
- Normal Weight  
- Overweight Level I  
- Overweight Level II  
- Obesity Type I  
- Obesity Type II  
- Obesity Type III  

---

## Problem Statement

Obesity is a major global health issue influenced by diet, lifestyle, and physical activity. The goal of this project is to build a machine learning system that can predict obesity levels early using user-provided inputs and help in preventive health analysis.

---

## Dataset Features

The model uses the following input features:

- Gender  
- Age  
- Height  
- Weight  
- family_history_with_overweight  
- FAVC (Frequent consumption of high caloric food)  
- FCVC (Vegetable consumption frequency)  
- NCP (Number of main meals)  
- CAEC (Food consumption between meals)  
- SMOKE  
- CH2O (Water consumption)  
- SCC (Calorie monitoring)  
- FAF (Physical activity frequency)  
- TUE (Technology usage time)  
- CALC (Alcohol consumption)  
- MTRANS (Transportation mode)  

---

## Machine Learning Approach

### Models Trained

A total of 8 machine learning models were trained and compared:

- Logistic Regression  
- Decision Tree  
- Random Forest  
- K-Nearest Neighbors (KNN)  
- Support Vector Machine (SVM)  
- Naive Bayes  
- Gradient Boosting  
- AdaBoost  

---

### Model Selection

All models were evaluated based on accuracy and generalization performance.

- **Best Performing Model:** Support Vector Machine (SVM)  
- **Final Model Used in Production:** `obesity_model.pkl`

SVM was selected due to its strong performance on high-dimensional feature space and better generalization compared to other models.

---

### Data Preprocessing

- Label encoding for categorical variables  
- Feature transformation for consistent model input  
- Manual preprocessing integrated into Flask application  
- No external scaler pipeline used  

---

## Tech Stack

### Backend
- Flask (Python)
- Gunicorn (Production WSGI server)

### Machine Learning
- Scikit-learn
- NumPy
- Pandas
- Label Encoding

### Models
- Logistic Regression  
- Decision Tree  
- Random Forest  
- KNN  
- SVM (Best Model)  
- Naive Bayes  
- Gradient Boosting  
- AdaBoost  

### Frontend
- HTML (Jinja2 templates with Flask)

### Deployment & DevOps
- Docker (Containerization)
- Render (Cloud deployment platform)
- GitHub (Version control and deployment integration)

---

## Project Structure
```
 Obesity-Detection/
│
├── app.py                  # Flask application
├── obesity_model.pkl       # Trained SVM model
├── requirements.txt        # Dependencies
├── Dockerfile              # Docker configuration
│
├── templates/
│   └── home.html           # Frontend UI
│
├── ObesityDataSet.csv      # Dataset used for training
├── Notebook.ipynb          # Model training and experimentation
└── README.md               # Project documentation
```
## Deployment
- Containerized using Docker for consistent runtime environment
- Deployed on Render cloud platform
- Flask application served using Gunicorn
- GitHub connected for continuous deployment
- Model loaded at runtime using pickle.

## Thanks for Reading :)


