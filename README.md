# Customer Churn Analysis - Telco Dataset

## Overview
This project analyzes customer churn in the Telco dataset from Kaggle using SQL for exploratory data analysis and machine learning techniques such as Random Forest and XGBoost for churn prediction. The primary objective is to identify factors influencing customer churn and provide actionable business recommendations to reduce churn and improve revenue retention.

## Problem Statement
Customer churn is a critical challenge for telecom companies, leading to significant revenue losses. This project aims to:
- Analyze churn trends using SQL queries.
- Build predictive models to forecast customer churn.
- Identify key factors contributing to churn.
- Optimize the model for better accuracy.
- Provide actionable business insights to mitigate churn.

## Key Observations from SQL Analysis
### Churn Rate:
- Approximately **25%** of customers have churned.

### Contract Type:
- **Month-to-month contracts** exhibit the highest churn rate.

### TotalCharges Distribution:
- Higher **TotalCharges** are more common among non-churned customers.

### Revenue Impact:
- Estimated revenue loss due to churn: **₹28 Lakh**.

### Churn Risk Groups:
- **Medium churn risk (12-48 months tenure):** Majority of customers, requiring proactive engagement.
- **Low churn risk group:** Contributes the most to overall revenue.
- **High churn risk group:** Accounts for approximately **₹5 Lakh** in lost revenue.

### Payment Method Influence:
- Customers using **Electronic Check** exhibit the highest churn rate.

### Primary Churn Cause:
- Higher **TotalCharges** correlate with increased churn risk.

## SQL-Based Data Exploration
- Extracted key statistics on customer tenure, contract types, and payment methods.
- Identified revenue loss trends using SQL aggregation functions.
- Performed segmentation to categorize customers based on churn risk levels.

## Machine Learning Approach
### 1. Data Preprocessing
- Handling missing values and outliers.
- Encoding categorical variables.
- Feature scaling.

### 2. Model Implementation
- Built **Random Forest** and **XGBoost** models.
- Split data into training and testing sets.
- Evaluated models using **accuracy, precision, recall, and F1-score**.

### 3. Feature Importance & Model Explainability
- Identified crucial features affecting customer churn.

### 4. Model Optimization
- Performed hyperparameter tuning using **GridSearchCV**.
- Compared model performance and selected the most efficient model.

## Actionable Business Recommendations
1. **Retention Strategies for Month-to-Month Customers:**
   - Introduce **loyalty programs** and **discounted long-term contract incentives**.
2. **Optimize Payment Methods:**
   - Encourage customers to switch from **Electronic Check** to **automated payments** by offering discounts or benefits.
3. **Target Medium Churn Risk Customers:**
   - Implement **personalized engagement** and **retention strategies** for customers in the **12-48 months tenure range**.
4. **Pricing and Billing Adjustments:**
   - Reduce unexpected charges and enhance **cost transparency** to improve customer satisfaction.
5. **Enhanced Customer Support & Proactive Outreach:**
   - Address customer concerns **proactively** to improve overall service experience.

## Conclusion
By leveraging SQL-based data exploration and machine learning techniques, this project provides key insights into customer churn trends and predictive models for better decision-making. Implementing the suggested business strategies can significantly reduce churn, enhance customer satisfaction, and improve revenue retention.

---

### Technologies Used
- **SQL** for data exploration
- **Python (Pandas, NumPy, Scikit-learn, XGBoost, Random Forest)** for machine learning
- **Matplotlib & Seaborn** for visualization

### Future Work
- Implement deep learning models for enhanced churn prediction.
- Develop a real-time churn monitoring dashboard.
- Integrate additional external datasets for better feature engineering.

---
## Acknowledgments
- Dataset Source: [Kaggle - Telco Customer Churn Dataset](https://www.kaggle.com/datasets)
- Open-source libraries and frameworks used in the project.

---

View the Python Notebook- [Notebook](https://nbviewer.org/github/Krasper707/Telco-Customer-Churn/blob/main/Telco_Customer_Churn.ipynb)



