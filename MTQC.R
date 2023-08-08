# MCTQ

MCTQ1<-cbind(MCTQ,DB[,c(12,14,15,18)])

ggplot(data=MCTQ1,aes(x=MSFsc,y=MSF))+
  geom_point(size=2,shape=1)+
  geom_abline(aes(intercept = 1, slope=1,colour="1:1 ratio"),size=0.5)+
  geom_smooth(method = "lm",fill=NA,linetype="dashed",aes(colour="A"))+
  theme_pubclean()+
  theme(axis.title = element_text(face="bold",family = "Open Sans"))+
  theme(axis.text = element_text(family = "Open Sans"))+
  theme(legend.position = c(0.8,0.2))+
  theme(legend.title = element_blank())+
  theme(legend.background = element_blank())+
  theme(legend.key = element_rect(fill = "transparent"))+
  theme(legend.text = element_text(family = "Open Sans"))+
  scale_colour_manual(values=c(met.brewer("Pissaro",4)[3],"black"),labels=c("1:1 ratio",bquote( r^2==0.91)))+
  annotate(geom="text",x=12,y=8,label="MSF=-0.72550+1.01947*MSFsc",size=4,family="Open Sans",fontface=1)

summary(lm(MSFsc~MSF,data = MCTQ))

ggplot(data=MCTQ,aes(x=MSF,y=MSW,color=shift))+
  geom_point(size=1)+
  geom_smooth(method = "lm", fill = NA, size=0.65)+
  theme_pubclean()+
  theme(legend.position = "right")+
  theme(axis.title = element_text(face="bold",family = "Open Sans"))+
  theme(axis.text = element_text(family = "Open Sans"))+
  scale_color_discrete(name="Shift",type = met.brewer("Pissaro",4),labels=c("Night","Afternoon","Morning","Flexible"))+
  theme(legend.text = element_text(family = "Open Sans"))+
  theme(legend.title = element_text(family = "Open Sans",face = "bold"))
