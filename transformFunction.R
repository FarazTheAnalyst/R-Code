# Transforming the script
addPercent <- function(x){
  percent <- round(x * 100, digits = 1)
  result <- paste(percent, "%", sep = "")
  return(result)
}
source("transformFunction.R")
ls()
new.numbers <- c(0.8223, 0.02487, 1.62, 0.4)
addPercent(new.numbers)
ppaste <- addPercent
ppaste
# adding mult argument
addPercent <- function(x, mult){
  percent <- round(x * mult, digits = 4)
  paste(percent, "%", sep = "")
}

addPercent(percentages, mult = 1)

# Adding a default value
new.numbers
addPercent(new.numbers)
addPercent <- function(x, mult = 100){
  percent <- round(x * mult, digits = 1)
  paste(percent, "%", sep = "")
}
addPercent(new.numbers)
addPercent(percentages, 1)

# Conjuring tricks with dots
round(0.5742)
addPercent <- function(x, mult = 100, ...){
  percent <- round(x * mult, ...)
  paste(percent, "%", sep = "")
}
addPercent(new.numbers, digits = 2)
addPercent(new.numbers)

addPercent <- function(x, mult = 100, digits = 1){
  percent <- round(x * mult, digits = digits)
  paste(percent, "%", sep = "")
}
addPercent(new.numbers)













