# A scale-location plot is a type of plot that displays the 
# fitted values of a regression model along the x-axis and the
# the square root of the standardized residuals along the y-axis.

# fit linear regression model
model <- lm(Ozone ~ Temp, data = airquality)

# produce scale-location plot
plot(model)

# Breusch-Pagan Test in R
# load lmtest package
library("lmtest")

# perform Bresuch-Pagan Test
bptest(model)
