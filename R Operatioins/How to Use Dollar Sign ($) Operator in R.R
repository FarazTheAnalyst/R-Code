# Example 1: Use Dollar Sign to Create Variable in List
# create list
my_list <- list(A= c("X", "Y", "Z"),
                B=20,
                C=1:5)

# view list
my_list

# create new variable in list
my_list$D <- c("Hey", "Hi", "Hello")

# view updated list
my_list

# Example 2: Use Dollar Sign to Access Variable in List
# create list
my_list <- list(A= c('X', 'Y', 'Z'),
                B=20,
                C=1:5)

# access variable C
my_list$C

# Example 3: Use Dollar Sign to Create Variable in Data Frame
# create data frame
df <- data.frame(team=c('Mavs', 'Spurs', 'Rockets', 'Nets'),
                 points=c(140, 115, 109, 98))

# view data frame
df

# create new varaible called assists
df$assists <- c(20, 25, 29, 49)

# view updated data frame
df

# Example 4: Use Dollar Sign to Access Variable in Data Frame
# create data frame
df <- data.frame(team=c('Mavs', 'Spurs', 'Rockets', 'Nets'),
                 points=c(140, 115, 109, 98))

# access values for points
df$points



















