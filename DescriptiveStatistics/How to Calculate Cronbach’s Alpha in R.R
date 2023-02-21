# install packages
install.packages("ltm")
library("ltm")

# enter survey responses as a data frame
data <- data.frame(Q1=c(1, 2, 2, 3, 2, 2, 3, 3, 2, 3),
                   Q2=c(1, 1, 1, 2, 3, 3, 2, 3, 3, 3),
                   Q3=c(1, 1, 2, 1, 2, 3, 3, 3, 2, 3))

# calculate Cronbach's Alpha
cronbach.alpha(data)

# calculate cronbach's alpha with 95% confidence interval
cronbach.alpha(data, CI = TRUE)
