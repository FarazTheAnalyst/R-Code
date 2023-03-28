# Example 1: Print Character String & Variable on Same Line
# define character string
my_text <- "The answer is"

# define numeric variables
my_value1 <- 5
my_value2 <- 10

# print character string and numeric variables on the same line
cat(my_text, my_value1, "or", my_value2)

# Example 2: Print Multiple Variables on Same Line with No Text

# define function
do_stuff <- function(x){
  x2 <- x * 2
  x3 <- x * 3
  x4 <- x * 4
  cat(x2, x3, x4)
}

# use function
do_stuff(5)

# Example 3: Print Multiple Variables on Same Line with Text
# define function
do_stuff <- function(x){
  x2 <- x * 2
  x3 <- x * 3
  x4 <- x * 4
  cat("x2 = ", x2, "x3 =", x3, "x4 =", x4)
}

# use function
do_stuff(5)

# Example 4: Print Multiple Variables on New Lines with Text
# define function 
do_stuff <- function(x){
  x2 <- x * 2
  x3 <- x * 3
  x4 <- x * 4
  cat("x2 =", x2, "\nx3 = ", x3, "\nx4 = ", x4)
}

# use function
do_stuff(5)




















