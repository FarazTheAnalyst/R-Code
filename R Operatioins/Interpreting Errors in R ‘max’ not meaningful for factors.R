# At one point or another you may encounter the following error in R:
# 'max' not meaningful for factors
# This simply indicates that you are attempting to take the 'max'
# of a variable that is of the class factor.

# create a vector of class vector
factor_vector <- as.factor(c(1, 7, 12, 14, 15))

# attempt to find max value in the factor, through error
max(factor_vector)
class(factor_vector)

# convert factor vector to numeric vector and find the max value
new_vector <- as.numeric(as.character(factor_vector))
class(new_vector)
max(new_vector)

# create factor vector with naems of factors
factor_vector <- as.factor(c("first", "second", "third"))


# attempt to convet factor vector into numeric vector and find max value
new_vector <- as.numeric(as.character(factor_vector))

numeric_vector <- c(1, 2, 12, 14)
max(numeric_vector)

character_vector <- c("a", "b", "f")
max(character_vector)

date_vector <- as.Date(c("2019-01-01", "2019-03-05", "2019-03-04"))
max(date_vector)
























