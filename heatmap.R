# heat map

# eje y (edad, tiempo de trabajo, satisfaccion, productividad)
# eje x (pittsburg, hygene, insomnio, sub_insomnio)

edad<-cor(age,DB[,c(19,20,25,26)])
tiempotrab<-cor(time_job,DB[,c(19,20,25,26)])
satisfaccion<-cor(job_satisfaction,DB[,c(19,20,25,26)])
productividad<-cor(self_productivity,DB[,c(19,20,25,26)])

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
  theme(axis.title = element_text(face="bold",family = "Open Sans"))+
  theme(axis.text = element_text(family = "Open Sans"))+
  scale_x_discrete(labels=c("Age","Job time","Job satisfaction","Self productivity"))+
  scale_y_discrete(labels=c("Pittsburg index","Sleep hygiene","Insomnia index","Subth insomnia index"))+
  theme(legend.title = element_text(family = "Open Sans",face="bold"))+
  theme(legend.text = element_text(family = "Open Sans"))+
  scale_fill_gradientn(name="Correlation",colors = met.brewer("Pissaro",6))
  

