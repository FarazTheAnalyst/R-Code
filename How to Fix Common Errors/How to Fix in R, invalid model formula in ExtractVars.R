# How to Reproduce the Error
# create data frame
df <- data.frame(rating=c(88, 94, 99, 90, 76, 78, 81, 88),
                 points=c(14, 17, 22, 24, 25, 22, 29, 31),
                 assists=c(7, 7, 6, 12, 10, 11, 17, 2),
                 rebounds=c(7, 8, 8, 12, 9, 5, 11, 15))

# view data frame
df

library("rpart")

# attempt to fit decision tree model to data
model <- rpart(rating ~ "points", "assists", + "rebounds", data = df)

# How to Fix the Error
# The way to fix this error is to simply remove the quotations
# around the variable names and write the formula as follows
library(rpart)

# fit decision tree model
model <- rpart(rating ~ points + assists + rebounds, data = df)

# view summary of model
summary(model)

