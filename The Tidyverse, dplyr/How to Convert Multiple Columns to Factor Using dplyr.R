# Example 1: Convert Specific Columns to Factor
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'C', 'C', 'D'),
                 position=c('G', 'G', 'F', 'F', 'G', 'G', 'F', 'F'),
                 starter=c('Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'N'),
                 points=c(12, 24, 25, 35, 30, 14, 19, 11))

# view structure of data frame
str(df)

library("dplyr")

# convert team and position columns to factor
df <- df %>% mutate_at(c("team", "position"), as.factor)

# view structure of updated data frame
str(df)

# Example 2: Convert All Character Columns to Factor
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'C', 'C', 'D'),
                 position=c('G', 'G', 'F', 'F', 'G', 'G', 'F', 'F'),
                 starter=c('Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'N'),
                 points=c(12, 24, 25, 35, 30, 14, 19, 11))

# view  structure of data frame
str(df)

library("dplyr")

# convert all character columns to factor
df <- df %>% mutate_if(is.character, as.factor)

# view structure of updated data frame
str(df)



















