# create data frame
df <- data.frame(date=as.Date(c('2022-04-01','2022-02-12','2022-06-13','2022-02-04',
                                '2022-07-01','2022-02-19','2022-12-03','2022-04-04')),
                 sales = c(12, 15, 24, 24, 14, 19, 12, 38))

# view data frame
df

# Example 1: Find Earliest Date in Column
# find earliest date in "date" column
min(df$date)

# Example 2: Find Row with Earliest Date in Column
# find row with earliest date in "date" column
df[which.min(df$date), ]
