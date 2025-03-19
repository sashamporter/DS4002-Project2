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

##### **1. Set Up the Environment**  
- Within the SCRIPTS folder, locate 'INSERT ANALYSIS SCRIPT NAME HERE' to perform the analysis (the following instructions are performed with this script).
- The original data set can be downloaded from the UN Sustainable Goals Website: [https://www.kaggle.com/datasets/cammyc/nfl-twitter-sentiment-analysis/data](https://unstats-undesa.opendata.arcgis.com/datasets/undesa::indicator-3-5-2-alcohol-consumption-per-capita-aged-15-years-and-older-within-a-calendar-year-litres-of-pure-alcohol/about). The dataset is called **Alcohol consumption per capita (aged 15 years and older) within a calendar year (litres of pure alcohol)**
- To conduct the analysis, you will want to use a cleaned version of the dataset. Within the DATA folder, locate the 'long_dat.csv' dataset. This is the dataset that will be used to conduct the analysis. 
- Install necessary Python libraries: LIST LIBRARIES HERE 

##### **2. Load the Dataset**  
- Ensure the dataset file (CSV) is in the working directory.  
- Load the 'long_dat.csv' dataset into your python environment. 

##### **3. Preprocess the Data** CHANGE
- Remove invalid entries, such as missing team names or incorrect sentiment labels.  
- Convert timestamps to a datetime objects for easier filtering.
  - Find the earliest and latest tweets within the dataset.
  - Create a histogram to see the frequency of tweets over time.
  - Create a dataframe of tweets occurring between Nov 29, 2024- Nov 30, 2024 called 'filtered_df'.
- Filter tweets posted up to three days before each team's game.  
  - Create a list of games from week 13 of the NFL season.
  - Create a dictionary.
  - Loop through original dataframe 'df' to assign each team a game result label:
    - **1** if the team won  
    - **0** if the team lost
  - Save into a new dataframe 'new_df', then convert into a csv file (cleaned data).

##### **4. Aggregate Pre-Game Sentiment**  CHANGE
-  Import the defaultdict class from the collections module in Python.
-  Createa dataframe for aggregated sentiments per team and map sentiment labels to numerical values:
   - Positive → +1
   - Neutral → 0
   - Negative → -1
- Obtain the average fan sentiment score per team.

##### **5. Merge with Game Results**  CHANGE
- Merge the computed average sentiment scores with the game results for each team using a for loop.
- View the aggregated data to ensure it contains the following variables: team, average_sentiment, and won (indicates team win/loss).

##### **6. Fit Logistic Regression Model**  CHANGE
- Use logistic regression to analyze the relationship between a team's pre-game sentiment and their game outcome.  
- Train the model using average sentiment scores as the independent variable and game outcomes as the dependent variable.  

##### **7. Statistical Significance Test (Wald Test)**  CHANGE
- Use the Wald test to determine if fan sentiment has a statistically significant effect on game outcomes.  
- Extract the p-value from the test.  
- If the p-value is less than 0.05, reject the null hypothesis, indicating a significant relationship.  

##### **8. Visualize Findings**  CHANGE
- Generate bar plots to compare the average sentiment for each team before their game and average sentiment overall by match outcomes.
- Optional: within 'sentiment_graphs.ipynb' in the SCRIPTS folder, create a histogram to visualize the overall distribution of sentiment scores.  

##### **9. Interpretation of Results**  CHANGE
- If the p-value is below 0.05, conclude that fan sentiment before a game is significantly related to the game’s outcome.  
- If the p-value is above 0.05, conclude that pre-game sentiment does not significantly predict game results. 
