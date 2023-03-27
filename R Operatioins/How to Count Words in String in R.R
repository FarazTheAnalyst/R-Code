# Example 1: Count Words Using Base R
# create string
my_string <- 'this is a string with seven words'

# count number of words in string
lengths(strsplit(my_string, " "))
        
# Example 2: Count Words Using stringi Package
library("stringi")

# create string 
my_string <- "this is a string with seven words"

# count number of words in string
stri_count_words(my_string)

# Example 3: Count Words Using stringr Package
library("stringr")

# create string 
my_string <- "this is a string with seven words"

# count number of words in string
str_count(my_string, "\\w+")
