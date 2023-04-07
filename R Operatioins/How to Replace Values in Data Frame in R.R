# Example 1: Replace Particular Value Across Entire Data Frame
# create data frame
df <- data.frame(a = as.factor(c(1, 5, 7, 8)),
                 b = c('A', 'B', 'C', 'D'),
                 c = c(14, 14, 19, 22),
                 d = c(3, 7, 14, 11))

# view data frame
df

# replace "14" with "24" across entire data frame
df[df == 14] <- 24

# view data frame
df

# Example 2: Replace One of Several Values Across Entire Data Frame
# create data frame
df <- data.frame(a = as.factor(c(1, 5, 7, 8)),
                 b = c('A', 'B', 'C', 'D'),
                 c = c(14, 14, 19, 22),
                 d = c(3, 7, 14, 11))

# view  data frame
df

# replace "14" and "19"  with ""24" across entire data frame
df[df == 14 | df == 19] <- 24

# view updated data frame
df

# Example 3: Replace Value in Specific Column of Data Frame
# create data frame
df <- data.frame(a = as.factor(c(1, 5, 7, 8)),
                 b = c('A', 'B', 'C', 'D'),
                 c = c(14, 14, 19, 22),
                 d = c(3, 7, 14, 11))

# view data frame
df

# replace "14" in column c with "24"
df["c"][df["c"] == 14] <- 24

# view updated data frame
df

# Example 4: Replace Values of a Factor Variable in Data Frame
# create data frame
df <- data.frame(a = as.factor(c(1, 5, 7, 8)),
                 b = c('A', 'B', 'C', 'D'),
                 c = c(14, 14, 19, 22),
                 d = c(3, 7, 14, 11))

# attempt to replace "1" with "24" in column a this will through warning error
df["a"][df["a"]==1] <- 24

# to avoid this warning you need to first convert the factor variable 
# to  a numeric variable
# create data frame

df <- data.frame(a = as.factor(c(1, 5, 7, 8)),
                 b = c('A', 'B', 'C', 'D'),
                 c = c(14, 14, 19, 22),
                 d = c(3, 7, 14, 11))

# convert column "a" to numeric
df$a <- as.numeric(as.character(df$a))

# replace "1" with 24 in column "a"
df["a"][df["a"]==1] <- 24

# view updated data frame
df











