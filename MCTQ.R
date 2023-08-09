# MCTQ

# MSFsc vs MSF

# Datos 

MCTQ1<-cbind(MCTQ,DB[,c(12,14,15,18)])

ggplot(data=MCTQ1,aes(x=MSFsc,y=MSF))+
  geom_point(size=2,shape=1)+
  geom_abline(aes(intercept = 1, slope=1,colour="1:1 ratio"),size=0.5)+
  geom_smooth(method = "lm",fill=NA,linetype="dashed",aes(colour="A"))+
  theme_pubclean()+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))+
  theme(legend.position = c(0.8,0.2))+
  theme(legend.title = element_blank())+
  theme(legend.background = element_blank())+
  theme(legend.key = element_rect(fill = "transparent"))+
  theme(legend.text = element_text(family = "Open Sans",size = 24))+
  scale_colour_manual(values=c(met.brewer("Pissaro",4)[3],"black"),labels=c("1:1 ratio",bquote( r^2==0.91)))+
  annotate(geom="text",x=12,y=8,label="y =1.01947x - 0.72550",size=8,family="Open Sans",fontface=1)
ggsave("plot28.png")
summary(lm(MSFsc~MSF,data = MCTQ))

# MSF vs MSW

# Datos

night<-subset(MCTQ1,shift=="1")
after<-subset(MCTQ1,shift=="2")
morning<-subset(MCTQ1,shift=="3")
flex<-subset(MCTQ1,shift=="4")

# Correlaciones 
cor.test(night$MSW,night$MSF,method = "spearman")
cor.test(after$MSW,after$MSF,method = "spearman")
cor.test(morning$MSW,morning$MSF,method = "spearman")
cor.test(flex$MSW,flex$MSF,method = "spearman")

# Grafico

ggplot(data=MCTQ,aes(x=MSF,y=MSW,color=shift))+
  geom_point(size=1)+
  geom_smooth(method = "lm", fill = NA, size=0.65)+
  theme_pubclean()+ 
  theme(legend.position = "right")+
  theme(axis.title = element_text(face="bold",family = "Open Sans",size = 30))+
  theme(axis.text = element_text(family = "Open Sans",size = 24))+
  scale_color_discrete(name="Shift",type = met.brewer("Pissaro",4),labels=c("Night shift: rho = 1 ","Afternoon shift: rho = 0.72","Morning shift: rho = 0.68 ***","Flexible shift: rho = 0.75 ***"))+
  theme(legend.text = element_text(family = "Open Sans",size = 14))+
  theme(legend.title = element_blank())+
  theme(legend.key = element_rect(fill = "transparent"))+
  theme(legend.background = element_rect(fill = "transparent"))
ggsave("plot29.png")
