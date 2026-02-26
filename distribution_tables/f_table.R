options(scipen = 999) 

df1_sutun <- c(1:10,12,15,20,24,30,40,60,120,Inf)
df2_satir <- c(1:30, 40, 60, 120, Inf)
sabit_alfa <- 0.05


f_matris <- outer(df2_satir, df1_sutun, function(payda, pay) {
  
  hesaplanan_F <- qf(p = sabit_alfa, df1 = pay, df2 = payda, lower.tail = FALSE)
  sprintf("%.2f", hesaplanan_F)
})

f_df <- as.data.frame(f_matris)

colnames(f_df) <- ifelse(is.infinite(df1_sutun),"Inf",as.character(df1_sutun))
rownames(f_df) <- ifelse(is.infinite(df2_satir), "Inf", as.character(df2_satir))

print(f_df)