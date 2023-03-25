# create data frame
df <- data.frame(store=c('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'),
                 sales=c(12, 24, 23, 59, 45, 34, 50, 77))

# view data frame
df

# Example 1: Scale Values Between 0 and 1 Using Base R
# deifne function to scale valeus between 0 and 1
scale_values <- function(x){(x-min(x))/(max(x)-min(x))}

# scale values in  "sales" column to be between 0 and 1
df$sales <- scale_values(df$sales)

# view updated data frame
df

# Example 2: Scale Values Between 0 and 1 Using scales Package
library("scales")

# scales values in "sales" column to be between 0 and 1
df$sales <- rescale(df$sales)

# view updated data frame
df

# scale values in "sales" column to be between 0 and 100
df$sales <- rescale(df$sales, to = c(0, 100))

# view updated data frame
df
