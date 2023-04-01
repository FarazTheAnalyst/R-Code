# How to Create a Nested For Loop in R
# nested for loop
for (i in 1:4) {
  print(i)
}

# nested for loop
for(i in 1:4) {
  for(j in 1:2) {
    print(i*j)
  }
}

# example 1: nested for loop in R
# create matrix
empty_mat <- matrix(nrow = 4, ncol = 4)

# view empty matrix
empty_mat

# use nested for loop to fill in values of matrix
for (i in 1:4) {
  for (j in 1:4) {
    empty_mat[i, j] = (i*j)
  }
}

# view matrix
empty_mat
empty_mat[i, j]

# Example 2: Nested For Loop in R

# create empty data frame
df <- data.frame(var1=c(1, 7, 4),
                 var2=c(9, 13, 15))
# view empty data frame
df

# use nested for loop to square each value in the data frame
for(i in 1:nrow(df)) {
  for (j in 1:ncol(df)) {
    df[i, j] =df[i, j]^2
  }
}

# view new data frame
df











