# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# view data frame
df

# Example 1: Convert One Data Frame Column to List in R
# convert pointss column to list
points_list <- list(df$points)

# view list
points_list

# display class of points_list
class(points_list)


# Example 2: Convert All Data Frame Columns to Lists in R
# convert all columns to lists
all_columns_list <- as.list(df)

# veiw lists
all_columns_list

# view first column as list
all_columns_list[1]
