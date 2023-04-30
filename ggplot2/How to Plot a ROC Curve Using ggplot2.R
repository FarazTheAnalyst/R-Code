# Example: ROC Curve Using ggplot2
# load Default dataset form ISLR book
data <- ISLR::Default

# divide dataset into training and test set
set.seed(1)

sample <- sample(c(TRUE, FALSE), nrow(data), replace = TRUE, prob=c(0.7, 0.3))
sample
train <- data[sample, ]
test <- data[!sample, ]
test

# fit logistic regression model to training set
model <- glm(default~student+balance+income, family = "binomial", data=train)

# use model to make prediction on test set
predicted <- predict(model, test, type="response")
predicted

# load necessary packages
library("ggplot2")
library("pROC")

# define  object to plot
rocobj <- roc(test$default, predicted)

# create ROC plot
ggroc(rocobj)

# load necessary packages
library("ggplot2")
library("pROC")

# define object to plot and calculate AUC
rocobj <- roc(test$default, predicted)
auc <- round(auc(test$default, predicted),4)

# create ROC plot
ggroc(rocobj, colour = "steelblue", size=2) + 
  ggtitle(paste0("ROC Curve ", "(AUC = ", auc, ")"))

# Note that we can also modify the theme of the plot:
# create ROC plot with minimal theme
ggroc(rocobj, colour = "steelblue", size = 2) +
  ggtitle(paste0("ROC Curve ", "(AUC = ", auc, ")")) + 
  theme_minimal()




















