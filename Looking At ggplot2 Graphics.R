# Installing and Loading ggplot2
install.packages("ggplot2")
library("ggplot2")
# looking At layers
# What does smooth line graph mean?
  # A smoother line is a line that is fitted to the data
  # that helps you explore the potential relationships between two variables
# without fitting a specific model, 
# such as a regression line or a theoretical distribution.
# Smoother lines are most useful
# when the curvature of the relationship does not change sharply.

# Looking At Layers
ggplot(faithful, aes(x = eruptions, y = waiting)) + 
         geom_point() +
         stat_smooth()
# Mapping data to plot aesthetics
ggplot(faithful, aes(x = eruptions, y = waiting)) +
  geom_point() +
  stat_smooth()

# Creating a bar chart
quakes
ggplot(quakes, aes(x = depth)) + geom_bar()
ggplot(quakes, aes(x = depth)) + geom_bar(binwidth = 50)

quakes.agg <- aggregate(mag ~ round(depth, -1), data = quakes, 
                        FUN = length)
names(quakes.agg) <- c("depth", "mag")
quakes.agg
ggplot(quakes.agg, aes(x = depth, y = mag)) +
  geom_bar(stat = "identity")

#  By default, geom_bar uses stat="bin". 
# This makes the height of each bar equal to
# the number of cases in each group,
# and it is incompatible with 

# If you explicitly say stat = "identity" 
# in geom_bar() , you're telling ggplot2 to skip the
# aggregation and that you'll provide the y values.

# Making a scatter plot
head(quakes)
ggplot(quakes, aes(x = long, y = lat)) + geom_point()

# Creating line charts
head(longley)
str(longley)
ggplot(longley, aes(x = Year, y = Unemployed)) + geom_line()  # order in observations according to x value
ggplot(longley, aes(x = Year, y = Unemployed)) + geom_path()  # draws the observations in the order found in the data

# Binning data
ggplot(quakes, aes(x = depth)) + geom_bar(binwidth = 50)
ggplot(quakes, aes(x = depth)) + stat_bin(binwidth = 50)

# Smoothing data
p <- ggplot(longley, aes(x = Year, y = Unemployed)) +
  geom_point()
p
p + stat_smooth()
p + stat_smooth(method = "lm")  # added linear regression line

# Adding facets
p <- ggplot(mtcars, aes(x = hp, y = mpg)) + geom_point()
p
p + stat_smooth(method = "lm") + facet_grid(~ cyl)

# Changing options
# working with scales
p <- ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point(aes(shape = factor(cyl), colour = factor(cyl)))
p
p + scale_shape_discrete(name = "Cylinders") +
  scale_colour_discrete(name = "Cylinders") 

ggplot(mtcars, aes(x = hp, y = mpg)) + geom_point(aes(shape = factor(cyl), colour = factor(cyl))) +     # added color
  xlab("Performance (horse power") + ylab("Fuel cnsumption (mpg)") +   # added xlab and ylab
  ggtitle("Motor car comparison")             # added title

ggplot(mtcars, aes(x = hp, y = mpg)) + geom_point(color = ("red")) +     # added color Red
  xlab("Performance (horse power") + ylab("Fuel cnsumption (mpg)") +   # added xlab and ylab
  ggtitle("Motor car comparison")             # added title





































