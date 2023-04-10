# How to Reproduce the Error
# create data frame
df <- data.frame(period = c(1, 2, 3, 4, 5, 6, 7, 8),
                 sales = c(14, 13, 10, 11, 19, 9, 8, 7),
                 returns = c('1', '0', '2', '1', '1', '2', '2', '3'))

# view data frame
df

# attempt to create new column called "net"
df$net <- df$sales - df$returns

# display class of "sales" column
class(df$class)

# display class of "returns" column
class(df$returns)

# create new column called "net"
df$net <- df$sales-as.numeric(df$returns)

# view updated data frame
df
