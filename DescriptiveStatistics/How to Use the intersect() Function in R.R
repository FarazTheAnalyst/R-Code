# use intersect() with vectors
# define two vectors
x <- c(1, 4, 5, 5, 9, 12, 19)
y <- c(1, 2, 5, 5, 10, 14, 19)

# find intersection between two vectors
intersect(x, y)

# intersect function also works with character vectors
# define two vectors
x <- c("A", "B", "C", "D", "E")
y <- c("C", "D", "E", "F")

# find intersection between two vectors
intersect(x, y)

# use intersect() with data frames
#  for data frames we must use intersect() function from the dplyr package
library("dplyr")

# define two data frames
df1 <- data.frame(team=c("A", "A", "B", "B"),
                   points=c(12, 20, 25, 19))

# view data frame
df1

# define second data frame
df2 <- data.frame(team=c("A", "A", "B", "C"),
                  points=c(12, 22, 25, 32))

# view data frame
df2

# find intersection between two data frames
dplyr::intersect(df1, df2)

# find number of rows in common between the two data frames
length(dplyr::intersect(df1, df2))



























