# Often you may want to remove one or more columns from a
# data frame in R. Fortunately this is easy to do using the
# select() function from the dplyr package.
library("dplyr")

# create data frame
df <- data.frame(player = c('a', 'b', 'c', 'd', 'e'),
                 position = c('G', 'F', 'F', 'G', 'G'),
                 points = c(12, 15, 19, 22, 32),
                 rebounds = c(5, 7, 7, 12, 11))

# view data frame
df

# Example 1: Remove Columns by Name
# remove column named "points"
df %>% select(-points)

# # create data frame
df <- data.frame(player = c('a', 'b', 'c', 'd', 'e'),
                 position = c('G', 'F', 'F', 'G', 'G'),
                 points = c(12, 15, 19, 22, 32),
                 rebounds = c(5, 7, 7, 12, 11))

# Example 2: Remove Columns in List
# remvoe column named "points" or "rebounds"
df %>% select(-one_of("points", "rebounds"))

# Example 3: Remove Columns in Range

# # create data frame
df <- data.frame(player = c('a', 'b', 'c', 'd', 'e'),
                 position = c('G', 'F', 'F', 'G', 'G'),
                 points = c(12, 15, 19, 22, 32),
                 rebounds = c(5, 7, 7, 12, 11))

# remove columns in range from "position" to "rebounds"
df %>% select(-(position:rebounds))

# Example 4: Remove Columns that Contain a Phrase
# remove columns that contain the word "points"
df %>% select(-contains("points"))

# Example 5: Remove Columns that Start with Certain Letters
# remove columns that start with "po"
df %>% select(-starts_with("po"))

# Example 6: Remove Columns that End with Certain Letters
# remove columns that end with "s"
df %>% select(-ends_with("s"))

# Example 7: Remove Columns by Position
# remove columns in position 1 and 4
df %>% select(-1, -4)















