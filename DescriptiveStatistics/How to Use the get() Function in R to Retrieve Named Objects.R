# use get() to retrieve one object
# define vector of values
data1 <- c(4, 5, 5, 6, 13, 18, 19, 15, 12)

# get vector of valeus
get("data1")

# define vector of values
data1 <- c(4, 5, 5, 6, 13, 18, 19, 15, 12)

# attempt to get vector of values, through error 
get("data0")

# use get0() to retrieve object, using custom error message
# define vector of valeus
data1 <- c(4, 5, 5, 6, 13, 18, 19, 15, 12)

# attempt to get vector of valeus
get0("data0", ifnotfound = "does not exist")

# use mget() to retrive multiple objects
# define three vectors
data1 <- c(4, 5, 5, 6, 13, 18, 19, 15, 12)
data2 <- c("A", "B", "C", "D")
data3 <- c(10, 20, 25, 30, 35)

# get all three vectors
mget(c("data1", "data2", "data3"))







