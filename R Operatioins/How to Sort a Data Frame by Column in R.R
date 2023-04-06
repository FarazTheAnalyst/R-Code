# create data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=letters[1:5])

# view data frame
df

# Example 1: Sort by One Column
# sort by var1 ascending
df[order(df$var1), ]

# sort by var1 descending
df[order(-df$var1), ]

# we can also sort by character vector
# sort by var3 ascending 
df[order(df$var3), ]

# Example 2: Sort by Multiple Columns
# sort by var2 ascending, then var1 ascending
df[order(df$var2, df$var1), ]

# sort by var2 ascending, then var1 descending
df[order(df$var2, -df$var1), ]
