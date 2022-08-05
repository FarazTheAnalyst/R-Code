# Getting Help
?paste
help.search("date")
??date
?date
?Syntax
?Quotes
?DateTimeClasses
RSiteSearch("cluster analysis")
install.packages("sos")
library(sos)
findFn("cluster")
?rnorm
?set.seed
?sample

# Making a Minimal Reproducible Example
# creating sample data with random values

set.seed(1)
x <- rnorm(5)
x
y <- rnorm(5)
y
# x and y are not identical
cards <- c(1:9, "J", "Q", "K", "A")
suits <- c("Spades", "Diamonds", "Hearts", "Clibs")
deck <- paste(rep(suits, each = 13), cards)
set.seed(123)
sample(deck, 7)

set.seed(1)
sample(LETTERS[1:3], 12)
sample(LETTERS[1:3], 12, replace = TRUE)
set.seed(42)
dat <- data.frame(
  x = sample(1:5),
  y = sample(c("yes", "no"), 5, replace = TRUE)
)
dat
# How to use a copy  of your own data
dput(cars[1:4, ])
structure(list(speed = c(4, 4, 7, 7),
               dist = c(2, 10, 4, 22)), .Names
               = c("speed", "dist"),
                   row.names = c(NA, 4L), class = 
                     "data.frame")
# Providing the necessary information
sessionInfo()














