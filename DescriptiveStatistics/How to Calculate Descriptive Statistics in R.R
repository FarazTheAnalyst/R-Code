# create data frame
df <- data.frame(x=c(1, 4, 4, 5, 6, 7, 10, 12),
                 y=c(2, 2, 3, 3, 4, 5, 11, 11),
                 z=c(8, 9, 9, 9, 10, 13, 15, 17))

# view data frame
df

# calculate descriptive statistics for each variable
summary(df)

# calculate descriptive statistics for "x" and "z" only
summary(df[ , c("x", "z")])

# calculate standard deviation for each variable
sapply(df, sd, na.rm=TRUE)

# calculate range for each variable
sapply(df, function(df) max(df, na.rm = TRUE)-min(df, na.rm = TRUE))

# define function that calculate mode
find_mode <- function(x){
  u <- unique(x)
  tab <- tabulate(match(x, u))
  u[tab == max(tab)]
}

# calculate mode for each variable
sapply(df, find_mode)











