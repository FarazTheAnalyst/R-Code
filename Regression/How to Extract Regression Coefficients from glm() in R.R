# Example: Extract Regression Coefficients from glm() in R
# load dataset
data <- ISLR::Default

# view first six rows of data
head(data)

# fit logistic regression model
model <- glm(default ~ student+balance+income, family = "binomial", data = data)

# view summary of logistic regression model
summary(model)

# extract all regressioin coefficients
model$coefficients

# extract coefficeints for "balance"
model$coefficients["balance"]

# view regression coefficients with standard errors, z values and p-values
summary(model)$coefficients

# view p-value for balance variable
summary(model)$coefficients["balance", "Pr(>|z|)"]

# view p-vlaue for all variables
summary(model)$coefficients[, 'Pr(>|z|)']
