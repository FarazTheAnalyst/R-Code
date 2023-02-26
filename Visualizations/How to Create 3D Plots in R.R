# basic 3D plot
# define x and y
x <- -10:10
y <- -10:10

# define function to create z-values
z_values <- function(x, y) {
  sqrt(x^2 + y^2)
}

z_values

# create z_values
z <- outer(x, y, z_values)
z
# create 3D plot
persp(x, y, z)

# custom 3D  plot
# define x and y
x <- -10:10
y <- -10:10

# define function to create z_values
z_values <- function(x, y) {
  sqrt(x^2 + y^2)
}

# create z-values
z = outer(x, y , z_values)

# create 3D plot
persp(x, y, z, xlab = "X Variable", ylab = "Y Varable", zlab = "Z Varable", 
      main = "3D Plot", col="pink", shade = 4)

# Rotate the 3D plot
#define function to create z-values
z_values <- function(x, y) {
  sqrt(x ^ 2 + y ^ 2)
}

#create z-values
z = outer(x, y, z_values)

#create 3D plot
persp(x, y, z, xlab='X Variable', ylab='Y Variable', zlab='Z Variable',
      main='3D Plot', col='pink', shade=.4, theta = 30, phi = 15)

# Add Tick Marks to the 3D Plot
#define x and y
x <- -10:10
y <- -10:10

#define function to create z-values
z_values <- function(x, y) {
  sqrt(x ^ 2 + y ^ 2)
}

#create z-values
z = outer(x, y, z_values)

#create 3D plot
persp(x, y, z, xlab='X Variable', ylab='Y Variable', zlab='Z Variable',
      main='3D Plot', col='pink', shade=.4, theta = 30,)
#define x and y
x <- -10:10
y <- -10:10
      
      #define function to create z-values
      z_values <- function(x, y) {
        sqrt(x ^ 2 + y ^ 2)
      }
      
      #create z-values
      z = outer(x, y, z_values)
      
      #create 3D plot
      persp(x, y, z, xlab='X Variable', ylab='Y Variable', zlab='Z Variable',
            main='3D Plot', col='pink', shade=.4, theta = 30, phi = 15, ticktype = "detailed")












