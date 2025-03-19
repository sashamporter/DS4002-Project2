# DS4002-Project2

## Repository Contents
This repository contains the following contents:
- ***SCRIPTS***: this folder contains all scripts used to clean our data, conduct our analysis, and generate visualizations.
- ***DATA***: this folder contains our initial dataset (original_dat.csv) that sparked our interest as well as all the data used to complete our project.
- ***OUTPUT***: this folder contains outputs produced from our analysis, such as tables and graphs. 

### Section 1: Software and platform section

***Software Used***:
For this project, we used python as the primary language for conducting our analysis and generating visualizations. We used R to conduct exploratory data analysis (EDA). Coding was completed through the resourses RStudio, Visual Studio Code, and Google Collab. 

***Packages***:
R Packages used: dplyr and ggplot2 

Python Packages used: 

***Platform***: 
All members of this project used Mac as their platform. 

### Section 2: Documentation Map 
INSERT REPO TREE IMAGE HERE 

### Section 3: Reproduction Steps  

##### **1. Set Up the Environment and Load Dataset**  
- Within the SCRIPTS folder, locate 'INSERT ANALYSIS SCRIPT NAME HERE' to perform the analysis (the following instructions are performed with this script).
- The original data set can be downloaded from the UN Sustainable Goals Website: [https://www.kaggle.com/datasets/cammyc/nfl-twitter-sentiment-analysis/data](https://unstats-undesa.opendata.arcgis.com/datasets/undesa::indicator-3-5-2-alcohol-consumption-per-capita-aged-15-years-and-older-within-a-calendar-year-litres-of-pure-alcohol/about). The dataset is called **Alcohol consumption per capita (aged 15 years and older) within a calendar year (litres of pure alcohol)**
- To conduct the analysis, you will want to use a cleaned version of the dataset. Within the DATA folder, locate the 'long_dat.csv' dataset. This is the dataset that will be used to conduct the analysis. 
- Install necessary Python libraries: LIST LIBRARIES HERE 

##### **2. Preprocess Data**:  
   - Convert date columns to a proper datetime format.  
   - Filter data to include only the selected continent (Africa, Asia, or Europe).  
   - Handle missing values by forward-filling or removing incomplete records.  
   - Aggregate data if necessary (e.g., by year or month).  

##### **3. Visualize Trends**:  
   - Plot alcohol consumption over time to identify trends, seasonality, and potential outliers.  
   - Use decomposition methods to separate trend and seasonal components if applicable.  

##### **4. Train Forecasting Model**:  
   - Split the data into training and testing sets.  
   - Select an appropriate time series forecasting model (e.g., ARIMA, Exponential Smoothing, or LSTM).  
   - Tune hyperparameters and validate model performance using cross-validation.  

##### **5. Generate Predictions**:  
   - Apply the trained model to predict future alcohol consumption.  
   - Compare predictions with test data and compute error metrics (e.g., RMSE, MAE).  

##### **6. Interpret Results**:  
   - Assess model accuracy by comparing predicted vs. actual values.  
   - Identify key patterns or anomalies in the forecast.  
   - Discuss potential factors influencing trends (e.g., economic conditions, policy changes).  
