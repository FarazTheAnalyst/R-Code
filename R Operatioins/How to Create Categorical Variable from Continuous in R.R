# Example: Create Categorical Variable from Continuous in R
# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'),
                 points=c(78, 82, 86, 94, 99, 104, 109, 110))

# view data frame
df

# add new column that cuts "points" into categories
df$cat <- cut(df$points,
              breaks = c(70, 80, 90, 100, 110),
              labels=c("Bad", "Ok", "Good", "Great"))

# view updated data frame
df

# check class of "cat" column
class(df$cat)

# coutn occurrences of each category in "cat" variable
table(df$cat)

# add new column that cuts "points" into categories
df$cat <- cut(df$points, breaks=c(70, 80, 90, 100, 110))

# view updated data frame
df
