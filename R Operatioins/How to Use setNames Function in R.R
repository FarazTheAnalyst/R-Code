# Example 1: Use setNames with Vector
# create vector
data <- c(1, 3, 4, 4)

# create names for vector
names(data) <- c("points", "rebounds", "blocks", "steals")

# view vector
data

# create vector with names
data <- setNames(c(1, 3, 4, 4), c("points", "rebounds", "blocks", "steals"))

# view vector
data

# Example 2: Use setNames with List
# create list with names and return list
setNames(list(c(1, 2), 3:6, c("A", "B")), c("points", "steals", "team"))
