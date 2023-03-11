# veiw dataFrame
df <- data.frame(x=c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14),
                 y=c(1, 4, 7, 13, 19, 24, 20, 15, 13, 11, 15, 18, 22, 27))

# view first six rows of data frame
head(df)

# fit several LOESS regression models to dataset
loess50 <- loess(y ~ x, data = df, span=.5)
smooth50 <- predict(loess50)

loess75 <- loess(y ~ x, data = df, span = .75)
smooth75 <- predict(loess75)

loess90 <- loess(y ~ x, data = df, span = .9)
smooth90 <- predict(loess90)

# create scatterplot with each regression line overlaid
plot(df$x, df$y, pch = 19, main = "Loess Regression Models")
lines(smooth50, x = df$x, col="red")
lines(smooth75, x=df$x, col="purple")
lines(smooth90, x=df$x, col="blue")
legend("bottomright", legend=c(".5", ".75", ".9"),
       col=c("red", "purple", "blue"), pch = 19, title = "Smoothing Span")

# Use K-Fold Cross Validation to Find the Best Model
library("caret")

# define k-fold corss validation method
ctrl <- trainControl(method = "cv", number = 5)
grid <- expand.grid(span = seq(0.5, 0.9, len=5), degree = 1)

# perform cross-validation using smoothing spans ranginf from 0.5 to 0.9
model <- train(y ~ x, data = df, method = "gamLoess", tuneGrid=grid, trControl = ctrl)

# print results of k-fold cross-validation
print(model)




















