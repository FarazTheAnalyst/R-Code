# load and view first six lines of mtcars
data(mtcars)
head(mtcars)

# create new data frame that contains only the variables we would like to use to
data <- mtcars[, c("mpg", "disp", "hp", "drat")]

# view first six rows of new data frame
head(data)

# we need to check if the predictor variables have a linear association with the response variable
pairs(data, pch = 18, col = "steelblue")

# install and load GGALLY library
install.packages("GGDally")
library("GGally")

# generate the pairs plot
ggpairs(data)

# fitting the model
model <- lm(mpg ~ disp + hp + drat, data = data)

# checking assumptions of the model
# the distribution of model residuals should be approximately normal
hist(residuals(model), col = "steelblue")

# the variance of the residuals should be consistent for all observations
# this preffered condition is knwon as homoskedasticity
# violation of this assumption is known as heterroskedasticity
# create fitted value vs residual plot
plot(fitted(model), residuals(model))

# add horizontal line at 0
abline(h = 0, lty = 2)

# interpreting the output of the model
summary(model)

# define the coefficients from the model output
intercept <- coef(summary(model))["(Intercept)", "Estimate"]
disp <- coef(summary(model))["disp", "Estimate"]
hp <- coef(summary(model))["hp", "Estimate"]
drat <- coef(summary(model))["drat", "Estimate"]

# use the model coefficients to predict the value for mpg
intercept + disp*220 + hp*150 + drat*3
intercept













