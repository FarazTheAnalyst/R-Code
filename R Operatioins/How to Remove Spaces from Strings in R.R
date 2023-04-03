# Example 1: Remove All Whitespaces Using gsub()
# create string
my_string <- "Check out this cool string"

# remove all whitespace from string
updated_string <- gsub(" ", "", my_string)

# view updated string
updated_string

# Example 2: Remove All Whitespaces Using str_replace_all()
library("stringr")

# create string
my_string <- "Check out this cool string"

# remove all whitespace from string
updated_string <- str_replace_all(my_string, " ", "")

# view updated string
updated_string

# Example 3: Remove Leading & Trailing Whitespaces Using str_trim()
# create string with leading whitespace
my_string <- "    Check out this cool string"

# remove all leading whitespace from string
updated_string <- str_trim(my_string, "left")

# view updated string
updated_string

library("stringr")

# create string with trailing whitespcae
my_string <- "Check out this cool string    "

# remove all trailing whitespcae from string
updated_string <- str_trim(my_string, "right")

# view updated string
updated_string







