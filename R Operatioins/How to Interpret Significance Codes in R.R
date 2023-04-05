# significance code         p-value
# ***                 [0, 0.001]
# **              (0.001, 0.01]
# *               (0.01, 0.05]
# .                (0.05, 0.1]
# (0.1, 1] 

# Example: Significance Codes in Regression
# fit regression model using hp, drat, and wt as predictors
model <- lm(mpg ~ hp + drat + wt, data = mtcars)

# view model summary
summary(model)

# hp has a p-value of .001178. Since this value is in the range (0.001, 0.01],
# it has a significance code of **
# drat has a p-value of .198755. Since this value is in the range (0.1, 1],
# it has no significance code.
# wt has a p-value of .000364. Since this value is in the range [0, 0.001],
# it has a significance code of ***

# Example: Significance Codes in ANOVA
# fit onw-way ANOVA
model <- aov(mpg ~ gear, data = mtcars)

# view the model output
summary(model)
