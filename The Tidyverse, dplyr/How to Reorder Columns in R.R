# create data frame
df <- data.frame(player = c('a', 'b', 'c', 'd', 'e'),
                 position = c('G', 'F', 'F', 'G', 'G'),
                 points = c(12, 15, 19, 22, 32),
                 rebounds = c(5, 7, 7, 12, 11))

# view data frame
df

# Example 1: Move a Column to the First Position
# move column "points  to first position
df %>% select(points, everything())

# Example 2: Move a Column to the Last Position
# move column "points" to last position
df %>% select(-points, points)

# Example 3: Reorder Multiple Columns
# change all column names
df %>% select(rebounds, position, points, player)

# Example 4: Reorder Columns Alphabetically
# order columns alphabetically
df %>% select(order(colnames(.)))

# Example 5: Reverse Column Order
# reverse column order
df %>% select(rebounds:player, everything())
