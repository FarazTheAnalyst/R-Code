# create data frame
df <- data.frame(player=c('A', 'B', 'C', 'D', 'E'),
                 pts=c(17, 12, 0, 9, 25),
                 rebs=c(3, 3, 0, 0, 8),
                 blocks=c(1, 1, 2, 4, 0))

# view data frame
df

# Example 1: Replace Zero with NA in All Columns
# replace zero with NA in all columns
df[df == 0] <- NA

# view updated data frame
df

# create data frame
df <- data.frame(player=c('A', 'B', 'C', 'D', 'E'),
                 pts=c(17, 12, 0, 9, 25),
                 rebs=c(3, 3, 0, 0, 8),
                 blocks=c(1, 1, 2, 4, 0))

# Example 2: Replace Zero with NA in One Column
# replace zero with NA in "rebs" column only
df$rebs[df$rebs == 0] <- NA

# view data frame
df

# create data frame
df <- data.frame(player=c('A', 'B', 'C', 'D', 'E'),
                 pts=c(17, 12, 0, 9, 25),
                 rebs=c(3, 3, 0, 0, 8),
                 blocks=c(1, 1, 2, 4, 0))


# Example 3: Replace Zero with NA in Several Specific Columns
# replace zero with NA  values in "pts" and "rebs" columns only
df[, c("pts", "rebs")][df[, c("pts", "rebs")] == 0] <- NA

# view data frame
df



























