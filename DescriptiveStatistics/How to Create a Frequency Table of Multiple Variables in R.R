# create data frame
df <- data.frame(var1=c(1, 1, 2, 2, 2, 2, 3),
                 var2=c('A', 'A', 'A', 'A', 'B', 'B', 'B'),
                 var3=c(6, 7, 7, 7, 8, 8, 9))

# view first few rows of data frame
head(df)

# calculate frequency table for every variable in data frame
apply((df), 2, table)

# frequency table for specific varaibles in R
df <- data.frame(var1=c(1, 1, 2, 2, 2, 2, 3),
                 var2=c('A', 'A', 'A', 'A', 'B', 'B', 'B'),
                 var3=c(6, 7, 7, 7, 8, 8, 9))

# calculate frequency for var1 and var3 columns
apply((df[c("var1", "var3")]), 2, table)

# frequency table for all but one varible in R
# create data frame
df <- data.frame(index=c(1, 2, 3, 4, 5, 6, 7),
                 var2=c('A', 'A', 'A', 'A', 'B', 'B', 'B'),
                 var3=c(6, 7, 7, 7, 8, 8, 9))

apply((df[-1]), 2, table)
