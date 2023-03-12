# Stepwise regression is a procedure we can use to build
# a regression model from a set of predictor variables by 
# entering and~ removing predictors in a stepwise manner into
# the model until there is no statistically valid reason to enter
# or remove any more.

# view first six rows of mtcars
head(mtcars)

# Example 1: Forward Stepwise Selection
# define intercept-only model
intercept_only <- lm(mpg ~ 1, data = mtcars)

# define model with all predictors
all <- lm(mpg ~ ., data = mtcars)

# perofrm forward stepwise regressioni
forward <- step(intercept_only, direction = "forward", 
                scope = formula(all), trace = 0)

# view results of forward stepwise regression
forward$anova

# view final model
forward$coefficients

# Example 2: Backward Stepwise Selection
# define intercept-only model
intercept_only <- lm(mpg ~ 1, data = mtcars)

# define model with all predictors
all <- lm(mpg ~ ., data = mtcars )

# perform backward stepwise regression
backward <- step(all, direction = "backward", scope = formula(all),
                 trace = 0)

# view results of backward stepwise regression
backward$anova

# view final model
backward$coefficients

# Example 3: Both-Direction Stepwise Selection
# define intercept-only model
intercept_only <- lm(mpg ~ 1, data = mtcars)

# define model with all predictors
all <- lm(mpg ~ ., data = mtcars)

# perform backward stepwise regression
both <- step(intercept_only, direction = "both", scope = formula(all),
             trace = 0)

# view results of backward stepwise regression 
both$anova

# view final model
both$coefficients










