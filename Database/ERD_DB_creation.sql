
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

ALTER TABLE public.stroke_data
    ADD FOREIGN KEY (gender)
    REFERENCES public.gender (index)
    NOT VALID;


ALTER TABLE public.stroke_data
    ADD FOREIGN KEY (heart_disease)
    REFERENCES public.heart_disease (index)
    NOT VALID;


ALTER TABLE public.stroke_data
    ADD FOREIGN KEY (ever_married)
    REFERENCES public.ever_married (index)
    NOT VALID;


ALTER TABLE public.stroke_data
    ADD FOREIGN KEY (work_type)
    REFERENCES public.work_type (index)
    NOT VALID;


ALTER TABLE public.stroke_data
    ADD FOREIGN KEY ("Residence_type")
    REFERENCES public."Residence_type" (index)
    NOT VALID;


ALTER TABLE public.stroke_data
    ADD FOREIGN KEY (smoking_status)
    REFERENCES public.smoking_status (index)
    NOT VALID;

END;
