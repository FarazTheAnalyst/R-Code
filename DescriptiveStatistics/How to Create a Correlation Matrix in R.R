# create data frame
df <- data.frame(assists=c(4, 5, 5, 6, 7, 8, 8, 10),
                 rebounds=c(12, 14, 13, 7, 8, 8, 9, 13),
                 points=c(22, 24, 26, 26, 29, 32, 30, 14))

# view data frame
df

# create correlation matrix
cor(df)

# load package Hmisc
library("Hmisc")

# create matrix of correlation coefficients and p-values
rcorr(as.matrix(df))

# the corrplot function
library("corrplot")

# visualize correlation matrix
corrplot(cor(df))

# The corrplot function
library(ggcorrplot)

# visualize correlation matrix
ggcorrplot(cor(df))









