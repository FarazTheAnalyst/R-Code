# create vector
my_vector <- c(2, 7, 6, 6, 9,10, 14,13, 4, 20, NA)

# calculate length of vector
length(my_vector)

# excluding NA
my_vector <- c(2, 7, 6, 6, 9,10, 14,13, 4, 20, NA)

# calculate length of vector, excluding NA values
sum(!is.na(my_vector))
# use length() with list

# create list
my_list <- list(A=1:5, B=c("hey", "hi"), C=c(3, 5, 7))

# calculate length of entire list
length(my_list)

# calculate length of first element in list
length(my_list[[1]])

# use length() with data frame
# create data frame
df <- data.frame(team=c("A", "B", "B", "B", "C", "D"),
                  points=c(10, 15, 29, 24, 30, 31))
# view data frame
df

# calculate length of data frame(returns number of columns)
length(df)

# calculate number of rows in data frame
nrow(df)

# use length () with string
# define string
my_string <- "hey there"

# calculate length of string
length(my_string)

# calculate total characters in string
nchar(my_string)




















