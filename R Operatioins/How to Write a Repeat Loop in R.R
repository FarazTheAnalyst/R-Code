# Example 1: Print Values Until Specific Number is Reached
# define starting value
x <- 0

# perform repeat-loop
repeat{
  x <- x+1
  print(x)
  
  if(x>=10){
    break
  }
}


# Example 2: Add Values to Vector Until Specific Number is Reached
# define empty vector and starting value
data <- c()
x <- 0

# perform repeat-loop
repeat{
  x <- x+1
  data[x] <- x
  print(data)
  
  if(x >=5){
    break
  }
}


# Example 3: Modify Values in Data Frame Until Specific Number is Reached
# define data frame and starting value
df <- data.frame(A=c(6, 7, 2, 8),
                 B=c(2, 4, 5, 5))

x <- 0

# perform repeat-loop
repeat{
  x <- x+1
  df$A[x] <- x
  df$B[x] <- x*2
  
  if(x >= nrow(df)){
    break
  }
}

# view resulting data frame
df





















