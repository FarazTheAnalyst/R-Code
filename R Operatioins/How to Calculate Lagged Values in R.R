# Example: Calculating Lagged Values in R
# create data frame
df <- data.frame(day=1:10,
                 sales=c(18, 10, 14, 13, 19, 24, 25, 29, 15, 18))

# view data frame
df

library("dplyr")

# add new column that shows sales for previous day
df$previous_day_sales <- dplyr::lag(df$sales, n=1)

# view updated data frame
df

library("dplyr")

# add new column that shows sales for two days prior
df_previous_day_sales <- dplyr::lag(df$sales, n=2)

# view updated data frame
df
