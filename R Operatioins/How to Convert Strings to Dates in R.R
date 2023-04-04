# Example 1: Convert a Single String to a Date
# create string value
x <- c("2021-07-24")

# convert string to date
new <- as.Date(x, format = "%Y-%m-%d")
new

# check class of new variable
class(new)

# Example 2: Convert a Vector of Strings to Dates
# create vector of strings
x <- c("2021-07-24", "2021-07-26", "2021-07-30")

# convert string to date
new <- as.Date(x, format = "%Y-%m-%d")
new

# check class of new variable
class(new)

# Example 3: Convert a Data Frame Column to Dates
# create data frame
df <- data.frame(day = c("2021-07-24", "2021-07-26", "2021-07-30"),
                 sales=c(22, 25, 28),
                 products=c(3, 6, 7))

# view structure of data frame
str(df)

# convert day variable to date
df$day <- as.Date(df$day, format = "%Y-%m-%d")

# view structure of new data frame
str(df)

# Example 4: Convert Multiple Data Frame Columns to Dates
# create data frame
df <- data.frame(start = c("2021-07-24", "2021-07-26", "2021-07-30"),
                 end = c("2021-07-25", "2021-07-28", "2021-08-02"),
                 products=c(3, 6, 7))

# view structure of data frame
str(df)

# convert start and end variables to date
df[, c("start", "end")] <- lapply(df[, c("start", "end")],
                                  function(x) as.Date(x, format = "%Y-%m-%d"))

# view structure of new data frame
str(df)














































