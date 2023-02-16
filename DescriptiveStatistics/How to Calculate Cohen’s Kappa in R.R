install.packages("psych")
library("psych")

# define vector of ratings for both raters
rater1 = c(0, 1, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0)
rater2 = c(0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0)

# calculate  Cohen's kappa
cohen.kappa(x=cbind(rater1, rater2))

            