# This error occurs when you attempt to use the aes()
# argument when creating a plot in ggplot2 and use it in
# the incorrect place or use it without the 'mapping' syntax.

# How to Reproduce the Error
library("ggplot2")

# create data 
df <- data.frame(y=c(2, 3, 3, 4, 5, 5, 6, 7, 8, 8, 9, 10, 16, 19, 28),
                 x1=c(1, 2, 2, 3, 5, 6, 8, 8, 9, 9, 10, 11, 12, 15, 15),
                 x2=c(8, 7, 7, 6, 6, 4, 3, 5, 4, 6, 5, 4, 3, 2, 2))

# attempt to create boxplot for "x1" variable
ggplot() +
  geom_boxplot(df, aes(x=x1))

# How to Fix the Error
# method1: use "mapping" syntax
# create data
df <- data.frame(y=c(2, 3, 3, 4, 5, 5, 6, 7, 8, 8, 9, 10, 16, 19, 28),
                 x1=c(1, 2, 2, 3, 5, 6, 8, 8, 9, 9, 10, 11, 12, 15, 15),
                 x2=c(8, 7, 7, 6, 6, 4, 3, 5, 4, 6, 5, 4, 3, 2, 2))

# create boxplot for "x1" variable
ggplot() +
  geom_boxplot(df, mapping=aes(x=x1))

# Method 2: Use 'aes' in ggplot Function
library("ggplot2")

# creat data 
df <- data.frame(y=c(2, 3, 3, 4, 5, 5, 6, 7, 8, 8, 9, 10, 16, 19, 28),
                 x1=c(1, 2, 2, 3, 5, 6, 8, 8, 9, 9, 10, 11, 12, 15, 15),
                 x2=c(8, 7, 7, 6, 6, 4, 3, 5, 4, 6, 5, 4, 3, 2, 2))

# create boxplot for "x1" variable
ggplot(df, aes(x=x1)) +
  geom_boxplot()
