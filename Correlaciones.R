# Correlaciones entre variables

# Satisfacción vs productividad

cor.test(DB$job_satisfaction,DB$self_productivity,method ="spearman")

# Insomnio vs satisfaccion

cor.test(DB$insomnio,DB$job_satisfaction,method ="spearman")

# Insomnio vs productividad

cor.test(DB$insomnio,DB$self_productivity,method ="spearman")

# Edad vs productividad

cor.test(DB$age,DB$self_productivity,method = "spearman")

# Tiempo en el trabajo vs productividad

cor.test(time_job,self_productivity,method = "spearman")

# Tiempo en el trabajo vs satisfaccion

cor.test(time_job,job_satisfaction,method = "spearman")

# Dias laborales vs productividad

cor.test(jobdays_perweek,self_productivity,method = "spearman")

# Dias laborales vs satisfaccion

cor.test(jobdays_perweek,job_satisfaction,method = "spearman")
