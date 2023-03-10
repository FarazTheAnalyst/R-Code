# To gain an understanding of the relationship between one or
# more predictor variables and a response variable.
# To use a model to predict future observations.
# Cross validation is useful for estimating how well a model is 
# able to predict future observations.

# define dataset
data <- mtcars[ , c("mpg", "disp", "hp", "drat")]

# view first six rows of new data
head(data)

# Validation Set Approach

# load dply library used for data manipulation
library("dplyr")

# load caret library usef for parititoning data into training and test set
install.packages("caret")

library("caret")

# make this example reproducible
set.seed(0)

# define dataset
data <- mtcars[ , c("mpg", "disp", "hp", "drat")]

# split data into training set (80%) and test set (20%)
training_obs <- data$mpg %>% createDataPartition(p = 0.8,  list=FALSE)

train <- data[training_obs, ]
test <- data[-training_obs, ]
train

# build the linear regressioin model on the training set
model <- lm(mpg ~ ., data = train)

# use the model to make prediction on the test set
predictions <- model %>% predict(test)
predictions

# Examine R-squared, RMSE, and MAE of predictions
data.frame(R_squared = R2(predictions, test$mpg),
           RMSE = RMSE(predictions, test$mpg),
           MAE = MAE(predictions, test$mpg))

# k-fold cross validation Approch
# load dplyr library used for data manipulation
library("dplyr")

# load library used for partitioning data into training and test set
library("caret")

# make this example reproducible
set.seed(0)

# define the dataset
data <- mtcars[ , c("mpg", "disp", "hp", "drat")]

# define the number of subsets (or "folds") to use
train_control <- trainControl(method = "cv", number = 5)

# train the model
model <- train(mpg ~ ., data = data, method = "lm", trControl = train_control)

# Summarize the results
print(model)



# Leave One Out Cross Validation (LOOCV) Approach
# load dplyr library used for data manipulation
library("dplyr")

# load caret library used for partitioning data into training and test set
library("caret")

# make this example reproducible
set.seed(0)

# define the dataset
data <- mtcars[ , c("mpg", "disp", "hp", "drat")]

# specify that we want to use LOOCV
trian_control <- trainControl(method = "LOOCV")

# train the model
model <- train(mpg ~ ., data = data, method = "lm", trControl = train_control)

# summarize the results 
print(model)


# Repeated k-fold cross validation approch

# load dplyr library used for data manipulation
library("dplyr")

# load caret library used for partitioning data into training and test set
library("caret")

# maket this example reproducible
set.seed(0)

# deifne  the dataset
data <- mtcars[ , c("mpg", "disp", "hp", "drat")]
# define the number of subsets to use and number of times to repeat k-fold CV
train_control <- trainControl(method = "repeatedcv", number = 5, repeats = 4)

# train the model
model <- train(mpg ~ ., data = data, method = "lm", trControl = train_control)
# summarize the results
print(model)









































