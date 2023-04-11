# I receive an error because this file doesn't exist 
# in the current working directory.

# How to Fix the Error
# display current directory
getwd()

# set current directory
setwd("C:\\Users\\Faraz\\Desktop")

# read in csv file
df <- read.csv("data.csv", header=TRUE, stringsAsFactors = FALSE)

# read in CSV file using entire file path
df <- read.csv("C:\\Users\\Faraz\\Desktop\\data.csv", header = TRUE, stringsAsFactors = FALSE)

# view data 
df
