# Gráficas relaciones entre variables

# Satisfacción vs productividad

ggplot(data=DB,aes(x=job_satisfaction,y=self_productivity))+
  geom_point()+
  ylab("Self productivity")+xlab("Job satisfaction")+
  theme_pubclean()+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))+
  geom_smooth(method = "lm",fill=NA,aes(colour="A"))+
  scale_colour_manual(values=met.brewer("Pissaro",4)[3],label="rho = 0.36 ***")+
  theme(legend.position = c(0.8,0.5))+
  theme(legend.title = element_blank())+
  theme(legend.background = element_blank())+
  theme(legend.key = element_rect(fill = "transparent"))+
  theme(legend.text = element_text(family = "Open Sans",size=24))
ggsave("plot13.png")

# Tipo de trabajo vs satisfacción

ggplot(data=DB,aes(x=job,y=job_satisfaction,fill=job))+
  geom_boxplot(color="black")+
  ylab("Job satisfaction")+xlab("Job")+
  theme_pubclean()+
  theme(legend.position = "none")+
  scale_fill_met_d("Pissaro")+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))
ggsave("plot14.png")

# Tipo de trabajo vs productividad

ggplot(data=DB,aes(x=job,y=self_productivity,fill=job))+
  geom_boxplot(color="black")+
  ylab("Self productivity")+xlab("Job")+
  theme_pubclean()+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))+
  theme(legend.position = "none")+
  scale_fill_met_d("Pissaro")
ggsave("plot15.png")  

# Shift vs productividad 

ggplot(data=DB,aes(x=shift,y=self_productivity,fill=shift))+
  geom_boxplot(color="black")+
  ylab("Self productivity")+xlab("Shift type")+
  theme_pubclean()+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))+
  theme(legend.position = "none")+
  scale_fill_met_d("Pissaro")+
  scale_x_discrete(labels=c("Night","Afternoon","Morning","Flexible"))
ggsave("plot16.png")  

# Shift vs satisfaction

ggplot(data=DB,aes(x=shift,y=job_satisfaction,fill=shift))+
  geom_boxplot(color="black")+
  ylab("Job satisfaction")+xlab("Shift type")+
  theme_pubclean()+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))+
  theme(legend.position = "none")+
  scale_fill_met_d("Pissaro")+
  scale_x_discrete(labels=c("Night","Afternoon","Morning","Flexible"))
ggsave("plot17.png")

# Shift vs insomnio 

ggplot(data=DB,aes(x=shift,y=insomnio,fill=shift))+
  geom_boxplot(color="black")+
  ylab("Insomnio index")+xlab("Shift type")+
  theme_pubclean()+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))+
  theme(legend.position = "none")+
  scale_fill_met_d("Pissaro")+
  scale_x_discrete(labels=c("Night","Afternoon","Morning","Flexible"))
ggsave("plot18.png")

# Calidad del sueño vs productividad

ggplot(data=DB,aes(x=sleeping_quality,y=self_productivity,fill=sleeping_quality))+
  geom_boxplot(color="black")+
  ylab("Self productivity")+xlab("Sleeping quality")+
  theme_pubclean()+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))+
  theme(legend.position = "none")+
  scale_fill_met_d("Pissaro")+
  scale_x_discrete(labels=c("Very bad","Bad","Good","Very good"))
ggsave("plot19.png")

# Calidad de sueño vs satisfaccion

ggplot(data=DB,aes(x=sleeping_quality,y=job_satisfaction,fill=sleeping_quality))+
  geom_boxplot(color="black")+
  ylab("Job satisfaction")+xlab("Sleeping quality")+
  theme_pubclean()+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))+
  theme(legend.position = "none")+
  scale_fill_met_d("Pissaro")+
  scale_x_discrete(labels=c("Very bad","Bad","Good","Very good"))
ggsave("plot20.png")

# Insomnio vs satisfaccion

