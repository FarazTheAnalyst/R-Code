# Arcsine Transformation in R
# Example 1: Arcsine Transformation of Values in Range 0 to 1

# define vector
x <- c(0.1, 0.33, 0.43, 0.5, 0.7)

# perform arcsine transformation on values invector
asin(sqrt(x))

# Example 2: Arcsine Transformation of Values Outside Range 0 to 1
# define vector with values ouside of range 0 to 1
x <- c(2, 14, 16, 30, 48, 78)

# create new vector where each value is divided by max value
y <- x / max(x)

# view new vector
y

# perform arcsine transformation on new vector
asin(sqrt(y))

# Example 3: Arcsine Transformation of Values in Data Frame
# create data frame
df <- data.frame(var1=c(.2, .3, .4, .4, .7),
                 var2=c(.1, .2, .2, .2, .3),
                 var3=c(.04, .09, .1, .12, .2))

# perform arsine transformation on values in "var1" column
asin(sqrt(df$var1))

# define data frame
df <- data.frame(var1=c(.2, .3, .4, .4, .7),
                  var2=c(.1, .2, .2, .2, .3),
                  var3=c(.04, .09, .1, .12, .2))

# perofrm arcsine transformation on values in "var1" and "var3" columns
sapply(df[ c("var1", "var3")], function(x) asin(sqrt(x)))




















