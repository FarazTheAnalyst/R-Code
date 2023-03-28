# create data frame
df = data.frame(team=c('A', 'B', 'C', 'D', 'E', 'F'),
                points=c(18, 22, 19, 14, 14, 11),
                assists=c(5, 7, 7, 9, 12, 9),
                playoffs=c(TRUE, FALSE, FALSE, TRUE, TRUE, TRUE))

# view data frame
df

# Example 1: Get All Column Names
# get all column names
colnames(df)

# Example 2: Get Column Names in Alphabetical Order
# get column names in alphabetical order
sort(colnames(df))

# get column names in reverse alphabetical order
sort(colnames(df), decreasing = TRUE)

# Example 3: Get Column Names with Specific Data Type
# view data type of each column
str(df)

# get all columns that have data type of numeric
colnames(df[, sapply(df, is.numeric)])
