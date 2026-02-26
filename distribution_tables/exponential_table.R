options(scipen = 999)

x_satir <- seq(0.0, 5.0, by = 0.5)
lambda_sutun <- c(0.1, 0.5, 1.0, 1.5, 2.0, 2.5)

ustel_matris <- outer(x_satir, lambda_sutun, function(zaman, oran) {
  sprintf("%.4f", pexp(q = zaman, rate = oran))
})

ustel_df <- as.data.frame(ustel_matris)

colnames(ustel_df) <- as.character(lambda_sutun)
rownames(ustel_df) <- as.character(x_satir)

print(ustel_df)