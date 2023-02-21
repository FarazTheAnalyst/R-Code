install.packages("ISLR")
# load dataset
data <- ISLR::Default

# view first six rows of dataset
head(data)

# fit the logistic Regrssion model
# make this example reproducible
set.seed(1)

# use 70% of dataset AS training set and remaining 30% as testing set
sample <- sample(c(TRUE, FALSE), nrow(data), replace=TRUE, prob = c(0.7, 0.3))
train <- data[sample, ]
test <- data[!sample, ]

# fit logistic regression model
model <- glm(default~student+balance+income, family="binomial", data = train)


# calculate the AUC of the model
# calculate probability of default for each individual in test dataset
predicted <- predict(model, test, type="response")

# calculate AUC
install.packages("pROC")
library("pROC")

auc(test$default, predicted)
