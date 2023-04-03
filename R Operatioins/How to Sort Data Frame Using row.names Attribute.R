# Example 1: Sort Data Frame Using Character row.names
df <- data.frame(position=c('G', 'G', 'F', 'F', 'C'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# set row names of data frame
row.names(df) <- c("A", "C", "E", "D", "B")

# view data frame
df

# sort rows alphabetically using ro.names
df[order(row.names(df)), ]

# sort rows from z to A using row.names
df[order(row.names(df), decreasing = TRUE), ]

# Example 2: Sort Data Frame Using Numeric row.names
# create data frame
df <- data.frame(position=c('G', 'G', 'F', 'F', 'C'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# set row names of data frame
row.names(df) <- c(1, 100, 4, 12, 19)

# view data frame
df

# sort by row names from smallest to largest
df[order(as.numeric(row.names(df))), ]

# sort by row names from largest tosmallest
df[order(as.numeric(row.names(df)), decreasing = TRUE), ]
















