# Example 1: Check Data Type of One Variable
# define variable x 
x <- c("Andy", "Bob", "Chad", "Dave", "Eric", "Frank")

# check data type of x
class(x)

# Example 2: Check Data Type of Every Variable in Data Frame
# create data frame
df <- data.frame(x=c(1, 3, 4, 4, 6),
                 y=c("A", "B", "C", "D", "E"),
                 z=c(TRUE, TRUE, FALSE, TRUE, FALSE))

# view data frame
df

# find data type of every variable in data frame
str(df)

# Example 3: Check if Variable is Specific Data Type
# create data frame
df <- data.frame(x=c(1, 3, 4, 4, 6),
                 y=c("A", "B", "C", "D", "E"),
                 z=c(TRUE, TRUE, FALSE, TRUE, FALSE))

# check if x column is numberic
is.numeric(df$x)

# check if every column in data frame is numeric
sapply(df, is.numeric)
