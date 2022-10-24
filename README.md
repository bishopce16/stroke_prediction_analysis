# stroke_prediction_analysis

## Group Members: 

Caitlin Bishop,
Alex Borden,
Andrew Carlson,
Brandon Castro

---

## Resources:

Data Source: The healthcare-dataset-stroke-data.csv from the [Kaggle Website](https://www.kaggle.com/datasets/fedesoriano/stroke-prediction-dataset?resource=download)

Tools: Jupyter Notebook, Visual Studio Code, Python, Pandas, Numpy, Supervicsed Machine Learning, Classification Model, PostgreSQL, 

---

## Technologies Used

## Data Cleaning and Analysis

Pythong's pandas library will be used to clean the data and perform an exploratory analysis. 

## Database Storage
Using PostgreSQL steps include:
1.	Parse main csv dataframe into 3+ smaller dataframes
2.	use the to_csv() method to export new dataframes into csv files.
3.	import all csv's into pgAdmin
4.	assign primary and foreign keys to columns for each table.

## Machine Learning
SciKitLearn is the ML library we'll be using to create a classification model with gradient booster. Our training and testing setup is _?_. using standardization to improves our model (making the mean ~ 0 and stdev ~ 1).

## Dashboard
Tableau Public?

---

## Segment 1:

## Presentation 

* Selected topic
    * Stroke Prediction Anaylsis

* Reason they selected the topic

* Description of the source of data

* Questions they hope to answer with the data
    * Can the classification model determine whether or not a patient could have a stroke?
    * What factors (features) influence whether or not a stroke would occur?

---

## GitHub Repository 

* README.md
* Description of the communication protocols

## Database Integration 
Sample data that mimics the expected final database structure or schema
Draft machine learning model is connected to the provisional database
SQL steps:
1.	Parse main csv dataframe into 3+ smaller dataframes
2.	use the to_csv() method to export new dataframes into csv files.
3.	import all csv's into pgAdmin
4.	assign primary and foreign keys to columns for each table.

## Machine Learning Model

Takes in data from the provisional database
Outputs label for input data
Keep the following questions in mind as the machine learning model is developed:
* Which model did you choose and why?
* How are you training your model?
* What is the model's accuracy?
* How does this model work?
