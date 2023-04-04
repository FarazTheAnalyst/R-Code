# create matrix
mat <- matrix(1:21, nrow = 7)

# view matrix
mat

# Example 1: Convert Matrix to Data Frame Using Base R
# convert matrix to data frame
df <- as.data.frame(mat)

# specify columns of data frame
colnames(df) <- c("first", "second", "third")

# view structure of data frame
str(df)

# Example 2: Convert Matrix to Data Frame Using Tibble Package
library("tibble")

# convert matrix to tibble
df <- mat %>% 
  as_tibble() %>% 
  setNames(c("first", "second", "Third"))

# view tibble
df
