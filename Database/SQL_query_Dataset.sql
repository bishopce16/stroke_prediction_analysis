SELECT 
sd.index,
gd.gender,
sd.age,
hy.hypertension,
hd.heart_disease,
em.ever_married,
wt.work_type,
rt."Residence_type",
sd.avg_glucose_level,
sd.bmi,
sm.smoking_status,
sd.stroke
FROM public.stroke_data sd
INNER JOIN public."Residence_type" rt ON rt.index = sd."Residence_type"
INNER JOIN public.ever_married em ON em.index = sd.ever_married
INNER JOIN public.gender gd ON gd.index = sd.gender
INNER JOIN public.heart_disease hd ON hd.index = sd.heart_disease
INNER JOIN public.hypertension hy ON hy.index = sd.hypertension
INNER JOIN public.smoking_status sm ON sm.index = sd.smoking_status
INNER JOIN public.work_type wt ON wt.index = sd.work_type