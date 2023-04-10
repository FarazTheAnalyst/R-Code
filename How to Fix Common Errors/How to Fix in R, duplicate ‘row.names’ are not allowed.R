# This error usually occurs when you attempt to read a CSV file 
# into R that contains commas at the end of every row in the
# file except the header row.

# How to Reproduce the Error
# attempt to import CSV into data frame
df <- read.csv("my_data.csv")

# How to Fix the Error
# The way to fix this error is to simply use row.names=NULL
# when importing the file:

# import CSV file into data frame
df <- read.csv("my_data.csv", row.names = NULL)

# view data frame
df

# We are able to successfully import the CSV file, but the column 
# names are off.

# To fix this, we can modify the column names and then drop the
# last column:

# modify column names
colnames(df) <- colnames(df)[2:ncol(df)]

# drop last column
df <- df[1:(ncol(df)-1)]
