# partial correlation in R
# create data frame
df <- data.frame(currentGrade = c(82, 88, 75, 74, 93, 97, 83, 90, 90, 80),
                 hours=c(4, 4, 6, 5, 4, 5, 8, 7, 4, 6 ),
                 examScore=c(88, 85, 76, 70, 93, 94, 89, 85, 90, 93))

# view data frame
df

# install load package ppcor
install.packages("ppcor")
library("ppcor")

# calculate partial correlations
pcor(df)























