# create data frame
df <- data.frame(name=c('Andy', 'Bert', 'Chad', 'Derrick', 'Eric', 'Fred'),
                 sales=c(18, 22, 19, 14, 14, 11))

# view data frame
df

# Example 1: Remove Last Character Using Base R
# remove last character
df$name = substr(df$name, 1, nchar(df$name)-1)

# Example 2: Remove Last Character Using stringr Package

library("stringr")

# remove last character from each string in "name" column
df <- data.frame(name=c('Andy', 'Bert', 'Chad', 'Derrick', 'Eric', 'Fred'),
                 sales=c(18, 22, 19, 14, 14, 11))
df$name <- str_sub(df$name, end = -2)
df

