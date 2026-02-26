options(scipen = 999)
df_satir <- c(1:30, 40, 50, 60, 100)
a_sutun <- c(0.995, 0.99, 0.975, 0.95, 0.90, 0.10, 0.05, 0.025, 0.01, 0.005)

kikare_matris<-outer(df_satir,a_sutun,function(d,a){
  hesaplanan<-qchisq(p=a,df=d,lower.tail=FALSE)
  sprintf("%.2f",hesaplanan)
})

kikare_df <- as.data.frame(kikare_matris)

colnames(kikare_df) <- as.character(a_sutun)
rownames(kikare_df) <- as.character(df_satir)

print(kikare_df)