# Example 1: Print Values in Range
# print every value in range 1 to 10
for(i in 1:10){
  print(i)
}

# Example 2: Perform Operation on Values in Range
# define vector
x <- c(4, 7, 9, 12, 14, 16, 19)

# print square root of every value in vector
for (i in 1:length(x)) {
  print(paste("The square root of the value in position", i, "is", sqrt(x[i])))
}

# Example 3: Perform Operation on Values in Data Frame
# define data frame
df <- data.frame(a=c(3, 4, 4, 5, 8),
                 b=c(8, 8, 7, 8, 12),
                 c=c(11, 15, 19, 15, 11))

# view data frame
df

# multiply every value in column "a" by 2
for(i in 1:length(df$a)) {
  df$a[i] = df$a[i]*2
}

# view updated data frame
df
