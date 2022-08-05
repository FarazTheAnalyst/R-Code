# Generating Your Own Messages
# Creating errors
logit <- function(x){
  if( any(x < 0 | x > 0) ) stop("x not between 0 and 1")
  log(x / (1 - x) )
}
logitpercent(c("50%", "150%"))
# Creating warnings

x <- ifelse(x < 0 | x > 1, NA, x )
if( any(is.na(x)) ) warning("x not between 0 and 1")
log(x / (1 - x) )

logitpercent(c("50%", "150%"))  
# Having your data in the wrong format
# Dropping dimension when you dont't expect it
sleep
str(sleep)
sapply(x2, is.numeric)
rowSums(x2[, "X4.6"], drop = FALSE)
x2 <- data.frame(1:3, 4:6)
x2

rowsum.df <- function(x){
  id <- sapply(x, is.numeric)
  rowSums(x[, id, drop = FALSE])
}
rowsum.df(sleep)
pressure
rowSums(pressure)
# Messing up with lists
strsplit("this is a sentence", " ")[2]
strsplit("this is a sentence", " ")
strsplit("this is a sentence", " ")[[1]] [3]
strsplit("this is a sentence", " ")[[1]] [2]
customer <- c("Johan Delong", "Marie Petit")
namesplit <- strsplit(customer, " ")
namesplit
paste(namesplit[2], collapse = ".")
paste(namesplit[[2]], collapse = ".")

# Mixing up factors and numeric vectors
mtcars
head(mtcars)
str(mtcars)
cyl.factor <- as.factor(mtcars$cyl)
cyl.factor
as.numeric(numbers)
numbers <- factor(c(9, 8, 10, 8, 9))
as.character(numbers)
as.numeric(as.character(numbers))
as.numeric(as.character(cyl.factor))
as.numeric(levels(cyl.factor)) [cyl.factor]
as.numeric(levels(cyl.factor))
cyl.factor <- as.factor(mtcars$cyl)
median(as.numeric(cyl.factor))
z <- as.numeric(levels(cyl.factor)) [cyl.factor]
z
median(as.numeric(as.character(cyl.factor)))


