# Example 1: Use ntile() with a Vector
library("dplyr")

# create vector
x <- c(1, 3, 4, 6, 7, 8, 10, 13, 19, 22, 23)

# break up vector into 5 buckets
ntile(x, 5)

# Example 2: Use ntile() with a Data Frame
# create data frame
df <- data.frame(player=LETTERS[1:9],
                 points=c(12, 19, 7, 22, 24, 28, 30, 19, 15))

# view data frame
df

library("dplyr")

# create new column that assigns players into buckets based on points
df$bucket <- ntile(df$points, 3)

# view updated data frame
df
