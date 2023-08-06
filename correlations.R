# Correlaciones entre variables

#satisfacción vs productividad

cor.test(DB$job_satisfaction,DB$self_productivity,method ="spearman")

# Insomnio vs satisfaccion

cor.test(DB$insomnio,DB$job_satisfaction,method ="spearman")

# Insomnio vs productividad

cor.test(DB$insomnio,DB$self_productivity,method ="spearman")

# Edad vs productividad

cor.test(DB$age,DB$self_productivity,method = "spearman")

# Time job vs productividad

cor.test(time_job,self_productivity,method = "spearman")

# Job days vs productividad

cor.test(jobdays_perweek,self_productivity,method = "spearman")

# Job days vs satisfaccion

cor.test(jobdays_perweek,job_satisfaction,method = "spearman")
