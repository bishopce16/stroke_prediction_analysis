# stroke_prediction_analysis

In this project, an analysis of a dataset containing 11 clinical features for patients and classifies whether or not they have had a stroke. The purpose of this project is to derive insight on characteristics and statistics regarding these patients and to see which factors influence whether or not a patient has had a stroke. 

## Group Members: 

Caitlin Bishop,
Alex Borden,
Andrew Carlson,
Brandon Castro

---

## Resources:

Data Source: The healthcare-dataset-stroke-data.csv from the [Kaggle Website](https://www.kaggle.com/datasets/fedesoriano/stroke-prediction-dataset?resource=download), credit to the author of the dataset fedesoriano.

Tools: Jupyter Notebook, Visual Studio Code, Python, Pandas, Numpy, Supervised Machine Learning Binary Classification Model, PostgreSQL, and Tableau.

---

# Technologies Used

### Data Cleaning and Analysis
Jupyter Notebook, along with Python's Pandas, Numpy and Matplotlib libraries will be used to clean the data and perform an exploratory/statistical analysis. 

### Database Storage
Data will be stored in a PostgreSQL database, and a Tableau dashboard will be created to visualize and present data/findings.<br/>

Using PostgreSQL steps include:
1.	Parse main csv dataframe into 3+ smaller dataframes
2.	use the to_csv() method to export new dataframes into csv files.
3.	import all csv's into pgAdmin
4.	assign primary and foreign keys to columns for each table.

### Machine Learning
Python's scikit-learn will be employed to create a supervised machine learning binary classification model using the stroke patient data csv file. The goal is to create a model that is able to determine whether or not a patient is at a high risk of having a stroke based on various characteristics of the patient.

### Dashboard
Our dashboard will hosted on Tableau Public software, for a fully functioning and interactive dashboard. 

## Segment 1:

## Presentation 

* Selected topic
    * Stroke Prediction Anaylsis

* Reason they selected the topic
    * Needs answer

* Description of the source of data
    * The data contains 11 clinical features regarding medical patients including gender, age, hypertension status,	heart disease status, marital status, employment type, residence type, average glucose levels, body mass index(BMI), and smoking status.

* Questions they hope to answer with the data
    * Can the classification model determine whether or not a patient could have a stroke?
    * What factors (features) influence whether or not a stroke would occur the most?

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
