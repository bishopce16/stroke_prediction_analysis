# stroke_prediction_analysis

In this project, a dataset containing 11 clinical features for patients that classifies whether or not they have had a stroke will be analyzed. The purpose of this project is to derive insight on characteristics and statistics regarding these patients and to see which factors influence whether or not a patient has had a stroke. 

---

## Group Members: 

Caitlin Bishop,
Alex Borden,
Andrew Carlson,
Brandon Castro

## Resources:

Data Source: The healthcare-dataset-stroke-data.csv from the [Kaggle Website](https://www.kaggle.com/datasets/fedesoriano/stroke-prediction-dataset?resource=download), credit to the author of the dataset fedesoriano.

Tools: Jupyter Notebook, Visual Studio Code, Python, Pandas, Numpy, MatPlotLib, Supervised Machine Learning Binary Classification Model, PostgreSQL, and Tableau.<br/>

# Technologies Used

### Data Cleaning and Analysis
Jupyter Notebook, along with Python's Pandas, Numpy and Matplotlib libraries will be used to clean the data and perform an exploratory/statistical analysis. 

### Database Storage
Data will be stored in a PostgreSQL database, and a Tableau dashboard will be created to visualize and present data/findings.

### Machine Learning
Python's scikit-learn will be employed to create a supervised machine learning binary classification model using the stroke patient data csv file. The goal is to create a model that is able to determine whether or not a patient is at a high risk of having a stroke based on various characteristics of the patient.

### Dashboard
Our dashboard will hosted on Tableau Public software, for a fully functioning and interactive dashboard. 

# Segment 1:

## Presentation 

* Selected topic
    * Stroke Prediction Anaylsis

* Reason they selected the topic
    * Needs answer

* Description of the source of data
    * The data contains 11 clinical features regarding medical patients including patient id, gender, age, hypertension status,	heart disease status, marital status, employment type, residence type, average glucose levels, body mass index(BMI), and smoking status. There is also a target vector that states whether or not a given patient has ahd a stroke.

* Questions they hope to answer with the data
    * Can the classification model determine whether or not a patient could have a stroke?
    * What factors (features) influence whether or not a stroke would occur the most?

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
The csv dataset will be read in as a Pandas dataframe which will be used for the machine learning model. The output for the model will be the prediction of whether or not the patient had a stroke. As mentioned above, the goal is to create a model that is able to determine whether or not a patient is at a high risk of having a stroke based on the features of the patient in the dataset. If the output for a patient states that they had a stroke, then the patient may have a high risk of having a stroke according to their features.<br/>

### Questions to keep in mind as the machine learning model is developed:<br/>

* Which model did you choose and why?<br/>

    **Scikit-learn's gradient boosting** binary classification model was chosen. This is a supervised machine learning technique that is based on ensemble learning. This model was chosen since it is a powerful technique to build predictive models for classification. The "boosting" ensemble learning method has to do with how the decision trees (weak learners) are sequentially built, converting the weak learners into strong learners, while reducing variance in the process. This model is also useful for reducing bias.<br/>

* How are you training your model?<br/>

    * The following steps will be taken to train model:<br/>

        **1)** The preprocessed data is split into a training and testing dataset using **scikit-learn**'s functionality.<br/>

        **2)** The data will be scaled to have a mean of 0 and standard deviation of 1 using **sci-kit learn**'s functionality.<br/>

        **3)** An instance of **scikit-learn's gradient boosting** model will be created and trained with the training features and target.<br/>

* What is the model's accuracy?<br/>

    To improve the model's accuracy, the following tests may be done:<br/>

    * Testing different learning rates for the gradient boosting model.<br/>

    * Testing different numbers of boosting stages (n_estimators).<br/>
    * Altering other parameters of the model.<br/>

    * Altering the dataset by binning features or removing features.<br/>

* How does this model work?<br/>

    This is a supervised machine learning technique that is based on ensemble learning. The "boosting" ensemble learning method has to do with how the decision trees (weak learners) are sequentially built, converting the weak learners into stronger learners in each iteration, while reducing variance in the process.<br/>