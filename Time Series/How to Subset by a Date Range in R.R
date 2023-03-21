# Example 1: Subset Between Two Dates

# make this example reproducible
set.seed(0)

# create data frame
df <- data.frame(date = as.Date("2021-01-01") -0:99,
                 sales = runif(20, 10, 500) + seq(50, 69)^2)

# view first six rows
head(df)

# subset between two dates, inclusive
df[df$date >= "2020-12-25" & df$date <= "2020-12-28", ]

# make this example reproducible
set.seed(0)

# create data frame
df <- data.frame(date = as.Date("2021-01-01") - 0:19,
                 sales = runif(20, 10, 500) + seq(50, 69)^2)

# subset between two dates, exclusive
df[df$date > "2020-12-25" & df$date < "2020-12-28", ]

# Example 2: Subset After a Certain Date

# make this example reproducible
set.seed(0)

# create data frame
df <- data.frame(date = as.Date("2021-01-01") - 0:19,
                 sales = runif(20, 10, 500) + seq(50, 69)^2)

# subset after a certain date
df[df$date >= "2020-12-22", ]

# Example 3: Subset Before a Certain Date
# meke this example reproducible
set.seed(0)

# create data frame
df <- data.frame(date = as.Date("2021-01-01") - 0:19,
                 sales = runif(20, 10, 500) + seq(50, 69)^2)

#subset before a certian date
df[df$date < "2020-12-22", ]
















