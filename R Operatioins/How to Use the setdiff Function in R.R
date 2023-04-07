# The setdiff() function in R can be used to find 
# differences between two sets.
# Example 1: Setdiff with Numeric Vectors
# define vectors
a <- c(1, 3, 4, 5, 9, 10)
b <- c(1, 2, 3, 4, 5, 6)

# find all values in a that do not occur in b
setdiff(a, b)

# find all values in b that do not occur in a
setdiff(b, a)

# Example 2: Setdiff with Character Vectors
# define character vectors
char1 <- c('A', 'B', 'C', 'D', 'E')
char2 <- c('A', 'B', 'E', 'F', 'G')

# find all values in char1 that do not occur in char2
setdiff(char1, char2)

# Example 3: Setdiff with Data Frames
# define data frames
df1 <- data.frame(team=c('A', 'B', 'C', 'D'),
                  conference=c('West', 'West', 'East', 'East'),
                  points=c(88, 97, 94, 104))

df2 <- data.frame(team=c('A', 'B', 'C', 'D'),
                  conference=c('West', 'West', 'East', 'East'),
                  points=c(88, 97, 98, 99))

# find differences between the points columns in the two data frames
setdiff(df1$points, df2$points)
