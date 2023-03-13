# Poisson regression is a special type of regression in which the
# response variable consists of "count data." The following examples
# illustrate cases where Poisson regression could be used:

# make this example reproducible
set.seed(0)

# create dataset
data <- data.frame(offers = c(rep(0, 50), rep(1, 30), rep(2, 10), rep(3, 7), rep(4, 3)),
                 division = sample(c("A", "B", "C"), 100, replace = TRUE),
                 exam = c(runif(50, 60, 80), runif(30, 65, 95), runif(20, 75, 95)))

# understanding the data
# view dimensions of dataset
dim(data)

# view first six lines of dataset
head(data)
data

# view summary of each variable in dataset
summary(data)

# view mean exam score by number of offers
library(dplyr)
data %>% 
  group_by(offers) %>% 
  summarise(mean_exam = mean(exam))

# load ggplot2 package
library(ggplot2)

# create histogram
ggplot(data, aes(offers, fill = division)) +
  geom_histogram(binwidth = .5, position = "dodge")

# fitting the possion Regression Model

# fit the model
model <- glm(offers ~ division + exam, family = "poisson", data = data)

# view model ouput
summary(model)

# the residual deviance, which has a value of 74.032 on 96 degrees
# of freedom. Using these numbers, we can conduct a Chi-Square goodness of fit test to see if the model fits the data
pchisq(74.032, 96, lower.tail = FALSE)

# visualizing the results
# find predicted number of offers using the fitted Poisson model
data$phat <- predict(model, type = "response")

# create plot that shows number of offers based on division and exam score
ggplot(data, aes(x = exam, y = phat, color = division)) + 
  geom_point(aes(y = offers), alpha = .7, position = position_jitter(h=.2)) +
  geom_line() +
  labs(x = "Entrance Exam Score", y = "Expected number of scholarship offers")

































