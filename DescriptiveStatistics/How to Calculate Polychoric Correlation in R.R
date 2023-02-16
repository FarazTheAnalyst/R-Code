install.packages("plycor")
library("polycor")

#define movie ratings for each agency
agency1 <- c(1, 1, 2, 2, 3, 2, 2, 3, 2, 3, 3, 2, 1, 2, 2, 1, 1, 1, 2, 2)
agency2 <- c(1, 1, 2, 1, 3, 3, 3, 2, 2, 3, 3, 3, 2, 2, 2, 1, 2, 1, 3, 3)

# calculate polychoric correlation between rating
polychor(agency1, agency2)

# define ratings for each resturant
restaurant1 <- c(1, 1, 2, 2, 2, 3, 3, 3, 2, 2, 3, 4, 4, 5, 5, 4, 3, 4, 5, 5)
restaurant2 <- c(4, 3, 3, 4, 3, 3, 4, 5, 4, 4, 4, 5, 5, 4, 2, 1, 1, 2, 1, 4)

# calculate  polychoric correlation between ratings
polychor(restaurant1, restaurant2)





