ggplot(data=DB,aes(x=insomnio,y=job_satisfaction))+
  geom_point()+
  ylab("Insomnio index")+xlab("Job satisfaction")+
  theme_pubclean()+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))+
  geom_smooth(method = "lm",fill=NA,aes(colour="A"))+
  scale_colour_manual(values=met.brewer("Pissaro",4)[7],label="rho = 0.04")+
  theme(legend.position = c(0.8,0.65))+
  theme(legend.title = element_blank())+
  theme(legend.background = element_blank())+
  theme(legend.key = element_rect(fill = "transparent"))+
  theme(legend.text = element_text(family = "Open Sans",size=24))
ggsave("plot21.png")

# Insomnio vs productividad

ggplot(data=DB,aes(x=insomnio,y=self_productivity))+
  geom_point()+
  ylab("Insomnio index")+xlab("Self productivity")+
  theme_pubclean()+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))+
  geom_smooth(method = "lm",fill=NA,aes(colour="A"))+
  scale_colour_manual(values=met.brewer("Pissaro",4)[9],label="rho = - 0.11")+
  theme(legend.position = c(0.9,0.75))+
  theme(legend.title = element_blank())+
  theme(legend.background = element_blank())+
  theme(legend.key = element_rect(fill = "transparent"))+
  theme(legend.text = element_text(family = "Open Sans",size=24))
ggsave("plot22.png")

# Edad vs productividad

ggplot(data = DB,aes(x=age,y=self_productivity))+
  geom_point()+
  ylab("Self productivity")+xlab("Age (years)")+
  theme_pubclean()+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))+
  geom_smooth(method = "lm",fill=NA,aes(colour="A"))+
  scale_colour_manual(values=met.brewer("Pissaro",4)[3],label="rho = 0.22*")+
  theme(legend.position = c(0.85,0.8))+
  theme(legend.title = element_blank())+
  theme(legend.background = element_blank())+
  theme(legend.key = element_rect(fill = "transparent"))+
  theme(legend.text = element_text(family = "Open Sans",size=24))
ggsave("plot23.png")

# Tiempo en el trabajo vs satisfacción

ggplot(data = DB,aes(time_job,y=job_satisfaction))+
  geom_point()+
  xlab("Time job (years)")+ylab("Job satisfaction")+
  theme_pubclean()+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))+
  geom_smooth(method = "lm",fill=NA,aes(colour="A"))+
  scale_colour_manual(values=met.brewer("Pissaro",4)[1],label="rho = 0.22*")+
  theme(legend.position = c(0.8,0.75))+
  theme(legend.title = element_blank())+
  theme(legend.background = element_blank())+
  theme(legend.key = element_rect(fill = "transparent"))+
  theme(legend.text = element_text(family = "Open Sans",size=24))
ggsave("plot24.png")

# Dias laborales vs productividad

ggplot(data = DB,aes(x=jobdays_perweek,y=self_productivity))+
  geom_point()+
  xlab("Job days per week")+ylab("Self productivity")+
  theme_pubclean()+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))+
  geom_smooth(method = "lm",fill=NA,aes(colour="A"))+
  scale_colour_manual(values=met.brewer("Pissaro",4)[2],label="rho = 0.11")+
  theme(legend.position = c(0.7,0.75))+
  theme(legend.title = element_blank())+
  theme(legend.background = element_blank())+
  theme(legend.key = element_rect(fill = "transparent"))+
  theme(legend.text = element_text(family = "Open Sans",size=24))
ggsave("plot25.png")

# Dias laborales vs satisfaccion

ggplot(data = DB,aes(x=jobdays_perweek,y=job_satisfaction))+
  geom_point()+
  xlab("Job days per week")+ylab("Job satisfaction")+
  theme_pubclean()+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))+
  geom_smooth(method = "lm",fill=NA,aes(colour="A"))+
  scale_colour_manual(values=met.brewer("Pissaro",4)[4],label="rho = 0.23 **")+
  theme(legend.position = c(0.67,0.55))+
  theme(legend.title = element_blank())+
  theme(legend.background = element_blank())+
  theme(legend.key = element_rect(fill = "transparent"))+
  theme(legend.text = element_text(family = "Open Sans",size=24))
ggsave("plot26.png")
