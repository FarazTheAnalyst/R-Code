
# This error occurs when you attempt to read a file into R 
# and use backslashes ( \ ) in the file path.

# There are two ways to fix this error:
  
  # Use forward slashes ( / ) in the file path.
# Use double back slashes ( \\ ) in the file path.How to Reproduce
# the Error
# attempt to read in CSV file
data <- read.csv("C:\Users\Faraz\Bob\Desktop\data.csv")

# Method 1: Fix Error by Using Forward Slashes
# read in CSV file using forward slashes in file path
data <- read.csv("C:/Users/Bob/Desktop/data.csv")

# view first five rows of data
head(data)

# Method 2: Fix Error by Using Double Back Slashes
# read in CSV file using double back slashes in file path
data <- read.csv("C:\\Users\\Bob\\Desktop\\data.csv")

# view first five rows of data
head(data)
