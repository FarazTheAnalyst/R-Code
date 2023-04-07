# create data frame
df <- data.frame(team=c('A', 'A', 'B', 'B', 'B'),
                 points=c(99, 90, 90, 88, 88),
                 assists=c(33, 28, 31, 30, 34),
                 rebounds=c(30, 30, 24, 24, 28))

# view data frame
df

# Method 1: Replace Values in Entire Data Frame
# replace all values in data frame to 30 with 0
df[df==30] <- 0

# view updated data frame
df

# Method 2: Replace Values in Specific Column
# replace all values equal to 90 in "points" column with 0
df$points[df$points == 90] <- 0

# view updated data frame
df

# Method 3: Replace Values in Specific Column Based on Another Column
# replace all values equal to 90 in "points" column with 0
df$points[df$team == "B"] <- 0

# view updated data frame
df
