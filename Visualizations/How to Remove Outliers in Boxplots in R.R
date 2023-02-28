# remove outliers in boxplots in Base R
data <- c(5, 8, 8, 12, 14, 15, 16, 19, 20, 22, 24, 25, 25, 26, 30, 48)

# create boxplot
boxplot(data)

# remove outliers
boxplot(data, outline = FALSE)

data <- data.frame(y=c(5, 8, 8, 12, 14, 15, 16, 19, 20, 22, 24, 25, 25, 26, 30, 48))

library("ggplot2")

ggplot(data, aes(y=y)) +
  geom_boxplot()

# remove outlier in ggplot2
ggplot(data, aes(y=y)) +
  geom_boxplot(outlier.shape = NA)

# adjust the y_axis
ggplot(data, aes(y=y)) +
  geom_boxplot(outlier.shape = NA) +
  coord_cartesian(ylim = c(5, 30))
