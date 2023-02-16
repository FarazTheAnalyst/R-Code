# sum values in vector
# create vector
x <- c(3, 6, 7, 12, 15)

# sum values in vector
sum(x)

# create vector with some NA values
x <- c(3, NA, 7, NA, 15)

# sum values in vector
sum(x, na.rm = TRUE)

# sum values in data frame column
#create data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=c(3, 3, 6, 6, 8),
                 var4=c(1, 1, 2, 8, 9))

# view data frame
df

# sum values in "var1 column
sum(df$var1)

# sum values in several data frame columns
# create data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=c(3, 3, 6, 6, 8),
                 var4=c(1, 1, 2, 8, 9))

# view data frame
df

# sum values in "var1" and "var2" columns
sapply(df[ , c("var1", "var3" )], sum)





























