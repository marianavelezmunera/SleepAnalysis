# heat map

# eje y (edad, tiempo de trabajo, satisfaccion, productividad)
# eje x (pittsburg, hygene, insomnio, sub_insomnio)

edad<-cor(age,DB[,c(19,20,25,26)],method = "spearman")
tiempotrab<-cor(job_satisfaction,DB[,c(19,20,25,26)],method = "spearman")
satisfaccion<-cor(job_satisfaction,DB[,c(19,20,25,26)],method = "spearman")
productividad<-cor(self_productivity,DB[,c(19,20,25,26)],method = "spearman")

cormat<-matrix(data = c(edad,tiempotrab,satisfaccion,productividad),ncol = 4,byrow = TRUE,dimnames =list(persona=c("Edad","Tiempo de trabajo","Satisfaccion","Productividad"),sueno=c("pittsburg","hygene","insomnio","sub_insomnio")))
cormat

matbuena<-melt(cormat)

colnames(matbuena)[3]<-"valor"
matbuena

ggplot(data=matbuena,aes(x=persona,y=sueno,fill=valor))+
  geom_tile(color = "white",
            lwd = 1.5,
            linetype = 1)+
  coord_fixed()+
  theme_pubclean()+
  theme(legend.position = "right")+
  xlab("Personal variables")+
  ylab("Sleeping quality variables")+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 20))+
  scale_x_discrete(labels=c("Age","Job time","Job satisfaction","Self productivity"))+
  scale_y_discrete(labels=c("Pittsburg index","Sleep hygiene","Insomnia index","Subth insomnia index"))+
  theme(legend.title = element_text(family = "Open Sans",face="bold",size = 24))+
  theme(legend.text = element_text(family = "Open Sans",size = 24))+
  scale_fill_gradientn(name="Correlation",colors = met.brewer("Pissaro",6))
  
ggsave("plot27.png")
cor.test(age,pittsburg,method = "spearman")
cor.test(age,hygine,method = "spearman")
cor.test(age,insomnio,method = "spearman")
cor.test(age,subth_insomnia,method = "spearman")

cor.test(time_job,pittsburg,method = "spearman")
cor.test(time_job,hygine,method = "spearman")
cor.test(time_job,insomnio,method = "spearman")
cor.test(time_job,subth_insomnia,method = "spearman")

cor.test(job_satisfaction,pittsburg,method = "spearman")
cor.test(job_satisfaction,hygine,method = "spearman")
cor.test(job_satisfaction,insomnio,method = "spearman")
cor.test(job_satisfaction,subth_insomnia,method = "spearman")

cor.test(self_productivity,pittsburg,method = "spearman")
cor.test(self_productivity,hygine,method = "spearman")
cor.test(self_productivity,insomnio,method = "spearman")
cor.test(self_productivity,subth_insomnia,method = "spearman")
