# This is analysis on the iris data set
# Getting started with the data 
data("iris") 
help(iris) 
str(iris)
head(iris)

mydata <- iris[1:100, c(1, 3, 5)] # Creating a new data frame with the first 100 rows of the iris data set and the sepal length, petal length and species columns.
mydata[, 4] <- 1 # Add a column of all 1's
mydata[mydata[, 3] == "setosa", 4] <- -1 # Change the 1's to -1's for when the flower is setosa 
mydata <- mydata[, c(1, 2, 4)] # Get rid of the column of flower names
names(mydata) <- c("x1", "x2", "y") # Rename the column names
mydata[, 3] <- as.factor(mydata[, 3]) # Convert values in column 3 to a factor (Categorical variable)
head(mydata)

# Visualising the data 
p <- ggplot(mydata, aes(x = x1, y = x2)) + geom_point(aes(colour = y, shape = y), size = 3) + xlab("sepal length in cm") +
  ylab("petal length in cm")
p

# K nearest neighbour algorithm

# Training data 
D <- data.frame(x1 = c(6, 4, 3, 5, 6, 5, 2, 7, 2, 1), x2 = c(0, 5, 1, 2, 8, 7, 4, 6, 5, 3),
                y = factor(c(-1, -1, 1, 1, 1, -1, -1, 1, 1, -1)))
# New point 
xnew <- c(6,7)

#Testing the K nearest neighbour algorithm on the new point
library(class)
knn(train = D[, c(1, 2)], cl = D$y, test = xnew, k = 3, use.all = FALSE)