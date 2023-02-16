# using the source function in R
#define function that divides values by 2
# even though these functions could be created in another script not in this script
divide_by_two <- function(x) {
  return(x/2)
}

#define function that multiplies values by 3
multiply_by_three <- function(x) {
  return(x*3)
}


source("some_functions.R")

# create data frame
df <- data.frame(team=c("A", "B", "C", "D", "E", "F"),
                 points=c(14, 19, 22, 15, 30, 40))

# view data frame
df

# create new columns using functions from some_functions.R
df$half_points <- divide_by_two(df$points)

df$triple_points <- multiply_by_three((df$points))

# view updated data frame
df

















