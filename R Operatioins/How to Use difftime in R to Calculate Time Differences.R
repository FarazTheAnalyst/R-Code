# difftime() function to calculate the time difference between
# two dates or datetimes 
# Example 1: Use difftime() to Calculate Time Difference in Various Units

# define two datetimes
first <- "2022-08-20 08-15:22"
second <- "2022-01-01 20:04:48"

# calculate times differenes in days
difftime(first, second)

# calculate time difference in seconds
difftime(first, second, units = "secs")

# calculate time difference in minutes
difftime(first, second, units = "mins")

# calculate time differece in weeks
difftime(first, second, units = "years")

# Example 2: Calculate Time Difference in HH:MM:SS Format
library("hms")

# deifne two datetimes
first <- "2022-01-01 20:15:22"
second <- "2022-01-01 08:04::48"

# calculate differece between datetimes in hours, minutes, seconds
as_hms(difftime(first, second))
