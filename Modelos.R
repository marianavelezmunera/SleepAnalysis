# Regresiones

# Trabajo

m1<-glm(job_satisfaction~sleeping_quality+pittsburg+hygine+insomnio+subth_insomnia,family = "poisson")
summary(m1)
m2<-glm(self_productivity~sleeping_quality+pittsburg+hygine+insomnio+subth_insomnia,family = "poisson")
summary(m2)

# Sociodemograficos

m3<-glm(job_satisfaction~age+sex+liveswithpeople+kids_number+exercise_hours_week,family = "poisson")
summary(m3)
m4<-glm(self_productivity~age+sex+liveswithpeople+kids_number+exercise_hours_week,family = "poisson")
summary(m4)
