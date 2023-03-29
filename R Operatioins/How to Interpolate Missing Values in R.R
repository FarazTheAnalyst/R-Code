# Example: Interpolate Missing Values in R
# create data frame
df <- data.frame(day=1:15,
                 sales=c(3, 6, 8, 10, 14, 17, 20, NA, NA, NA, NA, 35, 39, 44, 49))

# view data frame
df

# create line chart to visualize sales
plot(df$sales, type = "o", pch=16, col="steelblue", xlab = "Day", ylab = "Sales")

library(dplyr)
library(zoo)

# interpolate missing values in "sales" column
df <- df %>% 
  mutate(sales = na.approx(sales))

# view updated data frame
df

# create line chart to visualize sales
plot(df$sales, type="o", pch=16, col="steelblue", xlab = "Day", ylab="Sales")
