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

Python Packages used: pandas, numpy, matplotlib, seaborn, statsmodels, pmdarima, and sklearn

***Platform***: 
All members of this project used Mac as their platform. 

### Section 2: Documentation Map 
INSERT REPO TREE IMAGE HERE 

### Section 3: Reproduction Steps  

##### **1. Set Up the Environment and Load Dataset**  
- Within the SCRIPTS folder, locate 'data_analysis.ipynb' to perform the analysis (the following instructions are performed with this script).
- Install necessary Python libraries: pandas, numpy, matplotlib, seaborn, statsmodels, pmdarima, and sklearn.
- The original data set can be downloaded from the UN Sustainable Goals Website: [https://www.kaggle.com/datasets/cammyc/nfl-twitter-sentiment-analysis/data](https://unstats-undesa.opendata.arcgis.com/datasets/undesa::indicator-3-5-2-alcohol-consumption-per-capita-aged-15-years-and-older-within-a-calendar-year-litres-of-pure-alcohol/about). The dataset is called **Alcohol consumption per capita (aged 15 years and older) within a calendar year (litres of pure alcohol)**.
- To conduct the analysis, you will want to use a cleaned version of the dataset. Within the DATA folder, locate the 'long_dat.csv' dataset. This is the dataset that will be used to conduct the analysis. Load the dataset into your environment. 
- Sort data by continent and year to ensure correct time series order.  

##### **2. Loop Through Each Continent**  
   - Extracts time series data for each continent.  
   - Splits the data into training (≤2015) and testing (2019).  

##### **3. Check Stationarity & Select ARIMA Model**  
   - Performs an Augmented Dickey-Fuller (ADF) test to check if the time series is stationary.  
   - Uses `auto_arima()` to determine the best ARIMA model parameters based on AIC.  

##### **4. Fit and Forecast**  
   - Fits the selected ARIMA model using training data.  
   - Forecasts alcohol consumption for 2019.  

##### **5. Store and Analyze Results**  
   - Saves actual vs. predicted values, model order, residuals, AIC, Ljung-Box test results, and stationarity p-values.  
   - Generates diagnostic plots:  
     - Time series plot with actual and predicted values.  
     - Q-Q plot to assess residual normality.  

##### **6. Evaluate Model Performance**  
   - Computes Mean Absolute Error (MAE) and Root Mean Squared Error (RMSE) for each continent.  
   - Averages performance metrics across all continents to determine success.  
   - If average MAE is ≤0.5, the model is considered successful.
