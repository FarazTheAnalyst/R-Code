# Logical operators
# AND & operator
TRUE & TRUE   # This is always True
TRUE & FALSE  # result False
FALSE & TRUE  # result False
FALSE & FALSE  # result False
x <- 10
x > 3 & x < 12  # True
x <- 20
x > 3 & x < 12  # False

# OR "|"operator
TRUE | TRUE  # TRUE
TRUE | FALSE  # TRUE
FALSE | TRUE  # TRUE
FALSE | FALSE  # FALSE
y <- 7
y < 8 | y > 16  # TRUE
y <- 12
y < 8 | y > 16  # False

# NOT "!" operators
!TRUE  # FALSE
!FALSE  # TRUE
x <- 2
!x  # FALSE

# airquality dataset
# AND & operator
airquality$Solar.R > 150 & airquality$Wind > 10

# OR "|" operator
airquality$Solar.R > 150 | airquality$Wind > 10

# Conditional Statement
x <- 0
if (x < 0) {
  print("x is a negative number")
} else if (x == 0) {
  print("x is zero")
} else {
  print("x is a positive number")
}














