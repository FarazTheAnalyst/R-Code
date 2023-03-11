# 1. Exponential growth: Growth begins slowly and then accelerates
# rapidly without bound.

x=1:20
y=c(1, 3, 5, 7, 9, 12, 15, 19, 23, 28, 33, 38, 44, 50, 56, 64, 73, 84, 97, 113)

# visualize the data
plot(x, y)

# fit the exponential Regression Model
# fit the model
model <- lm(log(y) ~ x)

# view the output of the model
summary(model)
