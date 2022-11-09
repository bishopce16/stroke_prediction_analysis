
BEGIN;


CREATE TABLE IF NOT EXISTS public."Residence_type"
(
    index bigint,
    "Residence_type" text
);

CREATE TABLE IF NOT EXISTS public.ever_married
(
    index bigint,
    ever_married text
);

CREATE TABLE IF NOT EXISTS public.gender
(
    index bigint,
    gender text
);

CREATE TABLE IF NOT EXISTS public.heart_disease
(
    index bigint,
    heart_disease bigint
);

CREATE TABLE IF NOT EXISTS public.hypertension
(
    index bigint,
    hypertension bigint,
    PRIMARY KEY (index)
);

CREATE TABLE IF NOT EXISTS public.patientinfo
(
    index bigint,
    gender text,
    age double precision,
    hypertension bigint,
    heart_disease bigint,
    ever_married text,
    work_type text,
    "Residence_type" text,
    avg_glucose_level double precision,
    bmi double precision,
    smoking_status text,
    stroke bigint
);

CREATE TABLE IF NOT EXISTS public.smoking_status
(
    index bigint,
    smoking_status text
);

CREATE TABLE IF NOT EXISTS public.stroke_data
(
    index bigint,
    gender bigint,
    age double precision,
    hypertension bigint,
    heart_disease bigint,
    ever_married bigint,
    work_type bigint,
    "Residence_type" bigint,
    avg_glucose_level double precision,
    bmi double precision,
    smoking_status bigint,
    stroke bigint,
    PRIMARY KEY (index)
);

CREATE TABLE IF NOT EXISTS public.work_type
(
    index bigint,
    work_type text
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