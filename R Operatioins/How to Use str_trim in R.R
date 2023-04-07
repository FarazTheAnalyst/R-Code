# Example 1: Trim Whitespace from Left Side
library("stringr")

# create string 
my_string <- "    Hey there everyone.  "

# view string
my_string

# create new string with white space removed from left
new_string <- str_trim(my_string, side="left")

# view new string 
new_string


# Example 2: Trim Whitespace from Right Side
library("stringr")

# create string
my_string <- "    Hey there everyone.    "

# view string
my_string

# create new string with white space remvoed form right
new_string <- str_trim(my_string, side="right")

# view new string
new_string

# Example 3: Trim Whitespace from Both Sides
library("stringr")

# create string
my_string <- "    Hey there everyone.    "

# view string
my_string

# create new string with white space removed from both sides
new_string <- str_trim(my_string, side="both")

# view new string 
new_string

























