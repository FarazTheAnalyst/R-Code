# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# view data frame
df

# Example 1: Pass a String as Variable Name in dplyr Using get()
library(dplyr)

# define variable
my_var <- "team"

# attempt to filter for rows where team is equal to variable
df %>% filter(my_var == "A")

# One way to get around this is to wrap the variable name in the
# get() function:
library(dplyr)

# define variable 
my_var <- "team"

# filter for rows where team is equal to variable
df %>% filter(get(my_var) == "A")

# Example 2: Pass a String as Variable Name in dplyr Using .data
library(dplyr)

# define variable
my_var <- "team"

# filter for rows where team is equal to a variable
df %>% filter(.data[[my_var]] == "A")




























