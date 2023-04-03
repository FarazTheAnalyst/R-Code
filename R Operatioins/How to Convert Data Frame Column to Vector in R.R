# create data frame
df <- data.frame(a=c(1, 2, 5, 6, 12, 14),
                 b=c(8, 8, 9, 14, 22, 19),
                 c=c(3, 3, 2, 1, 2, 10))

# display data frame
df

# example 1; use $ operator
# convert column "a" to vector
new_vector <- df$a

# view vector
new_vector

# view class of vector
class(new_vector)

# Example 2: Use Indexing
# convert column "a" to vector
new_vector <- df[["a"]]

# view vector
new_vector

# view class of vector
class(new_vector)

# Example 3: Use 'pull' from dplyr
library("dplyr")

# convert column "a"  to vector
new_vector <- pull(df, a)

# view vector
new_vector

# view class of vector
class(new_vector)






















