### DS 4002: Exploratory Data Analysis & Pre-processing
setwd('/Users/jules/Desktop/')
dataset <- read.csv('ALC_DAT.csv',header=T)
head(dataset)

# Descriptive Statistics
N <- nrow(dataset) # 624 observations
colnames(dataset) # 62 variables

## RQ1: What is the range of time our data encompasses?
# Available Years: [2000, 2005, 2010, 2015, 2019] --> remove other years
dataset <- dataset[, -c(38:41,43:46,48:51,53:55,57)]


## RQ2: Which geographic areas have the most alcohol consumption data over time?
# View Countries 
country_count <- table(dataset$Geographic.Area.Name)
country_count

# View Geographic Regions
region_count <- table(dataset$Parent.Geographic.Area.Name)
region_count

# REGIONS:
    # 1. Oceania (oceania, austrailia and new zealand)
    # 2. Europe (Eastern Europe, Northern Eur., Southern Eur., Western Eur.)
    # 3. North America (Northern America, Central America)
    # 4. Caribbean
    # 5. South America (South America)
    # 6. Africa (Western Africa, Eastern Afr., Middle Afr., Northern Afr., Southern afr.)
    # 7. Asia (Central A., Southern A., South-Eastern A., Southern A. (excluding India), Western A., Eastern A.)

# Regions w/ Top Counts:
    # Oceania (exc. Australia and New Zealand)
    # Eastern Africa: 51
    # Western Africa: 48
    # Southern Europe: 39
    # Caribbean: 39
    # South America: 36




