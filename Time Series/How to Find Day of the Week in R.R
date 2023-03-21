# load lubridate package
library("lubritdate")

# create data frame
df <- data.frame(date = c("2020-10-11", "2020-10-19", "2020-10-31"),
                 sales=c(435, 768, 945))

# view data frame
df

# Method 1: Find Numeric Day of Week (Assuming Week Starts on Sunday)
# find day of week 
df$weekday <- wday(df$date)

# view updated data frame
# 1 indicate sunday, 2 indicate Monday
df

# Method 2: Find Numeric Day of Week (Assuming Week Starts on Monday)
# find day of week
df$weekday <- wday(df$date, week_start = 1)

# Method 3: Find Character Day of Week (Using Abbreviated Labels)
# find day of week
df$weekday <- wday(df$date, label = TRUE)

# view updated data frame
df

# Method 4: Find Character Day of Week (Using Full Weekday Labels)
# find day of week
df$weekday <- wday(df$date, label=TRUE, abbr = FALSE)

# view updated data frame
df






















