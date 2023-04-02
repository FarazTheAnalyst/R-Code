# create matrix
program <- c("New Program", "Old Program")
outcome <- c("Pass", "Fail")
data <- matrix(c(34, 16, 39, 11), nrow=2, ncol=2, byrow = TRUE)
dimnames(data) <- list("Program"=program, "Outcome"=outcome)

install.packages("epitools")
library("eiptools")

# calculate odds ratio
oddsratio(data)
