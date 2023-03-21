# Example 1: Count Number of Business Days Between Two Dates in R
install.packages("bizdays")
library("bizdays")

# create business calender
business_calender <- create.calendar("my_calnder", weekdays = c("saturday", "sunday"))

# calculate number of business days between two dates
bizdays(from = "2022-01-01", to = "2022-12-31", cal = business_calender)

# Example 2: Add & Subtract Business Days from Date in R

# make this example reproducible
set.seed(1)

# create data frame
df <- data.frame(date = as.Date("2022-01-01") + 0:249,
                 sales = runif(n=250, min=1, max=30))

# view head of data frame
head(df)

library("bizdays")

# create business calendar
business_calender <- create.calendar("my_calendar", weekdays = c("saturday", "sunday"))

# add 10 business days to each date
df$date <- bizdays::offset(df$date, 10, cal = business_calender)

# view updateed head of data frame
head(df)

library("bizdays")

# create business calendar
business_calender <- create.calendar("my_calendar", weekdays = c("saturday", "sunday"))

# subtract 10 business days to each date
df$date <- bizdays::offset(df$date, -10, cal = business_calender)

# view updated head of data frame
head(df)















