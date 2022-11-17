BEGIN;

CREATE TABLE Stroke_analysis (
	id INT PRIMARY KEY,
	gender VARCHAR(6),
	age NUMERIC,
	hypertension INT,
	heart_disease INT,
	ever_married VARCHAR(3), 
	work_type VARCHAR(20), 
	Residence_type VARCHAR(10), 
	avg_glucose_level NUMERIC, 
	bmi VARCHAR(10), 
	smoking_status VARCHAR(20), 
	stroke INT 
	);

CREATE TABLE Demographic_features (
	id INT PRIMARY KEY,
	gender VARCHAR(6),
	age NUMERIC,
	ever_married VARCHAR(3),
	work_type VARCHAR(20),
	residence_type VARCHAR(10),
	stroke INT 
	);
 
CREATE TABLE Biological_features (
	id INT PRIMARY KEY,
	gender VARCHAR(6),
	age NUMERIC,
	hypertension INT,
	heart_disease INT,
	avg_glucose_level NUMERIC,
	bmi VARCHAR(10),
	smoking_status VARCHAR(20),
	stroke INT
	);


ALTER TABLE Demographic_features
    ADD FOREIGN KEY (stroke_id)
    REFERENCES stroke_analysis.id (index)
    NOT VALID;


ALTER TABLE Biological_features
    ADD FOREIGN KEY (stroke_id)
    REFERENCES stroke_analysis.id (index)
    NOT VALID;



END;
