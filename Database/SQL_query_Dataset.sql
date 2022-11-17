SELECT 
sd.index,
gd.gender,
sd.age,
hy.hypertension,
hd.heart_disease,
em.ever_married,
wt.work_type,
rt.Residence_type,
sd.avg_glucose_level,
sd.bmi,
sm.smoking_status,
sd.stroke
FROM stroke_analysis sa
INNER JOIN demographic_features df ON df.index = sa.demographic_features
INNER JOIN biological_features bf ON bf.index = sa.biological_features

