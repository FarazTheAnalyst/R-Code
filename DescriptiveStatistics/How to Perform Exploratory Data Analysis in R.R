# install package tidyverse
install.packages("tidyverse")
library(tidyverse)

# load dataset
data(diamonds)

# view first six rows  of diamonds datset
head(diamonds)

# summarize diamonds dataset
summary(diamonds)

# display rows and columns
dim(diamonds)


# create histogram for values for price
ggplot(data = diamonds, aes(x = price)) +
  geom_histogram(fill = "gold", color = "black") +
  ggtitle("Histogram of Price Values")

# create scatterplot of carat vs.price, using cut as color variable
ggplot(data=diamonds, mapping = aes(x=carat, y=price, color=cut)) +
  geom_point()

# create scatterplot of price, grouped by cut
ggplot(data=diamonds, aes(x=cut, y=price)) +
  geom_boxplot(fill="purple")

# create correlation matrix of (rounded to 2 decimal places)
round(cor(diamonds[c("carat", "depth", "table", "price", "x", "y", "z")]), 2)

# count total missing values in each column
sapply(diamonds, function(x) sum(is.na(x)))





