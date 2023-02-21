# calculating F1 score in R
install.packages("caret")
library("caret")

# define vectors of actual values and predicted values
actual <- factor(rep(c(1,0), times=c(160, 240)))
pred <- factor(rep(c(1, 0, 1, 0), times=c(120, 40, 70, 170)))

# create confusion  matrix and calculate metric related to confusion matrix
confusionMatrix(pred, actual, mode = "everything", positive = "1")
