# Often you may be interested in arranging the rows of
# a data frame in R in a specific order. Fortunately this
# is easy to do using the arrange() function from the dplyr library.

# create data frame
df <- data.frame(player = c('A', 'B', 'C', 'D', 'E', 'F', 'G'),
                 points = c(12, 14, 14, 15, 20, 18, 29),
                 assists = c(3, 5, 7, 8, 14, NA, 9))

# view data frame
df

# Example 1: Arrange by One Column
library("dplyr")

df %>% arrange(points)

# To sort in descending order, we can use the desc() function
df %>% arrange(desc(points))

# Note NA's will be sorted to the end whether or not you
# sort ascending or descending

df %>% arrange(assists)

df %>% arrange(desc(assists))

# Example 2: Arrange by Multiple Columns

# sort by points, then assists
df %>% arrange(points, assists)

# sort by points ascending, then assists descending
df %>% arrange(points, desc(assists))

# Example 3: Arrange Rows in a Custom order
# sort by player with custom order
df %>% arrange(factor(player, levels = c("D", "C", "A", "B", "E", "F", "G")))


























