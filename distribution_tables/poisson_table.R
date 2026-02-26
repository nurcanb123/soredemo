options(scipen = 999)

x_satir <- 0:15
lambda_sutun <- c(0.1, 0.5, 1.0, 2.0, 3.0, 4.0, 5.0, 10.0)

poisson_matris <- outer(x_satir, lambda_sutun, function(x, lam) {
  hesaplanan_p <- ppois(q = x, lambda = lam)
  sprintf("%.4f", hesaplanan_p)
})

poisson_df <- as.data.frame(poisson_matris)

colnames(poisson_df) <- as.character(lambda_sutun)
rownames(poisson_df) <-as.character(x_satir)

print(poisson_df)