# This error usually occurs for one of two reasons:
# Reason 1: You are attempting to reference an object you have not created.
# Reason 2: You are running a chunk of code where the object has not
# been defined in that chunk.
# Example #1: Object not found when object does not exist
# create data frame
my_df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                    points=c(99, 90, 86, 88, 95),
                    assists=c(33, 28, 31, 39, 34),
                    rebounds=c(30, 28, 24, 24, 28))

# attempt to display data frame
my_data

# Instead, we need to type the correct name of the data frame that we created:
# display data frame
my_df

# display the names of all objects in environment
ls()

# check if my_data exists
exists("my_data")

# Example #2: Object not found when incorrect chunk of code is highlighted
# Another reason that we might receive an object not found error
# is because we have highlighted a chunk of code to run in RStudio
# that doesn't contain the name of the object we're attempting toreference.
# create vector
x <- c(2, 2, 3, 4, 4, 9, 12, 15, 18, 22, 24)

# attempt to display mean of vector
mean(x)

# NOTE: if we select row 31, 32, and 33 then rstudio will say object not found
# if we select the row 30 to 33 then error will be removed