# Data Visualizations in R

installed.packages("datasets")
plot(ChickWeight)

# base graphics

library(MASS)
plot(UScereal$sugars, UScereal$calories)
title("plot(UScereal$sugars, UScereal$calories)")

x <- UScereal$sugars
y <- UScereal$calories
library("grid")

# grid graphics
pushViewport(plotViewport())
pushViewport(dataViewport(x, y))
grid.rect()
grid.xaxis()
grid.yaxis()
grid.points(x, y)
grid.text("UScereal$calories", x = unit(-3, "lines"), rot = 90)
grid.text("UScereal$sugars", y = unit(-3, "lines"), rot = 0)
popViewport(2)


# pie chart for different products and units sold

# create data for pie chart

x <- c(34, 65, 88, 23)
labels <- c("shampoo", "soap", "oil", "sanitazir")

# plot the chart
pie(x, labels)

pie(x, labels, main = "Grocery items pie chart", col = rainbow(length(x)))

piepercent <- round(100*x/sum(x), 1)

pie(x, labels = piepercent, main = "Grocery items pie chart", col = rainbow(length(x)))
      legend("topright", c("shampoo", "soap", "oil", "sanitizer"), cex = 0.8, 
             fill = rainbow(length(x)))

      
# 3D pie chart
      
# Get library 
      
install.packages("plotrix")      
library("plotrix")      

x <- c(66, 43, 32, 89)      
ldl <- c("shampoo", "soap", "oil", "sanitizer")      

# plot the chart
pie3D(x, labels = ldl, explode = 0.2, main ="Grocery items 3D pie chart")


# Create data for graph
v <- c(9, 23, 22, 8, 36, 22, 22, 41, 32, 37, 12)

# Create histogram
hist(v, xlab = "weight", col = "green", border = "red")

hist(v, xlab =  "weight", col = "green", border = "red", xlim = c(0,40), ylim = c(0,5), breaks = 5)


data("airquality")      
View(airquality)      

# use the plot function to draw a scatter plots

# plot a graph between Ozone and Wind values.
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, airquality$Wind, col = " red")
plot(airquality$Ozone, airquality$Wind, type = "h", col = "blue") # Histogram

plot(airquality)

# Assign labels to the plot
plot(airquality$Ozone, airquality$Wind, xlab = "ozone concentration", ylab = "No of instances", main = "Ozone level in  NY city", col = "green")

# Histogram
hist(airquality$Solar.R)

hist(airquality$Solar.R,  main = "Solar Radiation values in air", xlab = "Solar rad", ylab = "frequency")

temperature <- (airquality$Temp)
hist(temperature)

# Histogram with labels
h <- hist(temperature, ylim = c(0, 40))
text(h$mids, h$counts, labels = h$counts, adj = c(0.5, -0.5))

# Histogram with non-uniform width

hist(temperature,
     main = "Maximum daily temperature at La Guardia Airport",
     xlim = c(50, 100),
     xlab = "Temperature in Degrees Fahrenheit",
     col = "chocolate",
     breaks = c(55, 60, 70, 75, 80, 100))

# Boxplot

boxplot(airquality$Solar.R)

# Multiple box plot
boxplot(airquality[ , 0:4], main = "multiple Box plot")

# Using ggplot2 library to analyse  mtcars data set

install.packages("ggplot2")
library("ggplot2")
attach(mtcars)

p1 <- ggplot(mtcars, aes(factor(cyl), mpg))
p1 + geom_boxplot()

p1 + geom_boxplot() + coord_flip()

p1 + geom_boxplot(aes(fill = factor(cyl)))

# creating factors with values labels

mtcars$gear <- factor(mtcars$gear, levels = c(3, 4, 5),
                      labels = c("3gears", "4gears", "5gears"))
mtcars$am <- factor(mtcars$am, levels = c(0, 1),
                   labels = c("Automatic", "Manual"))
mtcars$cyl <- factor(mtcars$cyl, levels = c(4, 6, 8),
                     labels = c("4cyl", "6cyl", "8cyl"))

mtcars$gear
mtcars$cyl
View(mtcars)

# Scatter plot
View(mtcars)

ggplot(data = mtcars, mapping = aes(x = wt, y = mpg)) + geom_point()

# Scatter plot by factors

ggplot(data = mtcars, mapping = aes(x = wt, y = mpg, col = "red")) + geom_point()

# Scatter plot by size
p
ggplot(data = mtcars, mapping = aes(x = wt, y = mpg, size = qsec)) + geom_point()

ggplot(data = mtcars, mapping = aes(x = wt, y = mpg, col = "red",  size = qsec)) + geom_point()

ggplot(data = mtcars, mapping = aes(x = wt, y = mpg, color = qsec,  size = qsec)) + geom_point()


#-------Visualization using mpg data set-------

ggplot2 :: mpg
View(ggplot2 :: mpg)

#Barplot
ggplot(data = ggplot2 :: mpg, aes(class)) + geom_bar()

# Stacked bar chart
ggplot(data = ggplot2 :: mpg, aes(class)) + geom_bar(aes(fill = drv))

# Using Dodge
ggplot(data = ggplot2 :: mpg, aes(class)) + geom_bar(aes(fill = drv), position = "dodge")

ggplot(data = ggplot2 :: mpg) + 
         geom_point(mapping = aes(x = displ, y = hwy))
ggplot(data = ggplot2 :: mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))


# Using plotly library

install.packages("plotly")
library("plotly")

p <- plot_ly(data = mtcars, x = ~hp, y = ~wt,
             marker = list(size = 10, color = "rgba(255, 182, 193, 9)",
                           line = list(color = "rgba(5, 8, 6, 10)", width = 2)))
p

p <- plot_ly(data = mtcars, x = ~hp, y = ~wt, color = ~hp, size = ~hp)
p










      