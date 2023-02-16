# format digits after decimal point
# define value
x <- 15.49347782

# only display 2 digits after decimal place
sprintf("%.2f", x)

# format digits before decimal point
# define value
x <- 15435.4
# display 10 total digits before decimal place
sprintf("%10.f", x)

# format value using scientific notationa
# define value
x <- 15435.4

# display in scientific notation using lowecase e
sprintf("%e", x)

# display in scientific notation using uppercase E
sprintf("%E", x)

# format one value in string
# define value
x <- 5.4431
# display string with formatted value
sprintf("I rode my bike about %.1f miles", x)

# format multiple values in string
# define values
x1 <- 5.4431
x2 <- 10.778342

# display string with formatted values
sprintf("I rode my bike %.1f miles and then ran %.2f", x1, x2)























