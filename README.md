# Customer Churn Analysis - Telco Dataset

# Overview

This project analyzes customer churn in the Telco dataset from Kaggle using SQL and implements a churn prediction model using machine learning techniques like Random Forest and XGBoost. The goal is to identify factors influencing customer churn and provide actionable business recommendations to reduce churn and improve revenue retention.

# Problem Statement

Customer churn is a significant challenge for telecom companies, leading to revenue loss. This project aims to:

- Analyze churn trends using SQL queries

- Build predictive models to forecast churn

- Identify key factors contributing to churn

- Optimize the model for better accuracy

- Provide actionable business insights to reduce churn

## Key Observations from SQL Analysis:

- Churn Rate: Almost 25% of the customers have churned.

- Contract Type: Month-to-month contracts exhibit the highest churn.

- TotalCharges Distribution: Higher TotalCharges are more common in non-churned customers.

- Revenue Impact: Approximately ₹28 Lakh is lost due to churn.

- Churn Risk Groups:

   - Medium churn risk (12-48 months): Majority of customers fall into this category and require proactive engagement.

   -   Low churn risk group: Contributes the most to overall revenue

   -   High churn risk group: Accounts for approximately ₹5 Lakh in revenue.

- Payment Method Influence: Electronic Check users exhibit the highest churn rate.

- Primary Churn Cause: High TotalCharges leads to increased churn risk.

## SQL-Based Data Exploration

- Extracted key statistics on customer tenure, contract types, and payment methods.

- Identified revenue loss trends using aggregation functions.

- Performed segmentation to categorize customers based on churn risk levels.


# Machine Learning Approach

## 1. Data Preprocessing

- Handling missing values and outliers

- Encoding categorical variables

- Feature scaling

## 2. Model Implementation

- Using Random Forest 

 - Splitting data into training and testing sets

- Evaluating models using accuracy, precision, recall, and F1-score

## 3.Feature Importance & Model Explainability
- Identifying crucial features affecting customer churn

## 4-Model Optimization

- Hyperparameter tuning with GridSearchCV
- Comparing model performance and selecting the most efficient model

## Actionable Business Recommendations

1)Retention Strategies for Month-to-Month Customers: Introduce loyalty programs and discounted long-term contract incentives.

2)Optimize Payment Methods: Encourage customers to switch from Electronic Check to automated payments with discounts or benefits.

3)Target Medium Churn Risk Customers: Implement personalized engagement and retention strategies for customers in the 12-48 months range.

4)Pricing and Billing Adjustments: Reduce unexpected charges and provide cost transparency to improve customer satisfaction.

5)Enhanced Customer Support & Proactive Outreach: Address customer concerns proactively to improve service experience.
<hr>

View the Python Notebook- [Notebook](https://nbviewer.org/github/Krasper707/Telco-Customer-Churn/blob/main/Telco_Customer_Churn.ipynb)



