# Step 1: Fit the Logistic Regression Model
# load necessary packages
library("caret")
library("InformationValue")
library("ISLR")

# load dataset
data <- Default

# split dataset into training and testing set
# split dataset into training and testing set
set.seed(1)
sample <- sample(c(TRUE, FALSE), nrow(data), replace = TRUE, prob = c(0.7, 0.3))
train <- data[sample, ]
test <- data[!sample, ]

# fit logistic regression model
model <- glm(default~student+balance+income, family="binomial", data = train)

# step: create the confusion matrix
# use model to predict probability of default
predicted <- predict(model, test, type = "response")

# convert defaults from "Yes", and "No" to 1's and 0's
test$default <- ifelse(test$default=="Yes", 1, 0)

# find optimal cutoff probability to use to maximize accuracy
optimal <- optimalCutoff(test$default, predicted)[1]

# create confusion matrix
confusionMatrix(test$default, predicted)

# Step 3: Evaluate the Confusion Matrix
# calculate sensitivity
sensitivity(test$default, predicted)

# calculate specificity
specificity(test$default, predicted)

# calculate total misclassification error rate
misClassError(test$default, predicted, threshold=optimal)













