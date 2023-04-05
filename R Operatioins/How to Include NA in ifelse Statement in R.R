# Example: Include NA in ifelse Statement in R
# create data frame
df <- data.frame(player=c('A', 'B', 'C', 'D', 'E', 'F'),
                 conf=c('West', NA, 'West', 'East', 'East', 'East'),
                 points=c(30, 35, 11, 18, 14, NA))

# view data frame
df

# create new column called "class"
df$class <- ifelse(df$conf == "West", "West_Player", "Other")

# view updated data frame
df

# Notice that the value for class in row 2 is equal to NA since the
# corresponding value in the conf column was equal to NA.
# To avoid this, we can use the !is.na() function as follows:
# create new column called "class"
df$class <- ifelse(df$conf == "West" & !is.na(df$conf), "West_Player", "Other")

# view updated data frame
df
