# calculating matthews correlation coefficient in R
install.packages("mltools")
library(mltools)

# define vector of actual classes
actual <- rep(c(1, 0), times=c(20, 380))
actual

# define vector of predicted classes
preds <- rep(c(1, 0, 1, 0), times=c(15, 5, 5, 375))
preds

# calculate matthews correlation coefficient
mcc(preds, actual)

library("mltools")

# create confusion matrix
conf_matrix <- matrix(c(15, 5, 5, 375), nrow=2)

# view confusion matrix
conf_matrix

# calculate Matthews correlation coefficient for confusion matrix
mcc(confusionM = conf_matrix)






