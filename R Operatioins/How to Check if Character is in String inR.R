# Example 1: Check if Character is in String Using Base R
# define character to look for
my_character <- "Doug"

# define string
my_string <- "Hey my name is Douglas"

# check if "Doug" is in string
grepl(my_character, my_string, fixed = TRUE)

# check if "Doug" is in string
grepl(my_character, my_string, fixed = TRUE)

# define character to look for
my_character <- "Steve"

# define string
my_string <- "Hey my name is Douglas"

# check if "Steve" is in string
grepl(my_character, my_string, fixed = TRUE)

# Example 2: Check if Character is in String Using stringr Package
library(stringr)

# define chracter to look for
my_character <- "Doug"

# define string
my_string <- "Hey my name is Douglas"

# check if "Doug is in string
str_detect(my_string, my_character)

# define vector of characters to look for
my_character <- c("Doug", "Steve", "name", "He")

# define string
my_string <- "Hey my name is Douglas"

# check if each character is in string
str_detect(my_string, my_character)



















