# One of the main assumptions of linear regression is that the residuals
# are normally distributed.

# create the data
# make this example reproducible
set.seed(0)

# create data
x1 <- rnorm(n=100, 2, 1)
x2 <- rnorm(100, 4, 3)
y <- rnorm(100, 2, 3)
data <- data.frame(x1, x2, y)

# view first six rows of data
head(data)

# Step 2: Fit the Regression Model
# fit multiple linear regression model
model <- lm(y ~ x1 + x2, data = data)

# step3: create Histogram of Residuals
# load ggolot2
library("ggplot2")

# create histogram of residuals
ggplot(data = data, aes(x=model$residuals)) +
  geom_histogram(fill = "steelblue", color = "black") + 
  labs(title = "Histogram of Residuals", x = "Residuals", y = "Frequency")

# changing bin siz
# create histogram of residuals
ggplot(data = data, aes(x = model$residuals)) +
  geom_histogram(bins = 20, fill = "steelblue", color = "black") +
  labs(title = "Histogram of Residuals", x = "Residuals", y = "Frequency")

# create histogram of resuduals bins = 10
ggplot(data = data, aes(x = model$residuals)) +
  geom_histogram(bins = 10, fill="steelblue", color = "black") +
  labs(title = "Histogram of Resiudals", x = "Resiudals", y = "Frequency")




















