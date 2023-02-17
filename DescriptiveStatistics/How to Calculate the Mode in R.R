# calculate the mode of A numeric vector
# define function to calculate mode
find_mode <- function(x) {
  u <- unique(x)
  tab <- tabulate(match(x, u))
  u[tab == max(tab)]
}

# define numeric vector
data <- c(1, 2, 2, 3, 4, 4, 4, 4, 5, 6)

# find mode
find_mode(data)

# define function to calculate mode
find_mode <- function(x) {
  u <- unique(x)
  tab <- tabulate(match(x, u))
  u[tab == max(tab)]
}

# define numberic vector with multiple modes
data <- c(1, 2, 2, 2, 2, 4, 4, 4, 4, 5, 6)
# find mode
find_mode(data)

# calculate the mode of a character vector
# defne function to calculate mode
find_mode <- function(x) {
  u <- unique(x)
  tab <- tabulate(match(x, u))
  u[tab == max(tab)]
}

# define character vector
data <- c("Sunny", "Cloudy", "Sunny", "Sunny", "Rainy", "Cloudy")


# find mode
find_mode(data)



















