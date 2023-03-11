# Logarithmic regression is a type of regression used to model 
# situations where growth or decay accelerates rapidly at first
# and then slows over time.

# create the data
x=1:15
y=c(59, 50, 44, 38, 33, 28, 23, 20, 17, 15, 13, 12, 11, 10, 9.5)

# visualize the data
plot(x, y)

# fit the logarithmic Regression Model
# fit the model
model <- lm(y~log(x))

# summary the output of the model
summary(model)

# visualize the  logarithmatic Regression Model
# plot x vs. y
plot(x, y)

# define x-values to use for regression line
x=seq(from=1, length.out = 1000)

# use the model to predict the y-values based on the x-values
y=predict(model, newdata = list(x), interval="confidence")

# add the fitted regression  line to the plot (lwd specifies the width of the line)
matlines(x, y, lwd=2)
