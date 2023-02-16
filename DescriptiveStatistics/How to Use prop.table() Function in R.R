# create matrix
# x <- matrix(1:6, nrow = 2)

# view matrix
x

# Use prop.table with margin = NULL
prop.table(x)

# use prop.table with margin = 1 row
prop.table(x, margin = 1)

# use prop.table with margin = 2
prop.table(x, margin = 2)
