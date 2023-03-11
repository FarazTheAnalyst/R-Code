# create data
x=1:20
y=c(1, 8, 5, 7, 6, 20, 15, 19, 23, 37, 33, 38, 49, 50, 56, 52, 70, 89, 97, 115) 

# visualize the data
# create scatterplot
plot(x, y)

# fit the power Regression Model
# fit the model
model <- lm(log(y) ~ log(x))

# view the output of the mdoel
summary(model)


