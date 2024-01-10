dev_geom2 <- function(x, y, lambda) {
  # x is total number of failures
  # y is the number of flaws
  # lambda is the parameter to evaluate at
  mle <- sum(cloth[,2]) / sum(cloth[,1])
  llikmle <- sum(y * log(x * mle) - x * mle - log(factorial(y)))
  llikp <- sum(y * log(x * lambda) - x * lambda - log(factorial(y)))
  
  deviance <- 2 * (llikmle - llikp)
  return(deviance)
}

# Create a range of lambda values
lambda_values <- seq(0.01, 2, by = 0.01)

# Calculate deviance values for each lambda
deviance_values <- sapply(lambda_values, function(lambda) dev_geom2(cloth[,1], cloth[,2], lambda))

# Plot the deviance values
plot(lambda_values, deviance_values, type = "l", xlab = "Lambda", ylab = "Deviance",main = "Deviance Function for Lambda")


abline(h=3.84)