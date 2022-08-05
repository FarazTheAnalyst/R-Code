addPercent <- function(x){
  if( !is.numeric(x) ) return(NULL)
  percent <- round(x * 100, digits = 1)
   paste(percent, "%", sep = "")
}
addPercent(new.numbers)
print(addPercent(new.numbers))
odds <- function(x) x / (1-x)
odds(0.8)
addPercent <- function(x) paste(round(x * 100, digits = 1), "%",
                                sep = "")
addPercent(new.numbers)

# Using Arguments the smart way
percentages <- c(58.23, 120.4, 33)
addPercent(percentages /100)

# Using functioins as arguments
addPercent <- function(x, mult = 100, FUN = round, ...){
  percent <- FUN(x * mult, ...)
  paste(percent, "%", sep = "")
}
addPercent(new.numbers, FUN = signif, digits = 3)

# Using anonymous functions
profits <- c(2100, 1430, 3580, 5230)
rel.profit <- function(x) round(x / sum(x))
addPercent(profits, FUN = function(x) round(x / sum(x) * 100))
(profits / sum(profits))
2100+1430+3580+5230
2100/12340
rel.profit(profits)
rm(addPercent)

# Copying with scoping
# Crossing the borders
# Creating a test case
x <- 1:5
test <- function(x){
  cat("This is x:", x, "\n")
  rm(x)
  cat("This is x after removing it:", x, "\n")
}
test(5:1)

# Searching the path
# Dispatching to method
methods("print")
methods(class = "data.frame")

small.one <- data.frame(a = 1:2, b = 2:1)
small.one
print.data.frame(small.one)
print.default(small.one)

addPercent.character <- function(x){
  paste(x, "%", sep = "")
}
addPercent <- function(x, ...){
  UseMethod("addPercent")
}
addPercent(new.numbers, FUN = floor)
























































