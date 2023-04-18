# define data frame as the first six lines of the iris dataset
data <- head(iris)

# view data 
data

# load dplyr library
library("dplyr")

# define new column root_sepal_width as the square root of the Sepal.Width varible
data %>% mutate(root_sepal_width = sqrt(Sepal.Width))

# define data frame as the first six lines of the iris dataset
data <- head(iris)

# view data 
data

# define two new variables and remove all existing variables
data %>% transmute(root_sepal_width = sqrt(Sepal.Width),
                   root_petal_width = sqrt(Petal.Width))

# define new data frame as the first six rows of iris without the Species variable
data2 <- head(iris) %>% select(-Species)

# view the new data frame
data2

# divide all varaibles in the data frame by 10
data2 %>% mutate_all(funs(./10))

# Note that additional variables can be added to the data frame
# by specifying a new name to be appended to the old variable name:
data2 %>% mutate_all(funs(mod=./10))

# mutate_at()
data %>% mutate_at(c("Sepal.Length", "Sepal.Width"), funs(mod = ./10))

# mutate_if()
# find variable type of each variable in a data frame
data <- head(iris)
sapply(data, class)

# convert  any variable of type factor to type character
new_data <- data %>% mutate_if(is.factor, as.character)
sapply(new_data, class)

# define data as first six rows of iris dataset
data <- head(iris)

# view data
data

# round any variables of type numeric to one decimal place
data %>% mutate_if(is.numeric, round, digits = 0)






