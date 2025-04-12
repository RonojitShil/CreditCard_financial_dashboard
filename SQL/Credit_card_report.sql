-- Creating table for credit card details
CREATE TABLE cc_details (
	Client_Num INT,
	Card_Category VARCHAR(20),
	Annual_Fees	INT,
	Activation_30_Days INT,
	Customer_Acq_Cost INT,
	Week_Start_Date	DATE,
	Week_Num VARCHAR(20),
	Qtr	VARCHAR(10),
	current_year INT,
	Credit_Limit DECIMAL(10,2),
	Total_Revolving_Bal	INT,
	Total_Trans_Amt	INT,
	Total_Trans_Vol	INT, 
	Avg_Utilization_Ratio	DECIMAL(10,3),
	Use_Chip VARCHAR(10),
	Exp_Type VARCHAR(50),
	Interest_Earned	DECIMAL(10,3), 
	Delinquent_Acc VARCHAR(5)
);

SELECT * FROM cc_details;

-- Creating table for customer details.
CREATE TABLE cust_details (
	Client_Num INT,
	Customer_Age INT,
	Gender	VARCHAR(5),
	Dependent_Count	INT,
	Education_Level	VARCHAR(50),
	Marital_Status VARCHAR(20),
	state_cd VARCHAR(50),
	Zipcode	VARCHAR(20),
	Car_Owner VARCHAR(5),
	House_Owner	VARCHAR(5),
	Personal_loan VARCHAR(5),
	contact	VARCHAR(50),
	Customer_Job	VARCHAR(50),
	Income	INT,
	Cust_Satisfaction_Score	INT
);

-- Inserting data into credit card details (cc_details) table.
COPY cc_details (Client_Num	,Card_Category,	Annual_Fees,Activation_30_Days,Customer_Acq_Cost,Week_Start_Date,Week_Num, Qtr, current_year,Credit_Limit,Total_Revolving_Bal,Total_Trans_Amt, Total_Trans_Vol, Avg_Utilization_Ratio, Use_Chip, Exp_Type, Interest_Earned, Delinquent_Acc
)
FROM 'C:\Users\Ranjeet__PC\OneDrive\Desktop\Credit_Card_Financial_Dashboard-main\Credit_Card_Financial_Dashboard-main\credit_card.csv'
DELIMITER ','
CSV HEADER;

-- Adding more data into credit card details (cc_details) table for next week.
COPY cc_details (Client_Num	,Card_Category,	Annual_Fees,Activation_30_Days,Customer_Acq_Cost,Week_Start_Date,Week_Num, Qtr, current_year,Credit_Limit,Total_Revolving_Bal,Total_Trans_Amt, Total_Trans_Vol, Avg_Utilization_Ratio, Use_Chip, Exp_Type, Interest_Earned, Delinquent_Acc
)
FROM 'C:\Users\Ranjeet__PC\OneDrive\Desktop\Credit_Card_Financial_Dashboard-main\Credit_Card_Financial_Dashboard-main\cc_add.csv'
DELIMITER ','
CSV HEADER;

-- Inserting data into customer details table
SELECT * FROM CUST_DETAILS;

COPY cust_details (Client_Num,Customer_Age,Gender,Dependent_Count,Education_Level,Marital_Status,state_cd,Zipcode,Car_Owner,House_Owner,Personal_loan,contact,Customer_Job,Income,Cust_Satisfaction_Score
)
FROM 'C:\Users\Ranjeet__PC\OneDrive\Desktop\Credit_Card_Financial_Dashboard-main\Credit_Card_Financial_Dashboard-main\customer.csv'
DELIMITER ','
CSV HEADER;

-- Adding more data into customer (cust_details) table for next week.
COPY cust_details (Client_Num,Customer_Age,Gender,Dependent_Count,Education_Level,Marital_Status,state_cd,Zipcode,Car_Owner,House_Owner,Personal_loan,contact,Customer_Job,Income,Cust_Satisfaction_Score
)
FROM 'C:\Users\Ranjeet__PC\OneDrive\Desktop\Credit_Card_Financial_Dashboard-main\Credit_Card_Financial_Dashboard-main\cust_add.csv'
DELIMITER','
CSV HEADER;	

