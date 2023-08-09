# Plots de las variables

# Sobre las personas como tal

ggplot(data=DB,aes(x=age))+
  geom_histogram(bins = 31,color="black",fill=met.brewer("Pissaro",10)[1])+
  theme_pubclean()+
  ylab("Number of people")+
  xlab("Age (years)")+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size=24))
ggsave("plot1.png")

ggplot(data = DB,aes(x=job))+
  geom_bar(width = 0.5,color="black",fill=met.brewer("Pissaro",10)[4])+
  theme_pubclean()+
  ylab("Number of people")+
  xlab("Job")+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size=30))+
  theme(axis.text = element_text(family = "Open Sans",size=24))
ggsave("plot2.png")

ggplot(data = DB,aes(x=sex))+
  geom_bar(width = 0.25,color="black",fill=met.brewer("Pissaro",10)[6])+
  theme_pubclean()+
  ylab("Number of people")+
  xlab("Sex")+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size=30))+
  theme(axis.text = element_text(family = "Open Sans",size=24))+
  scale_x_discrete(labels=c("Male","Female"))
ggsave("plot3.png")

# Sobre el trabajo

ggplot(data=DB,aes(x=time_job))+
  geom_histogram(bins = 30,color="black",fill=met.brewer("Pissaro",10)[8])+
  theme_pubclean()+
  ylab("Number of people")+
  xlab("Time job (years)")+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size=30))+
  theme(axis.text = element_text(family = "Open Sans",size=24))
ggsave("plot4.png")

ggplot(data = DB,aes(x=modalidad))+
  geom_bar(width = 0.25,color="black",fill=met.brewer("Pissaro",10)[9])+
  theme_pubclean()+
  ylab("Number of people")+
  xlab("Work type")+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size=30))+
  theme(axis.text = element_text(family = "Open Sans",size=24))+
  scale_x_discrete(labels=c("Remote","Hybrid","In-office"))
ggsave("plot5.png")


ggplot(data = DB, aes(x=shift))+
  geom_bar(width = 0.25,color="black",fill=met.brewer("Pissaro",10)[10])+
  theme_pubclean()+
  ylab("Number of people")+
  xlab("Shift type")+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size=24))+
  scale_x_discrete(labels=c("Night","Afternoon","Morning","Flexible"))
ggsave("plot6.png")

ggplot(data=DB,aes(x=jobdays_perweek))+
  geom_histogram(bins =7,color="black",fill=met.brewer("Pissaro",10)[8])+
  scale_x_binned(n.breaks = 7)+
  theme_pubclean()+
  ylab("Number of people")+
  xlab("Job days per week")+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size=24))
ggsave("plot7.png")

# Sobre el sueño

ggplot(data=DB,aes(x=sleeping_quality))+
  geom_bar(width = 0.25,color="black",fill=met.brewer("Pissaro",10)[10])+
  theme_pubclean()+
  ylab("Number of people")+
  xlab("Sleeping quality")+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))+
  scale_x_discrete(labels=c("Very bad","Bad","Good","Very good"))
ggsave("plot8.png")

ggplot(data=DB,aes(x=job_satisfaction))+
  geom_histogram(color="black",fill=met.brewer("Pissaro",10)[1])+
  theme_pubclean()+
  ylab("Number of people")+
  xlab("Job satisfaction")+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))
ggsave("plot9.png")

ggplot(data=DB,aes(x=self_productivity))+
  geom_histogram(color="black",fill=met.brewer("Pissaro",10)[3])+
  theme_pubclean()+
  ylab("Number of people")+
  xlab("Self productivity")+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))
ggsave("plot10.png")

ggplot(data=DB,aes(x=hygine))+
  geom_histogram(color="black",fill=met.brewer("Pissaro",10)[2])+
  theme_pubclean()+
  ylab("Number of people")+
  xlab("Sleep hygiene")+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))
ggsave("plot11.png")

ggplot(data=DB,aes(x=insomnio))+
  geom_histogram(color="black",fill=met.brewer("Pissaro",10)[5])+
  theme_pubclean()+
  ylab("Number of people")+
  xlab("Insomnia index")+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))
ggsave("plot12.png")
