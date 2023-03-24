# Method 1: Replace Multiple Patterns with Nested gsub()
# create data frame
df <- data.frame(name=c('A', 'B', 'B', 'C', 'D', 'D'),
                 points=c(24, 26, 28, 14, 19, 12))

# view data frame
df

# replace multiple patterns in name column
df$name <- gsub("A", "Andy",
                gsub("B", "Bob",
                     gsub("C", "Chad", df$name)))

# view updated data frame
df

# Method 2: Replace Multiple Patterns with stringi
library("stringi")

# replace multiple paterns in name column
df$name <- stri_replace_all_regex(df$name,
                                  pattern = c("A", "B", "c"),
                                  replacement = c("Andy", "Bob", "Chad"),
                                  vectorize=FALSE)

# view updated data frame
df
