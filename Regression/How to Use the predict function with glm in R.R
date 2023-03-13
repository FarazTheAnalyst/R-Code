# Example: Using the predict function with glm in R
# view first six rows of mtcars data frame
head(mtcars)

# We'll fit the following logistic regression model in which we 
# use the variables disp and hp to predict the response 
# variable am (the transmission type of the car: 0 = automatic,
# 1 = manual).
model <- glm(am ~ disp + hp, data = mtcars, family = binomial)

# view model summary
summary(model)

# We can then use this model to predict the probability that
# a new car has an automatic transmission (am=0) or a manual
# transmission (am=1) by using the following code:

# define new observation
newdata = data.frame(disp=200, hp = 100)

# use model to predict value of am
predict(model, newdata, type="response")

# define new data frame of three cars
newdata = data.frame(disp=c(200, 180, 160),
                     hp=c(100, 90, 108))

# view data frame
newdata

# use model to preidct value of an for all three cars
predict(model, newdata, type = "response")
























