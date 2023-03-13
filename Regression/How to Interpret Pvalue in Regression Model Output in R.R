# Example: How to Interpret Pr(>|t|) Values
# create data frame
df <- data.frame(x1=c(1, 3, 3, 4, 4, 5, 6, 6),
                 x2=c(7, 7, 5, 6, 5, 4, 5, 6),
                 y=c(8, 8, 9, 9, 13, 14, 17, 14))

# fit multiple linear regression model
model <- lm(y ~ x1 + x2, data = df)

# view model summary 
summary(model)

# The p-value for the predictor variable x1 is .0325. 
# Since this value is less than .05, it has a statistically
# significant relationship with the response variable in 
# the model.
# The p-value for the predictor variable x2 is .3732. Since this
# value is not less than .05, it does not have a statistically 
# significant relationship with the response variable in the 
# model.
# The significance codes under the coefficient table tell us 
# that a single asterik (*) next to the p-value of .0325 means
# the p-value is statistically significant at ?? = .05.

# How is Pr(>|t|) Actually Calculated?
# Step 1: Calculate the t value
# t value = Estimate / Std. Error
1.4758 / .5029

# calculate the p-value
# p-value = 2*pt(abs(t value), residual df, lower.tail = FALSE)
# calculate p-value 
2*pt(abs(2.935), 5, lower.tail  = FALSE)

# Note: The value for the residual degrees of freedom
# can be found near the bottom of the regression output. 
# In our example, it turned out to be 5:
# Residual standard error: 1.867 on 5 degrees of freedom





















