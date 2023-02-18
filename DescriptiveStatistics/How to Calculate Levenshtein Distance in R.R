# load stirngdist package

install.packages("stirngdist")
library("stirngdist")

# calculate levenshtein distance between two stirns
stringdist("party", "park", method="lv")

#  Levenshtein Distance Between Two Vectors

# define vectors
a <- c('Mavs', 'Spurs', 'Lakers', 'Cavs')
b <- c('Rockets', 'Pacers', 'Warriors', 'Celtics')

# #calculate Levenshtein distance between two vectors
stringdist(a, b, method = "lv")

# Levenshtein Distance Between Data Frame Columns

#define data
data <- data.frame(a = c('Mavs', 'Spurs', 'Lakers', 'Cavs'),
                   b = c('Rockets', 'Pacers', 'Warriors', 'Celtics'))

# calculate levenshtein distance
stringdist(data$a, data$b, method = "lv")

# save levenshtain distance as vector
lev <- strindist(data$a, data$b, method="lv")

# append levenshtein distance as new column
data$lev <- lev

# view data frame
data
















