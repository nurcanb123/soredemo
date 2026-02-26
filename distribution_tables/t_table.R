options(scipen = 999)

df_satir<-c(1:30,40,60,80,100,1000,Inf)
a_sutun<-c(0.25,0.20,0.15,0.10,0.05,0.025,0.02,0.01,0.005,0.0025,0.001,0.0005)

a_sutun2<-a_sutun*2
t_matris<-outer(df_satir,a_sutun,function(d,a){
  sprintf("%.3f",qt(p=a,df=d,lower.tail=FALSE))
})

t_df <- as.data.frame(t_matris)

colnames(t_df)<-as.character(a_sutun)
rownames(t_df)<-ifelse(is.infinite(df_satir), "Inf", as.character(df_satir))


print(t_df)