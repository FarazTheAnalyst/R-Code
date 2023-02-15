# Create a vector of numeric values
numeric_values <- c(1, 3, 5, 8 ,9)

# display class of vectors
class(numeric_values)

# Display vector of numeric values
numeric_values

# Return fourth element in a vector
numeric_values[4]

# Create a vector of character values
char_values <- c("Bob", "Mike", "Tony", "Andy")

# Display class of vector
class(char_values)

# Display a vector of char values
char_values

# Return a 3rd element of the vector
char_values[3]

# create a data frame 
df <- data.frame(team=c("A","A", "B", "B", "C"),
                 points = c(12, 15, 17, 24, 45),
                 assists = c(4, 7, 7, 17, 12))

# display data frame
df

#display class of data frame
class(df)

#Return value in 3rd row in second column
df[3, 2]

#Create a matrix with two two columns and five rows
points = c(12, 15, 17, 13, 23)
assists = c(4, 7, 7, 8, 3)

#column bind two vectors together to create a matrix
mat <- cbind(points, assists)

#Display matrix
mat

#Display a class of matrix
class(mat)

#Return a fourth row and second column
mat[4, 2]


