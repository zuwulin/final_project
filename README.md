# final_project

## Selected topic
Greater Toronto Area (GTA) housing market prices.

### Reasons for selected topic
e.g., Canadian housing market have skyrocketed over the past years, leaving most of the low- and middle-class families with barely no chances of acquiring any sort of property (an effect seen for both the renting and buying customers). Because of that, most Canadians the housing market to be extremely innacessible.

### Source data acquired for the project
how? using a pandas scraping tool, we collected the information on the current houses on the market in the GTA (specifically, in the city of Toronto, Brampton, Mississauga, Vaughan, and Markham).
quality? almost no missing values, data is accurate in terms of being up to date and relevancy (still need exploratory testing on the data)
size? 2400 entries pre-cleaning
recency? current and relevant as of July 13th
what factors (columns) are we using?

### Questions hoped to be answered with the data
We would like to expore which housing features predict the estimated housing prices, as well as find a continuous pattern in housing location's association with the price, to estimate whether the housing market is, indeed, an innacessible hellscape, or if there is some hope for prospective buyers.

### Data Exploration & Analysis
The original dataset was first visually examined for any major issues, such as massive amounts of missing data points. Afterwards, the dataset was loaded in the Jupyter Notebook environment for furher, more in-depth analysis. Firstly, the dataset headers were renamed to be more informative and accessible. Then, the dataset was checked for duplicate values, none of which were detected, as expected. Then, individual feature columns (specifically, the city, bedrooms, bathrooms, home type, and price) were examined for oultiers and / or underrepresented categories. Following this examination, each category was cleaned of a number of outliers, respectively (3 for the city, 90 for bedrooms, 79 for bathrooms, 15 for home type, and 9 for price). Additionally, entries which did not contain the latitude and longitude values were also removed from the final dataset, leaving us with a total of 1851 entries for the machine learning algorithm. Each category's means were examined following the analysis to ensure that no more outliers are present and that most categories are well-balanced against each other. Once confirmed, the categorical features intended for use in the machine learning algorithm were recoded to dummy variables.

## Communication protocols
Collaborative work meetings during regularly scheduled class time, as well as unrestricted slack messaging and zoom calls on an as-needed basis.

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
will most likely use tableau
map feature?
