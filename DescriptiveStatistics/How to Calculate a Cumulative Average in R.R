# define data frame
df <- data.frame(day=seq(1:16),
                 sales=c(3, 6, 0, 2, 4, 1, 0, 1, 4, 7, 3, 3, 8, 3, 5, 5))

# view head of data frame
head(df)

# add new column that contains cumulative avg. of sales
df$cum_avg_sales <- cumsum(df$sales) / seq_along(df$sales)

# view updated data frame
df

# load dplyr
library(dplyr)

# add new column that contains cumulative avg. of sales
df$cum_avg_sales <- cummean(df$sales)
# view updated data frame
df














