# You can use the strptime and strftime functions in R to
# convert between character and time objects.

# The strptime function converts characters to time objects and
# uses the following basic syntax:
# Example 1: Use strptime Function in R
# create character vector
char_data <- c("2022-01-01", "2022-01-25", "2022-02-14", "2022-03-19")

# view class of vector
class(char_data)

# convert characters to time objects
time_data <- strptime(char_data, format="%Y-%m-%d")

# view new vector
time_data

# view class of new vector
class(time_data)

# Note that we can also use the tz argument to convert the characters 
# to time objects with a specific time zone
# convert character to time objects in EST time zone
time_data <- strptime(char_data, format="%Y-%m-%d", tz="EST")

# view new vector 
time_data

# Example 2: Use strftime Function in R
# create vector of time objects
time_data <- as.POSIXct(c("2022-01-01", "2022-01-25", "2022-02-14"))

# view class of vector
class(time_data)

# We can use the strftime function to convert the 
# time objects to characters:
# convert time objects to characters
char_data <- strftime(time_data)

# view new vector
char_data

# view class of new vector
class(char_data)






















