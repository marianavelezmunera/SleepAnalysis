# Plots relationships between variables

#satisfacción vs productividad

ggplot(data=DB,aes(x=job_satisfaction,y=self_productivity))+
  geom_point()


# tipo de trabajo vs satisfaccion

ggplot(data=DB,aes(x=job,y=job_satisfaction))+
  geom_boxplot()

# tipo de trabajo vs productividad

ggplot(data=DB,aes(x=job,y=self_productivity))+
  geom_boxplot()

# shift vs productividad 

ggplot(data=DB,aes(x=shift,y=self_productivity))+
  geom_boxplot()

# shift vs satisfaction

ggplot(data=DB,aes(x=shift,y=job_satisfaction))+
  geom_boxplot()

# shift insomnio 

ggplot(data=DB,aes(x=shift,y=insomnio))+
  geom_boxplot()

# Calidad del sueño vs productividad

ggplot(data=DB,aes(x=sleeping_quality,y=self_productivity))+
  geom_boxplot()

# Calidad de sueño vs satisfaccion

ggplot(data=DB,aes(x=sleeping_quality,y=job_satisfaction))+
  geom_boxplot()

# Insomnio vs satisfaccion

ggplot(data=DB,aes(x=insomnio,y=job_satisfaction))+
  geom_point()

# Insomnio vs productividad

ggplot(data=DB,aes(x=insomnio,y=self_productivity))+
  geom_point()

# Edad vs productividad

ggplot(data = DB,aes(x=age,y=self_productivity))+
  geom_point()

# time job vs satisfaction

ggplot(data = DB,aes(time_job,y=self_productivity))+
  geom_point()

# job days vs productividad

ggplot(data = DB,aes(x=jobdays_perweek,y=self_productivity))+
  geom_point()

# Job days vs satisfaction

ggplot(data = DB,aes(x=jobdays_perweek,y=job_satisfaction))+
  geom_point()
