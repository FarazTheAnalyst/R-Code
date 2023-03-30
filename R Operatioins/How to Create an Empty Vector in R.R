# create empty vector with length zero and no specific class
empty_vec <- vector()

# display length of vector
length(empty_vec)

# add values 1 through 10 to emtpty vector
empty_vec <- c(empty_vec, 1:10)
# view updated vector
empty_vec

# Method 2: Create Empty Vector of Specific Class
# #create empty vector of class 'character'
empty_vec <- character()
class(empty_vec)

# create empty vector of class "numeric"
empty_vec <- numeric()
class(empty_vec)
numeric(0)

# create empty vector of class "logical"
empty_vec <- logical()
class(empty_vec)
logical(0)

# create empty vector with specific length
empty_vec <- rep(NA, times = 10)

# display empty vector
empty_vec
