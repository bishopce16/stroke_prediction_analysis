CREATE TABLE stroke_analysis (
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
	
SELECT * FROM stroke_analysis;

CREATE TABLE demographic_features 
	AS (SELECT id, gender, age, ever_married, work_type, residence_type, stroke
	   		FROM stroke_analysis
);
 
SELECT * FROM demographic_features;


CREATE TABLE biological_features 
	AS (SELECT id, gender, age, hypertension, heart_disease, avg_glucose_level, smoking_status, stroke
	   		FROM stroke_analysis
);

SELECT * FROM biological_features;

ALTER TABLE demographic_features
    ADD FOREIGN KEY (stroke_id)
    REFERENCES stroke_analysis.id (index)
    NOT VALID;


ALTER TABLE biological_features
    ADD FOREIGN KEY (stroke_id)
    REFERENCES stroke_analysis.id (index)
    NOT VALID;
