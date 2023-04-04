# Example 1: Convert Timestamp to Date Using Base R
# define UNIX timestamp
value <- 1648565400

# convert UNIX timestamp to date object

new_date <- as.Date(as.POSIXct(value, origin = "1970-01-01"))

# view date object
new_date

# view class of date object
class(new_date)

# Example 2: Convert Timestamp to Date Using anytime Package
install.packages("anytime")
library("anytime")

# define UNIX timestamp
value <- 1648565400

# convert UNIX timestamp to date object
new_date <- anydate(value)

# view date object
new_date

# view class of date object
class(new_date)

# Example 3: Convert Timestamp to Date Using lubridate Package
library(lubridate)

# define UNIX timestamp
value <- 1648565400

# convert UNIX timestamp to date object
new_date <- as_date(as_datetime(value))

# view date object
new_date

# view class of date object
class(new_date)






























