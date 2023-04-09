# How to Reproduce the Error
# attempt to import CSV into data frame
df <- read.table("basket_ball.csv", header = TRUE)

# How to Fix the Error
# import CSV file into data frame
df <- read.table("basketball_data.csv", header = TRUE, sep = ",")

# view data frame
df

# Alternatively, we could just use read.csv() to import the file if
# we know that it is a CSV file:
# import CSV file into data frame
df <- read.csv("basketball_data.csv", header = TRUE)

# view data frame
df
