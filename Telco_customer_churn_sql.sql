#Checking for NULL Values.

SELECT * FROM telco.telco_churn where coalesce(customerID, gender, SeniorCitizen, Partner, 
Dependents, tenure, PhoneService, MultipleLines, InternetService, OnlineSecurity, 
OnlineBackup, DeviceProtection, TechSupport, StreamingTV, StreamingMovies, Contract, 
PaperlessBilling, PaymentMethod, MonthlyCharges, TotalCharges, Churn) is null;

## Implies No Null Values present in Dataset.


select * from telco.telco_churn;

#Checking Data Types of MonthlyCharges and TotalCharges
desc telco.telco_churn; 
 
#Checking for duplicates
select customerID,count(*) from telco.telco_churn group by customerID having count(*)>1;
## No duplicates


#Churn Rate

SELECT Churn, ((COUNT(*) * 100.0 )/ (SELECT COUNT(*) FROM telco.telco_churn)) AS Churn_Percentage
FROM telco.telco_churn
GROUP BY Churn;

##Almost 1/4 of the customer base has churned.

SELECT Contract, Churn, COUNT(*) AS Total
FROM telco.telco_churn
GROUP BY Contract, Churn
ORDER BY Contract, Churn;

##Month-to-month Contacts have the highest churn

Select Churn, Sum(TotalCharges)*100/(select sum(TotalCharges) from telco.telco_churn) as TotalCharge_distribution from telco.telco_churn group by Churn; 
#Total Charge Distribtuion is mostly in the not-churned set of customers.

SELECT Churn, SUM(TotalCharges) AS Total_Revenue
FROM telco.telco_churn
GROUP BY Churn;

##Almost 28Lakh is lost in revenue due to Churn.


#Customers most likely to churn
SELECT Churn, 
    CASE 
        WHEN tenure < 12 THEN 'High Churn Risk'
        WHEN tenure BETWEEN 12 AND 48 THEN 'Medium Churn Risk'
        ELSE 'Low Churn Risk'
    END AS churn_category,
    COUNT(*) AS customer_count
FROM telco.telco_churn
GROUP BY churn_category,Churn order by churn_category desc,Churn;

## Most of the customers are in Medium Churn Risk so they must be taken care of

#Lets analyze the revenue of each category.
SELECT Churn, 
    CASE 
        WHEN tenure < 12 THEN 'High Churn Risk'
        WHEN tenure BETWEEN 12 AND 48 THEN 'Medium Churn Risk'
        ELSE 'Low Churn Risk'
    END AS churn_category,
    ((Sum(TotalCharges) *100)/(select sum(TotalCharges) from telco.telco_churn)) as Revenue
FROM telco.telco_churn
GROUP BY churn_category,Churn order by churn_category desc,Churn;
##Most of the revenue comes from low churn risk group.

#Lets see how much Churned customers contribute who are high risk
SELECT
    CASE 
        WHEN tenure < 12 THEN 'High Churn Risk'
        WHEN tenure BETWEEN 12 AND 48 THEN 'Medium Churn Risk'
        ELSE 'Low Churn Risk'
    END AS churn_category,
    sum(TotalCharges) as Revenue
FROM telco.telco_churn
GROUP BY churn_category having churn_category="High Churn Risk";

##Around 5Lakh is contributed by the High Churn risk Group.

#Lets look at how much Churn is there according to PaymentMEthod
select PaymentMethod,Churn,count(PaymentMethod) from telco.telco_churn group by Churn,PaymentMethod;

##Most of the Churn is present when Payment method is Electronic Check


#Check if High total Charges leads to churn
select 
CASE
WHEN TotalCharges<500 THEN "Low Charges"
WHEN TotalCharges Between 500 and 1000 THEN "Medium Charges"
ELSE "High Charges" end as charge_Category,count(Churn)*100/(select count(Churn) from telco.telco_churn) as churn_percent  from telco.telco_churn GROUP BY charge_Category; 

##So, it is observed that most of the churn is due to high TotalCharges

select * from telco.telco_churn;

