# scale the values in a vector
# define vector of values
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)

# view mean and standard deviation of values
mean(x)

sd(x)

# scale the values of x
x_scaled <- scale(x)

# view scaled values
x_scaled

# scale the values of x but don't divide by standard devaiation
x_scaled <- scale(x, scale = FALSE)

# view scaled values
x_scaled

# scale column values in a data frame
# create data frame
df <- data.frame(x=c(1, 2, 3, 4, 5, 6, 7, 8, 9),
                 y=c(10, 20, 30, 40, 50, 60, 70, 80, 90))

# view data frame
df

# the scale() function to scale the values in both columns such that the 
# scaled values of x and y both have a mean of 0 and a standard deviation of 1
# scale values in each column of data frame
df_scaled <- scale(df)

# view scaled data frame
df_scaled
mean(df_scaled$x)













