# Stroke Prediction Analysis

In this project, a dataset containing 11 clinical features for patients that classifies whether or not they have had a stroke will be analyzed. The purpose of this project is to derive insight on characteristics and statistics regarding these patients and to see which factors influence whether or not a patient has had a stroke. 

---

## Group Members 

Caitlin Bishop,
Alex Borden,
Andrew Carlson,
Brandon Castro

## Resources

Data Source: The healthcare-dataset-stroke-data.csv from the [Kaggle Website](https://www.kaggle.com/datasets/fedesoriano/stroke-prediction-dataset?resource=download), credit to the author of the dataset fedesoriano.

Tools: Jupyter Notebook, Visual Studio Code, Python, Pandas, Numpy, MatPlotLib, Supervised Machine Learning Binary Classification Model, PostgreSQL, and Tableau.<br/>

## Technologies Used

### Data Cleaning and Analysis
Jupyter Notebook, along with Python's Pandas, Numpy and Matplotlib libraries will be used to clean the data and perform an exploratory/statistical analysis. 

### Database Storage
Data will be stored in a PostgreSQL database, and a Tableau dashboard will be created to visualize and present data/findings.

### Machine Learning
Python's scikit-learn will be employed to create a supervised machine learning binary classification model using the stroke patient data csv file. The goal is to create a model that is able to determine whether or not a patient is at a high risk of having a stroke based on various characteristics of the patient.

### Dashboard
Our dashboard will be hosted on Tableau Public software, for a fully functioning and interactive dashboard. 

[Stroke Prediction Analysis Dashboard Link](https://public.tableau.com/views/StrokePredictionAnalysis_16668813805820/GenderAge?:language=en-US&:display_count=n&:origin=viz_share_link)

### **Roles:** 



* Caitlin Bishop: GitHub/Data Cleaning
* Alex Borden: Technology/Dashboard
* Andrew Carlson: Machine Learning Model 
* Brandon Castro: SQL-based Database


# Segment 1


## Presentation

[Link to Presentation on Google Slides](https://docs.google.com/presentation/d/1cDEaOqquFxIjPL7FS63isOqBU7swg3fR8Z7BzpkdH48/edit?usp=sharing)

* Selected topic
    * Stroke Prediction Anaylsis

* Reason they selected the topic
    * Stroke predection was the topic chosen because of our common background/interest in the healthcare field. 

* Description of the source of data
    * The data contains 11 clinical features regarding medical patients including patient id, gender, age, hypertension status,	heart disease status, marital status, employment type, residence type, average glucose levels, body mass index(BMI), and smoking status. There is also a target vector that states whether or not a given patient has had a stroke.

* Questions they hope to answer with the data
    * Can the classification model determine whether or not a patient could have a stroke?
    * What factors influence whether or not a stroke would occur the most?
    * Through our analysis, can we find who is most susceptible to getting a stroke? 

---

## GitHub Repository 

* README.md
* Description of the communication protocols

---

## Database Integration 
Sample data that mimics the expected final database structure or schema. <br/>
SQL steps:
1.	Parse main csv dataframe into 3+ smaller dataframes
2.	use the Pandas to_csv() method to export new dataframes into csv files.
3.	import all csv's into pgAdmin
4.	assign primary and foreign keys to columns for each table.

---

## Machine Learning Model
The csv dataset will be read in as a Pandas dataframe and will be used for the machine learning model. The output for the model will be the prediction of whether or not the patient had a stroke. As mentioned above, the goal is to create a model that is able to determine whether or not a patient is at a high risk of having a stroke based on the features of the patient in the dataset. If the output for a patient states that they had a stroke, then the patient may have a high risk of having a stroke according to their features.<br/>


# Segment 2


## Machine Learning Model

See the [gradient_boosting_model.ipynb](https://github.com/bishopce16/stroke_prediction_analysis/blob/main/Machine_Learning/gradient_boosting_model.ipynb) file in the [machine_learning](https://github.com/bishopce16/stroke_prediction_analysis/tree/main/Machine_Learning) folder for a description of data preprocessing, feature engineering, feature selection, data splitting for training/testing of model, and gradient boosting model creation.  
    
## Dashboard 

We will be utilizing Tableau Public to create a story based dashboard in combination with an interactive dashboard. 

Here is a sneak peak of the story points we will using inside Tableau. 

### BMI Calculator 

<img src="https://github.com/bishopce16/stroke_prediction_analysis/blob/main/images/BMI%20%26%20Glucose%20Calculator%20.png"  width="60%" height="30%">

### Age vs Stroke

<img src="https://github.com/bishopce16/stroke_prediction_analysis/blob/main/images/Age%20vs%20Stroke.png"  width="60%" height="30%">

The interactive dashboard will include multiple filters for identifying trends in the stroke dataset. 
