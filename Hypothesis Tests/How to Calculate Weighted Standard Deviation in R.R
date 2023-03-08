#define data values
x <- c(4, 7, 12, 13)

#define weights
wt <- c(.5, 1, 2, 2)

# calculate weighted variance
install.packages("Hmisc")
library("Hmisc")
weighted_var <- wtd.var(x, wt)

# calculate weighted standard deviation
weighted_sd <- sqrt(weighted_var)
weighted_sd

# define data values
x <- c(14, 19, 22, 25, 29, 31, 31, 38, 40, 41)

# define weights
wt <- c(1, 1, 1.5, 2, 2, 1.5, 1, 2, 3, 2)

# calculate weighted variance
weighted_var <- wtd.var(x, wt)

# calculate weighted standard deviation
sqrt(weighted_var)

# Example 2: Weighted Standard Deviation for One Column of Data Frame

#define data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'A', 'B', 'B', 'C'),
                 wins=c(2, 9, 11, 12, 15, 17, 18, 19),
                 points=c(1, 2, 2, 2, 3, 3, 3, 3))

# define weights
wt <- c(1, 1, 1.5, 2, 2, 1.5, 1, 2)

# calculate weighted standard deviation of points
sqrt(wtd.var(df$points, wt))


# Example 3: Weighted Standard Deviation for Multiple
# Columns of Data Frame

# #define data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'A', 'B', 'B', 'C'),
                 wins=c(2, 9, 11, 12, 15, 17, 18, 19),
                 points=c(1, 2, 2, 2, 3, 3, 3, 3))

# define weights 
wt <- c(1, 1, 1.5, 2, 2, 1.5, 1, 2)

# calculate weighted standard deviation of points and wins
sapply(df[c("wins", "points")], function(x) sqrt(wtd.var(x, wt)))








































