# Plots de las variables

# Sobre las personas como tal

ggplot(data=DB,aes(x=age))+
  geom_histogram(bins = 31)

ggplot(data = DB,aes(x=job))+
  geom_bar()

ggplot(data = DB,aes(x=sex))+
  geom_bar()

# Sobre el trabajo

ggplot(data=DB,aes(x=time_job))+
  geom_histogram(bins = 30)

ggplot(data = DB,aes(x=modalidad))+
  geom_bar()

ggplot(data = DB, aes(x=shift))+
  geom_bar()

ggplot(data=DB,aes(x=jobdays_perweek))+
  geom_histogram(bins =7)+
  scale_x_binned(n.breaks = 7)

# Sobre el sueño

ggplot(data=DB,aes(x=sleeping_quality))+
  geom_bar()

ggplot(data=DB,aes(x=job_satisfaction))+
  geom_histogram()

ggplot(data=DB,aes(x=self_productivity))+
  geom_histogram()

ggplot(data=DB,aes(x=hygine))+
  geom_histogram()

ggplot(data=DB,aes(x=insomnio))+
  geom_histogram()
