satir<- seq(0.0,3.9,by=0.1)
sutun<-seq(0.00,0.09,by=0.01)

z_matris<-outer(satir,sutun,function(x,y){
  round(pnorm(x+y)-0.5,4)
})

dimnames(z_matris)<-list(sprintf("%.1f",satir),sprintf("%.2f",sutun))
z_df<-as.data.frame(z_matris)

print(z_df)