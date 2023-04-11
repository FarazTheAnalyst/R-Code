# This warning occurs when you attempt to read a CSV file into R
# but the final line in the file is not blank.

# How to Reproduce the Warning
# import CSV file
df <- read.csv("my_data.csv")

# view imported data frame
df

# Method 1: How to Avoid the Warning
# import CSV file and suppress any warnings
df <- suppressWarnings(read.csv('my_data.csv'))

# view data frame
df

# Method 2: How to Avoid the Warning
# Specifically, we can go to the last line of the file and press
# Enter to create a new blank line at the end of the file:

# import CSV file
df <- read.csv("my_data.csv")

# view data frame
df
