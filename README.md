#### 888Team7
Predicting clients repayment ability

### Data Cleaning and Feature Engineering  
Our predicting data is from https://www.kaggle.com/c/home-credit-default-risk/data

1. Application_Train is our main data.
In DataCleaningInR(Dummy.csv).Rmd we clean the application_train data, output as dummy.csv.

2. Feature engineering of POS_CASH_balance data is in POS_CASH_analysis.R, output as df_POS_CASH.csv.

3. Feature engineering of installments_payments data was done in big query, SQL code can be found in Final_Copy_of_Data_Merging_&_Modeling.ipyb. 

4. Feature engineering of credit_card_balance data is in feature_credit_card_balance.R, output as cc_card_data.csv.

5. Feature engineering of Bureau data was done in big query, SQL code can be found in Final_Copy_of_Data_Merging_&_Modeling.ipyb. 

6. Feature engineering of previous_application data is in previous_application_clean.R, output as previous_application.csv.

Data we mention above can be found in 
https://drive.google.com/drive/folders/1_NViGqYqSFsY7XOPH8e57m4kU8lETiMk?usp=sharing

### Data Merging & Modeling & Result

See in Final_Copy_of_Data_Merging_&_Modeling.ipyb. 
Or Final_Copy_of_Data_Merging_&_Modeling.pdf. 
