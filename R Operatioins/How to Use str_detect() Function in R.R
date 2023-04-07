# Example 1: Use str_detect() with String
library("stringr")

# create string
x <- "hey there everyone"

# determine if "hey" is present in string
str_detect(x, "hey")

# determine if "hey" is present in string
str_detect(x, "hey")

library(stringr)

# create string 
x <- "hey there everyone"

# determine if "Hey" is present in string str_detect
# Note that str_detect() is case-sensitive as well:
str_detect(x, "Hey")

library(stringr)

# create string
x <- c("hello", "heyo", "hi", "hey")

# determine if "hey" is present in each element of vector
str_detect(x, "hey")

# Example 3: Use str_detect() with Data Frame
library(stringr)

# create data frame
df <- data.frame(team=c("Mavs", "Heat", "Pacers", "Cavs"),
                 points=c(99, 90, 86, 103))

# subset data frame based on teams that have "avs" in the name
df[str_detect(df$team, "avs"), ]



































