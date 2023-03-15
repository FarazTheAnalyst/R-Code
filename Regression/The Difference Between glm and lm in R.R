# using the lm() Function
# fit multiple lineaer regression model
model <- lm(mpg ~ disp + hp, data = mtcars)

# view model summary
summary(model)

# fit multiple lineaer regression model
model <- glm(mpg ~ disp  + hp, data = mtcars)

# view model summary
summary(model)

# fit logistic regression model
model <- glm(am ~ disp + hp, data = mtcars, family = binomial)

# view model summary
summary(model)

# fit Poisson regression model
model <- glm(am ~ disp + hp, data = mtcars, family=poisson)

# view model summary summary(model)
