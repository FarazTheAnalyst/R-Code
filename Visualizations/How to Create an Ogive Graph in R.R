# create Ogive graph in R
# create dataset
data <- c(6, 7, 7, 8, 9, 12, 14, 16, 16, 17, 22, 24, 28, 31, 34, 35, 39, 41, 42, 43)

install.packages("agricolae")
library("agricolae")

# define values to plot
value_bins <- graph.freq(data, plot=FALSE)
value_bins
values <- ogive.freq(value_bins, frame=FALSE)
# create ogive chart
plot(values, xlab="value", ylab="Relative Cumulative Frequency", 
     main="Ogive Chart", col="steelblue", type="b", pch=19, las="l", bty="l")

# view values in ogive
values
