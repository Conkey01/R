# Using the PLA (Perceptron learning algorithm)
x <- matrix(c(1, 1, 1, 1, 1, 1, 2, 3, 2, 1, 4, 1,
              1, 1, 3, 3, 3, 4),
            nrow = 6, ncol = 3, byrow = FALSE)
y <- c(1, 1, -1, -1, 1, -1) 
N <- length(y)

w1 <- c(0, 0, 0)
w2 <- c(-1, -1, -3) 
w3 <- c(0, 2, -2)
correctlyClassified <- function(w, x, y) { 
  N <- length(y)
  correctLabel <- logical(N)
  for (i in 1:N) {
    innerproduct <- sum(w * x[i, ])
    signfun <- ifelse(innerproduct >= 0, 1, -1) correctLabel[i] <- signfun == y[i]
}
  correctLabel
}
correctlyClassified(w = w1, x, y)