# Load the data from cloth.rda
load("cloth.rda")

# Define a function to calculate the log-likelihood for a given lambda
log_likelihood_poisson <- function(lambda, x, y) {
  sum(y * log(x * lambda) - x * lambda - log(factorial(y)))
}

# Plot of the log likelihood for a poisson with mean x_i*lambda
# The MLE also highlighted on the plot  

# Create a vector of lambda values for the plot
lambda_values <- seq(0.01, 2, by = 0.01)

# Calculate the log-likelihood values for each lambda
log_likelihood_values <- sapply(lambda_values, function(lambda) log_likelihood_poisson(lambda, cloth$x, cloth$y))

# Find the MLE
mle_lambda <- lambda_values[which.max(log_likelihood_values)]
mle_log_likelihood <- max(log_likelihood_values)

# Create a plot of the log-likelihood function
plot(lambda_values, log_likelihood_values, type = "l", xlab = "Lambda", ylab = "Log-Likelihood",
     main = "Log-Likelihood Function for Lambda")

# Add a vertical line at the MLE
abline(v = mle_lambda, lty = 2, col = "red")

# Add text for MLE and its log-likelihood value
text(mle_lambda, mle_log_likelihood, labels = paste("MLE: ", round(mle_lambda, 3)), pos = 3)
text(mle_lambda, mle_log_likelihood - 10, labels = paste("Log-Likelihood: ", round(mle_log_likelihood, 3)), pos = 3)
