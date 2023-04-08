# Example 1: Unexpected String Constant When Importing File
# attempt to import colon-delimited file not using sep equal sign
read.csv("C:\\Users\\DEL\\Documents\\data.csv", sep";" )

# import colon-delimited file
read.csv(read.csv("C:\\Users\\DEL\\Documents\\data.csv", sep=";" )

# Example 2: Unexpected String Constant When Viewing Data
# create numeric vector of values
data <- c(4, 4, 5, 6, 8, 10, 13, 15, 19, 18)

# attempt to view values
data""

# create numeric vector of values
data <- c(4, 4, 5, 6, 8, 10, 13, 15, 19, 18)

# view values
data

# Example 3: Unexpected String Constant When Creating Plots
# create numeric vector of values
data <- c(3, 3, 4, 5, 5, 7, 8, 12, 15, 16, 17, 19, 22, 25)

# attempt to create boxplot to visualize distribution of values
boxplot(data, col"steelblue")

# create numeric vector of values
data <- c(3, 3, 4, 5, 5, 7, 8, 12, 15, 16, 17, 19, 22, 25)

# create boxplot to visualize distribution of values
boxplot(data, col="steelblue")
