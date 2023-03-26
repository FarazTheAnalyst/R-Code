# create data frame
df <- data.frame(a=c(1, 3, 4, 6, 8, 9),
                 b=c(7, 8, 8, 7, 13, 16),
                 c=c(11, 13, 13, 18, 19, 22),
                 d=c(12, 16, 18, 22, 29, 38))

# view data frame
df

# Example 1: Select Specific Columns Using Base R (by name)
# select columns by name
df[c("a", "b", "d")]

# Example 2: Select Specific Columns Using Base R (by index)
# select columns by index
df[c(1, 2, 4)]

# Example 3: Select Specific Columns Using dplyr (by name)
library("dplyr")

# select columns by name
df %>% 
  select(a, b, d)

# Example 4: Select Specific Columns Using dplyr (by index)
library("dplyr")

# select columns by index
df %>% 
  select(1, 2, 4)
