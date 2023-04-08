# Example: Using createDataPartition() in R
# make this example reproducible 
set.seed(0)

# create data frame
df <- data.frame(hours=runif(1000, min=0, max=10),
                 score=runif(1000, min=40, max=100))

# view head of data frame
head(df)

library(caret)

# partition data frame into training and testing sets
train_indices <- createDataPartition(df$score, times=1, p=.8, list = FALSE)

# create training set
df_train <- df[train_indices, ]

# create testing set
df_test <- df[-train_indices, ]

# view number of rows in each set
nrow(df_train)

nrow(df_test)

# view head of training set
head(df_train)

# view head of testing set
head(df_test)
