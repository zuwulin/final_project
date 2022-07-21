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

### Initial Model Choice
Original model choice was split between a simple linear regression and a decision tree linear regression. The simple linear regression was almost immediately taken off the list, as it did not behave correctly with multiple input variables, and because both the mean absolute error and the mean squared error values were too high to ever be justifiable. Similar situation occured for the decision tree model following our attempt to teach the model to predict the housing prices: both the absolute and squared error values were too high, and the R2 value equated to -0.87 (a strong negative correlation which could not have been correct).
Given that both of our initial models did not accomodate the source dataset, we decided to use Pycaret library to investiate which of all the available regression models would produce the most reliable results across the board. Using a simple "compare_models()" function, the results were as follows:
<p align="center">
  <img src="https://user-images.githubusercontent.com/99566803/180271333-d62241a7-7169-4c85-a4fa-511fc8861201.png" />
</p>

### Final Model Decision
As can be evident from the picture above, the best avenue for machine learning model appeared to be the Random Forest Regressor. With some additional tweaks and model fitting, the R2 score predictions were as high as 0.72, meaning that the trained model could've potentially be correct in its predictions about 72% of time (a pretty good result for a real-world scattered data). When the machine learning model was run outside of Pycaret, however, the final R2 value was 0.62 (or 62% hit accuracy).
<p align="center">
  <img src="https://user-images.githubusercontent.com/99566803/180272187-7bf9323f-7316-4e2e-b7a6-b202d8446aa3.png" />
</p>

### Model Benefits and Limitations
xxx

### Data Preprocessing
xxx

### Preliminary Feature Engineering & Selection
xxx

### Training / Testing Split
The data was split into training and testing conditions (i.e., data that is used to train the model, and data that is used by the model to render its own predictions). SciKit Learn python library was used to separate the data into training and testing pools, with the data being split 80/20, in accordance with the industry standard testing size.

<p align="center">
  <img src="https://user-images.githubusercontent.com/99566803/180269875-1bb377c5-858f-463f-b62a-f091df484c7a.png" />
</p>

### Results and Accuracy Score


## Database
using SQL as storage database


## Dashboard
will most likely use tableau
map feature?
