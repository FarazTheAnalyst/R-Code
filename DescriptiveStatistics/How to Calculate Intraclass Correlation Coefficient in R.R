# load the interrater reliability package
install.packages("irr")
library("irr")

# define data
data <- data.frame(A=c(1, 1, 3, 6, 6, 7, 8, 9, 9, 7),
                   B=c(2, 3, 8, 4, 5, 5, 7, 9, 8, 8),
                   C=c(0, 4, 1, 5, 5, 6, 6, 9, 8, 8),
                   D=c(1, 2, 3, 3, 6, 4, 6, 8, 8, 9))

# calculate ICC
icc(data, model = "twoway", type = "agreement", unit = "single")










