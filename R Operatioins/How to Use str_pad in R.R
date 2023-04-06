# Example 1: Pad String with Spaces
library("stringr")

# create string
my_string <- "Rhino"

# pad string to length of 10
str_pad(my_string, width=10)

library("stringr")

# create string
my_string <- "Rhino"

# pad string to length of 10
str_pad(my_string, width=10, side="right")

# Example 2: Pad String with Specific Character
library("stringr")

# create string
my_string <- "Rhino"

# pad string to length of 10 using underscores
str_pad(my_string, width=10, pad="_")

# Example 3: Pad String with Specific Number of Characters
library("stringr")

# create string
my_string <- "Rhino"

# pad string with 5 A's
str_pad(my_string, width=nchar(my_string)+5, pad = "A")





















