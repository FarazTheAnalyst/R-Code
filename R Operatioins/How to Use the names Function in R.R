# Example 1: Use names() Function with Vector
# create vector
my_vector <- c(5, 10, 15, 20, 25)

# view vector
my_vector

# set names for vector
names(my_vector) <- c("A", "B", "C", "D", "E")

# view updated vector
my_vector

# access value in that corresponds to "B" name
my_vector["B"]

# Example 2: Use names() Function with List
# create list 
my_list <- list(c(1, 2, 3), "hello", 10)

# view list
my_list

# set names for list
names(my_list) <- c("A", "B", "C")

# view updated list
my_list

# access value in list that corresonds to "c" name
my_list["C"]

# Example 3: Use names() Function with Data Frame
# create data frame
df <- data.frame(A=c('A', 'B', 'C', 'D', 'E'),
                 B=c(99, 90, 86, 88, 95),
                 C=c(33, 28, 31, 39, 34),
                 D=c(30, 28, 24, 24, 28))

# get names of data frame
names(df)

# set names of data frame
names(df) <- c("team", "points", "assists", "rebounds")

# view updated names of data frame
names(df)



















