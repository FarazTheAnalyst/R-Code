# create data frame
df <- data.frame(team=c('Mavericks', 'Lakers', 'Hawks', 'Nets', 'Warriors'),
                 points=c(100, 143, 129, 113, 123))

# view data frame
df

# Example 1: Extract Substring Starting from End Using Base R
# define function to extract n characters starting from end
substr_end <- function(x, n){
  substr(x, nchar(x)-n+1, nchar(x))
}

# create new column that extracts last 3 characters from team column
df$team_last3 <- substr_end(df$team, 3)

# view updated data frame
df

# Example 2: Extract Substring Starting from End Using stringr Package
library("stringr")

# create new column that extracts last 3 characters from team column
df$team_last3 <- str_sub(df$team, start = -3)

# view updated data frame
df
