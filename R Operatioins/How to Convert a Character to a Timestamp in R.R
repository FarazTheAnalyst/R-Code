# Example 1: Convert Character to Year-Month-Day Format
# create character variable
char <- "2021-10-15"

# display class of character vriable
class(char)

# convert character to timestamp
time <- strptime(char, "%Y-%m-%d")

# display timestamp variable
time

# display class of timestamp variable
class(time)

# Example 2: Convert Character to Hours-Minutes-Seconds Format
# create character variable
char <- "2021-10-15 4:30:00"

# convert character to timestamp
time <- strptime(char, "%Y-%m-%d %H:%M:%S")

# display timestamp variable
time

# Example 3: Convert Character to Timestamp and Specify Time Zone
# create character variable
char <- "2021-10-15"

# convert character to timestamp with specific time zone
time <- strptime(char, "%Y-%m-%d", tz="EST")

# display timestamp variable
time

# Example 4: Convert a Data Frame Column to Timestamp
# create data frame
df <- data.frame(date=c("2021-10-15", "2021-10-19", "2021-10-20"),
                 sales=c(4, 13, 19))

# display data frame
class(df$date)

# convert date column to timestamp
df$date <- strptime(df$date, "%Y-%m-%d")

# display class of date column
class(df$date)






















