# Example 1: Drop Unused Factor Levels in a Vector
# define data with 5 factor levels
data <- factor(c(1, 2, 3, 4, 5))

# define new data as original data minus 4th and 5th factor levels
new_data <- data[-c(4, 5)]

# view new data 
new_data

# drop unused factor levels
new_data <- droplevels(new_data)

# view data 
new_data

# Example 2: Drop Unused Factor Levels in a Data Frame
# create data frame
df <- data.frame(region=factor(c('A', 'B', 'C', 'D', 'E')),
                 sales = c(13, 16, 22, 27, 34))

# view data frame
df

# define new data frame
new_df <- subset(df, sales<25)

# view new data frame
new_df

# #check levels of region variable
levels(new_df$region)

# drop unused factor levels
new_df$region <- droplevels(new_df$region)

# check levels of region variable
levels(new_df$region)



















