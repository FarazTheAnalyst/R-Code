# install ggplot2 if not already installed
install.packages("ggplot2")

# load ggplot2
library("ggplot2")

# load dataset
data(diamonds)

# view first six rows of diamonds dataset
head(diamonds)

# summarize diamonds dataset
summary(diamonds)
?diamonds

# display rows and column
dim(diamonds)

# diaplay column names
names(diamonds)

# create histofram of values for price
ggplot(data = diamonds, mapping = aes(x=price)) +
  geom_histogram(fill = "purple", color = "black") + 
  ggtitle("Histogram of Price Values")

# create scatterplot of carat vs. price, using cut as color variable
ggplot(data=diamonds, aes(x=carat, y=price, color=cut)) + 
  geom_point()

# create scatterplot of price, grouped by cut
ggplot(data=diamonds, aes(x=cut, y=price)) +
  geom_boxplot(fill="purple")



