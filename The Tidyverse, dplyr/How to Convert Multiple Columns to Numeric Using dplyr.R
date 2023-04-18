# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                 position=c('G', 'G', 'G', 'F', 'F'),
                 assists=c('33', '28', '31', '39', '34'),
                 rebounds=c('30', '28', '24', '24', '28'))

# view structure of data frame
str(df)

library("dplyr")

# convert assists and rebounds columns to numeric
df <- df %>% mutate_at(c("assists", "rebounds"), as.numeric)

# view structure of updated data frame
str(df)

# Example 2: Convert All Character Columns to Numeric
# create data frame
df <- data.frame(ranking=factor(c(1, 4, 3, 2, 5)),
                 assists=c('12', '10', '8', '11', '15'),
                 points=c('33', '28', '31', '39', '34'),
                 rebounds=c('30', '28', '24', '24', '28'))

# view structure of data frame
str(df)
library("dplyr")

# convert all character column to numeric
df <- df %>% mutate_if(is.character, as.numeric)

# view structure of updated data frame
str(df)
