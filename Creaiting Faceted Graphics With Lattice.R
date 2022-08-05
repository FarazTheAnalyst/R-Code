# Creating a Lattice Plot
str(mtcars)
transform.mtcars <- transform(mtcars,
          cyl = factor(cyl),
          am = factor(am, labels = c("Automatic", "Manual")),
          cars = rownames(mtcars))

# Loading the lattice package
library("lattice")

# Making a lattice scatter plot
 xyplot(mpg ~ hp | cyl, data = transform.mtcars)

# Adding trend lines
xyplot(mpg ~ hp | cyl, data = transform.mtcars, type = c("p", "r"))

# Changing Plot Options
# Adding titles and labels
library(lattice)
xyplot(mpg ~ hp | cyl, data = transform.mtcars,
       type = c("p", "r"),
       main = "Fuel economy vs. Performance",
       xlab = "Performance (horse power)",
       ylab = "Fuel economy (mpg)"
       )

# Changing the font size of titles and labels
xyplot(mpg ~ hp | cyl, data = transform.mtcars,
        type = c("p", "r"),
        main = list(
          label = "Fuel economy vs. Performance given Number of Cylinders",
          cex = 0.75),
       xlab = list(
         cex = 0.75),
       ylab = list(
         label = "Fuel economy (mpg)",
         cex = 0.75
       ),
       scales = list(cex = 0.5)
        )

# Using themes to modify plot options
xyplot(mpg ~ hp | cyl, data = transform.mtcars,
       type = c("p", "r"),
       par.settings = simpleTheme(col = "red", col.line = "blue", lwd = 2,
                ))

# Plotting Different Types
# one dimensional strip plot
set.seed(1)                         
x <- round(runif(100))   
y <- x + rnorm(100)

print(x)
print(y)
stripplot(x ~ y  ,main = "Strip chart", xlab = "x_value", ylab = "y_value") # without jitter 
stripplot(x ~ y , jitter.data = TRUE ,main = "Strip chart", xlab = "x_value", ylab = "y_value")   # with jitter

# Making a bar chart
barchart(cars ~ mpg |cyl, data = transform.mtcars,
         main = "barchart",
         scales = list(cex = 0.5),
         layout = c(3, 1))

barchart(cars ~ mpg |cyl, data = transform.mtcars,
         main = "barchart",
         scales = list(cex = 0.75),
         layout = c(3, 1))

# Making a box-and-Whisker plot
bwplot(~ hp | cyl, data = transform.mtcars, main = "bwplot")

# Plotting Data in Groups
# Using data in tall format
longley
str(longley)
library("reshape2")
mlongley <- melt(longley, id.vars = "Year")
mlongley
str(mlongley)
xyplot(value ~ Year | variable, data = mlongley,
       layout = c(6, 1), col = "purple", pch = 19,
       par.strip.text = list(cex = 0.75),
       scales = list(cex = 0.75))

# Creating a chart with groups
 barchart(cars ~ mpg | cyl, data = transform.mtcars,
          group = am,
          scales = list(cex = 0.75),
          layout = c(3, 1))

 # Adding a key
 plot.colours <- c("blue", "orange")
barchart(cars ~ mpg | cyl, data = transform.mtcars,
         main = list(label = "barchart with groups", cex = 1.5),
         group = am,
         auto.key = TRUE,
         par.settings = simpleTheme(col = plot.colours, border =  plot.colours),
         scales = list(cex = 0.75),
         layout = c(3, 1))

# Printing and Saving a Lattice Plot 
# Assigning a lattice plot to an object
my.plot <- xyplot(mpg ~ hp | cyl, data = transform.mtcars)
class(my.plot)
# Printing a lattice plot in script
xyplot(mpg ~ hp | cyl, data = transform.mtcars)
my.plot <- xyplot(mpg ~ hp | cyl, data =  transform.mtcars)
print(my.plot)

# Saving a lattice plot to file
trellis.device(device = "png", filename = "xyplot.png")
trellis.device(device = "pdf", file = "xyplot.pdf")
print(my.plot)
dev.off()
getwd()
setwd("C:/Users/DELL/Desktop")

origwd <- getwd()
origwd
setwd("~/") # Set the working directory here
# do stuff
setwd(origwd)




















































