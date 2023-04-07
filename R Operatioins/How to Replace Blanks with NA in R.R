# How to Replace Blanks with NA in R
# create data frame
df <- data.frame(team=c("A", "B", "", "D", "E"),
                 position=c("G", "", "F", "F", ""),
                 points=c(33, 28, 31, 39, 34))	

# view data frame
df

# Example 1: Replace Blanks with NA in One Column
# replace all blanks in position column with NA values
df$position[df$position ==""] <- NA

# view updated data frame
df

# Example 2: Replace Blanks with NA in All Columns
library(dplyr)

# replace blanks in every column with NA values
df <- df %>% mutate_all(na_if, "")

# view updated data frame
df
