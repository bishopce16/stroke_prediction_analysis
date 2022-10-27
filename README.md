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

# Segment 1

### **Roles:** 

* Caitlin Bishop: Square
* Alex Borden: X
* Andrew Carlson: Triangle 
* Brandon Castro: Circle

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
The csv dataset will be read in as a Pandas dataframe and will be used for the machine learning model. The output for the model will be the prediction of whether or not the patient had a stroke. As mentioned above, the goal is to create a model that is able to determine whether or not a patient is at a high risk of having a stroke based on the features of the patient in the dataset. If the output for a patient states that they had a stroke, then the patient may have a high risk of having a stroke according to their features.<br/>

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

    * Oversampling the target vector using imbalanced-learn's RandomOverSampler since there are much more non-stroke patients in dataset than stroke patients.<br/>

    * Testing different learning rates for the gradient boosting model.<br/>

    * Testing different numbers of boosting stages (n_estimators).<br/>
    * Altering other parameters of the model.<br/>

    * Altering the dataset by binning features or removing features.<br/>

* How does this model work?<br/>

    This is a supervised machine learning technique that is based on ensemble learning. The "boosting" ensemble learning method has to do with how the decision trees (weak learners) are sequentially built, converting the weak learners into stronger learners in each iteration, while reducing variance in the process.<br/>

# Segment 2

### **Roles:** 

* Caitlin Bishop: Triangle
* Alex Borden: X
* Andrew Carlson: Square 
* Brandon Castro: Circle

## Machine Learning Model

* **Description of preliminary data preprocessing:**<br/>

    * Steps taken:<br/>

        1) csv dataset was read in a Pandas dataframe.
        2) "id" column was dropped since machine learning model cannot learn anything valuable from this.
        3) Categorical columns were converted to binary numerical columns using the Pandas get_dummies() function. 
        4) Columns that were of the "float" data type were converted into integers.
        5) Rows with null values were removed.
        6) A csv containing data prepared for machine learning model was exported to resources file.<br/><br/>
        
* **Description of preliminary feature engineering and preliminary feature selection, including the decision-making process:**<br/>

    As stated previously, any unnecessary features were removed so that the model was not inaccurately skewed. Categorical features were also converted to numerical data and spread out into binary columns using the Pandas get_dummies() function<br/> 
    
    The decision-making process was conducted as follows:<br/>

    1) Selecting features that contribute to a more accurate model and contains valuable information.
    2) Checking if categorical features have many unique values that can be binned (this was not the case since all categorical features had less than 10 unique values).
    3) Checking the datatype of each feature to see if any are not numerical, since the machine learning model requires numerical features as inputs.<br/><br/>

* **Description of how data was split into training and testing sets:**<br/>

    * Steps taken:<br/>

        1) An object for both features and target vector were created.
        2) sklearn's train_test_split function was used to separate the data into training and testing dataset with a split of 75% training data and 25% testing data. Stratification was applied so there was an equal ratio of the target categories in both training and testing data.
        3) Data was over-sampled using imbalanced-learn's RandomOverSampler since there was a discrepancy between the target categories i.e. patients that had a stroke made up only 4.3% of the dataset. 
        4) Data was scaled using sklearn's StandardScaler to give features a normalized statistical distribution since the machine learning model would behave better when working with all normalized data.<br/><br/>

* **Explanation of model choice, including limitations and benefits:**<br/>

    
    **Scikit-learn's gradient boosting** binary classification model was chosen. This is a supervised machine learning technique that is based on ensemble learning. This model was chosen since it is a powerful technique to build predictive models for classification.<br/> 
    
    The "boosting" ensemble learning method has to do with how the decision trees (weak learners) of features are sequentially built, converting the weak learners into strong learners, while reducing variance in the process. This model is also beneficial in that it reduces bias well.<br/> 

    One of the limitations of using the gradient boosting model is that it does not handle outliers as well as other models and it is prone to overfitting, so different parameters must be tested to create a reliable model.<br/>
