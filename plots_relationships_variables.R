# Plots relationships between variables

#satisfacción vs productividad

ggplot(data=DB,aes(x=job_satisfaction,y=self_productivity))+
  geom_point()+
  ylab("Self productivity")+xlab("Job satisfaction")+
  theme_pubclean()

# tipo de trabajo vs satisfaccion

ggplot(data=DB,aes(x=job,y=job_satisfaction,fill=job))+
  geom_boxplot(color="black")+
  ylab("Job satisfaction")+xlab("Job")+
  theme_pubclean()+
  theme(legend.position = "none")+
  scale_fill_met_d("Pissaro")

# tipo de trabajo vs productividad

ggplot(data=DB,aes(x=job,y=self_productivity))+
  geom_boxplot()+
  ylab("Self productivity")+xlab("Job")+
  theme_pubclean()

# shift vs productividad 

ggplot(data=DB,aes(x=shift,y=self_productivity))+
  geom_boxplot()+
  ylab("Self productivity")+xlab("Shift type")+
  theme_pubclean()

# shift vs satisfaction

ggplot(data=DB,aes(x=shift,y=job_satisfaction))+
  geom_boxplot()+
  ylab("Job satisfaction")+xlab("Shift type")+
  theme_pubclean()

# shift insomnio 

ggplot(data=DB,aes(x=shift,y=insomnio))+
  geom_boxplot()+
  ylab("Insomnio index")+xlab("Shift type")+
  theme_pubclean()

# Calidad del sueño vs productividad

ggplot(data=DB,aes(x=sleeping_quality,y=self_productivity))+
  geom_boxplot()+
  ylab("Self productivity")+xlab("Sleeping quality")+
  theme_pubclean()

# Calidad de sueño vs satisfaccion

ggplot(data=DB,aes(x=sleeping_quality,y=job_satisfaction))+
  geom_boxplot()+
  ylab("Job satisfaction")+xlab("Sleeping quality")+
  theme_pubclean()

# Insomnio vs satisfaccion

ggplot(data=DB,aes(x=insomnio,y=job_satisfaction))+
  geom_point()+
  ylab("Insomnio index")+xlab("Job satisfaction")+
  theme_pubclean()

# Insomnio vs productividad

ggplot(data=DB,aes(x=insomnio,y=self_productivity))+
  geom_point()+
  ylab("Insomnio index")+xlab("Self productivity")+
  theme_pubclean()

# Edad vs productividad

ggplot(data = DB,aes(x=age,y=self_productivity))+
  geom_point()+
  ylab("Self productivity")+xlab("Age (years)")+
  theme_pubclean()

# time job vs satisfaction

ggplot(data = DB,aes(time_job,y=self_productivity))+
  geom_point()+
  xlab("Time job (years)")+ylab("Self productivity")+
  theme_pubclean()

# job days vs productividad

ggplot(data = DB,aes(x=jobdays_perweek,y=self_productivity))+
  geom_point()+
  xlab("Job days per week")+ylab("Self productivity")+
  theme_pubclean()

# Job days vs satisfaction

ggplot(data = DB,aes(x=jobdays_perweek,y=job_satisfaction))+
  geom_point()+
  xlab("Job days per week")+ylab("Job satisfaction")+
  theme_pubclean()
