# create data frame
df <- data.frame(points=c(99, 90, 86, 88, 95, 99, 101, 104),
                 assists=c(33, 28, 31, 39, 40, 40, 35, 47),
                 rebounds=c(30, 28, 24, 24, 20, 20, 15, 12))

# view first few rows of data fraem
head(df)

# create scatterplot matrix using base R
plot(df, pch=20, cex=1.5, col="steelblue")

# create scatterplot matrix using ggplot2 and ggally
library(ggplot2)
library("GGally")

# create scatterplot matrix
ggpairs(df)
