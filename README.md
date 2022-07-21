# GTA Housing Market Price Prediction

### Selected topic
Greater Toronto Area (GTA) housing market prices.

### Reasons for selected topic
We have selected this topic because the Canadian housing market trends have skyrocketed over the past 5 years. In order to understand how the market performs, especially in the GTA area, where the density of the population is extremely big, we would like to discover hidden trends in housing price estimations based on the houses' location, number of bedrooms and bathrooms included, type of dwelling, and previously recorded sale prices.

### Source data acquired for the project
The source data was acquired by our team with the help of a [Pandas scraping tool](https://github.com/maxwellbade/zillow_scrape_python) created by maxwellbade. The source dataset was taken from the current house listings on Zillow, and included a number of features (specifically, location, number of bedrooms and bathrooms included, type of dwelling, and previously recorded sale prices) for the market across 5 big cities in the GTA area (i.e., Toronto, Brampton, Mississauga, Vaughan, and Markham). The original dataset collected consisted of 2400 entries, which, upon visual examination, did not appear to have a massive amount of missing data. The data was collected specifically for the purpose of this analysis, thus it should be considered current as of July 13th, 2022.

### Questions hoped to be answered with the data
Based on the input features, we would like to predict the price estimates for other potential houses in the examined GTA area.
Additionally, we would like to examine the following secondary questions:
1. Which home types are the most popular among buyers?
2. What is the geographical distribution of the selling houses currently on the market?
3. What are some of the most prominent correlations amongs the factors that contribute to the house's price?

### Data Exploration & Analysis
The original dataset was first visually examined for any major issues, such as massive amounts of missing data points. Afterwards, the dataset was loaded in the Jupyter Notebook environment for furher, more in-depth analysis. Firstly, the dataset headers were renamed to be more informative and accessible. Then, the dataset was checked for duplicate values, none of which were detected, as expected. Then, individual feature columns (specifically, the city, bedrooms, bathrooms, home type, and price) were examined for oultiers and / or underrepresented categories. Following this examination, each category was cleaned of a number of outliers, respectively (3 for the city, 90 for bedrooms, 79 for bathrooms, 15 for home type, and 9 for price). Additionally, entries which did not contain the latitude and longitude values were also removed from the final dataset, leaving us with a total of 1851 entries for the machine learning algorithm. Each category's means were examined following the analysis to ensure that no more outliers are present and that most categories are well-balanced against each other. Once confirmed, the categorical features intended for use in the machine learning algorithm were recoded to dummy variables.

## Communication protocols
Collaborative work meetings during regularly scheduled class time, as well as through slack messaging and zoom calls on an as-needed basis.

## Technologies, languages, tools, and algorithms used
For the data collection and cleaning:
  * Jupyter Notebook / Pandas
Creating database:
  * PgAdmin / PostgreSQL
Connecting to database:
  * Psycogn2 / SQLAlchemy
Machine Learning:
  * Jupyter Notebook / Pandas
  * Imbalanced-learn / Scikit-Learn / Pycaret
  * Random Forest Regressor
Dashboard:
  * Tableau
Presentation:
  * Google Slides
  
## Results of Analysis
xxx

## Future Recommendations
xxx

## Project Outline
xxx

## Machine learning model

### Model Choice

## Initial Model Choice
xxx

## Final Model Decision
xxx

### Data Preprocessing
xxx

### Preliminary Feature Engineering & Selection
xxx

### Training / Testing Split
xxx

### Results and Accuracy Score

## Database
using SQL as storage database

## Dashboard
The interactive analysis dashboard can be found [here]() (currently no working link, WIP).

## Google Slides Presentation
The presentation for the current project can be found [here](https://docs.google.com/presentation/d/1mjovAs0qO8CtyvKc6Q1dIVrJHnOzxK-rPxAUkTT5raQ/edit#slide=id.p).
