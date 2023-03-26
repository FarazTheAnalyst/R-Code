# create data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=c(3, 3, 6, 10, 12),
                 var4=c(14, 16, 22, 19, 18))

# view data frame
df

# Example 1: Drop Columns by Name
# remove columns var1 and var3
new_df <- subset(df, select = -c(var1, var3))

# view updated data frame
new_df

# Example 2: Drop Columns by Index
# remove first and fourth columns
new_df <- subset(df, select=-c(1, 4))

# view updated data frame
new_df

# Example 3: Drop Columns in List
# define list of columns to remove
remove_cols <- c("var1", "var4")

# remove columns in list
new_df <- subset(df, select = !(names(df) %in% remove_cols))

# remove columns in list
new_df

# Example 4: Drop Columns in Range
# remove columns in range of 1 to 3
new_df = subset(df, select = -c(1:3))

# view updated data frame
new_df


























