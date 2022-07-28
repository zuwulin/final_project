# GTA Housing Market Price Prediction

### Selected topic
Greater Toronto Area (GTA) housing market prices.

<p align="center">
  <img src="https://user-images.githubusercontent.com/99566803/180220246-70d87867-3b1f-4707-a625-f66a7a221f9f.png" />
</p>

### Reasons for selected topic
We have selected this topic because the Canadian housing market trends have skyrocketed over the past 5 years. In order to understand how the market performs, especially in the GTA area, where the density of the population is extremely big, we would like to discover hidden trends in housing price estimations based on the houses' location, number of bedrooms and bathrooms included, type of dwelling, and previously recorded sale prices.

### Source data acquired for the project
The source data was acquired by our team with the help of a [Pandas scraping tool](https://github.com/maxwellbade/zillow_scrape_python) created by maxwellbade. The source dataset was taken from the current house listings on Zillow, and included a number of features (specifically, location, number of bedrooms and bathrooms included, type of dwelling, latitude and longitude of the listing, and previously recorded sale prices) for the market across 5 big cities in the GTA area (i.e., Toronto, Brampton, Mississauga, Vaughan, and Markham). The original dataset collected consisted of 2400 entries, which, upon visual examination, did not appear to have a massive amount of missing data. The data was collected specifically for the purpose of this analysis, thus it should be considered current as of July 13th, 2022.

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

## Project Outline

<p align="center">
  <img src="https://user-images.githubusercontent.com/99566803/180226132-23340c4c-a9bf-4db2-9980-ac3c71da66e9.png" />
</p>

### Technologies, languages, tools, and algorithms used

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

## Machine learning model

### Model Choice

## Initial Model Choice
Original model choice was split between a simple linear regression and a decision tree linear regression. The simple linear regression was almost immediately taken off the list, as it did not behave correctly with multiple input variables, and because both the mean absolute error and the mean squared error values were too high to ever be justifiable. Similar situation occured for the decision tree model following our attempt to teach the model to predict the housing prices: both the absolute and squared error values were too high, and the R2 value equated to -0.87 (a strong negative correlation which could not have been correct).
Given that both of our initial models did not accomodate the source dataset, we decided to use Pycaret library to investiate which of all the available regression models would produce the most reliable results across the board. Using a simple "compare_models()" function, the results were as follows:
<p align="center">
  <img src="https://user-images.githubusercontent.com/99566803/180271333-d62241a7-7169-4c85-a4fa-511fc8861201.png" />
</p>

## Final Model Decision
As can be evident from the picture above, the best avenue for machine learning model appeared to be the Random Forest Regressor. With some additional tweaks and model fitting, the R2 score predictions were as high as 0.72, meaning that the trained model could've potentially be correct in its predictions about 72% of time (a pretty good result for a real-world scattered data). When the machine learning model was run outside of Pycaret, however, the final R2 value was 0.62 (or 62% hit accuracy).
<p align="center">
  <img src="https://user-images.githubusercontent.com/99566803/180272187-7bf9323f-7316-4e2e-b7a6-b202d8446aa3.png" />
</p>

### Model Benefits and Limitations
The benefits of this model included its ability to reduce overfitting, meaning that the overall chances of the model to find a statistical trend in unseen data is more plausible. The model is also good for working with both categorical and continuous values, both of which were present in our dataset (althought turned into dummy variables at some point). Additionally, one important point that made the Random Forest Regressor model viable and most fitting for our analysis was the fact that it did not require for the data to be normalized. This, considering the potential statistical price outliers, made the model a favourable choice for our project.

On the other hand, of course, the model came with its own drawback. One such drawback is that the model requires a lot of resources and processing power, as it created more decision trees than a regular decision tree model. The model is also known to take a considerably longer time to succeed in its predictions, although we did not encounter this problem ourselves, and is not particularly good at determining the statistical significance of individual variables on the outcome.

### Preliminary Feature Engineering & Selection
Originally, the features for analysis were arbitrarily agreed upon by the team members based on the common sense principle (i.e., we wanted the features to be representative of the real-life housing features that might impact the price). Features such as number of rooms, overall size of the house, location, view, garage availability, amenities (if talking about apartments), and year of built were all discussed as possible feature avenues.

The second step in feature engineering came from parameters available to be scraped on the Zillow website. The features taken out from real listings on the website were compared to the list of features that we were interested in, and thus the final feature set included features that met the following three requirements:
a) The features were discussed or mentioned during the prelimenary feature brainstorming session;
b) The features were included in the dataset scraped from the Zillow website;
c) The features in the dataset did not miss more than 10% of the total value count.

As such, a set of 7 features (6 input and 1 output feature) was selected to create and train the machine learning model: number of bedrooms, number of bathrooms, latitude, longitude, home type, city, and house price (target variable).

### Training / Testing Split
The data was split into training and testing conditions (i.e., data that is used to train the model, and data that is used by the model to render its own predictions). SciKit Learn python library was used to separate the data into training and testing pools, with the data being split 80/20, in accordance with the industry standard testing size.

<p align="center">
  <img src="https://user-images.githubusercontent.com/99566803/180269875-1bb377c5-858f-463f-b62a-f091df484c7a.png" />
</p>

### Results and Accuracy Score
As mentioned previously, the final R2 value was 0.62 (or 62% hit accuracy). As we performed a multivariate regression analysis, we were not able to produce a confusion matrix (as they are only fit for categorical analysis). However, based on our R2 scores, the model had a significantly relevant accuracy score in predicting the house pricing based on the trained variable set. It is worth noting, naturally, that a 62% prediction rate is not optimal, and, given more time and knowledge, we would like to increase this percentage to at least 80 (taking into consideration, again, that real-world data is messy, and it is hard to achieve a 100% prediction rate).

## Database
The database connected to the machine learning model was hosted on the pgAdmin 4 software using the SQL relational database. The tables hosted within the database were created in accordance with the following ERD guidelines:
<p align="center">
  <img src="https://user-images.githubusercontent.com/99566803/181617816-27c7f307-47df-4bbc-8778-52f9b9eda1a7.png" />
</p>

Additionally, below are the two snippets of the tables created in the GTA housing market database:
<p align="center">
  <img src="https://user-images.githubusercontent.com/99566803/181618192-380a2bdb-2f2f-4403-8ac8-a632ce5ffb6b.PNG" />
</p>

<p align="center">
  <img src="https://user-images.githubusercontent.com/99566803/181618525-1e3b7b2e-7efd-4252-ac15-96ae3007b1d1.PNG" />
</p>

## Dashboard
The interactive analysis dashboard can be found [here]() (currently no working link, WIP).

## Google Slides Presentation
The presentation for the current project can be found [here](https://docs.google.com/presentation/d/1mjovAs0qO8CtyvKc6Q1dIVrJHnOzxK-rPxAUkTT5raQ/edit#slide=id.p).
