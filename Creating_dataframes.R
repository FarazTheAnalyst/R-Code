# Load tidyverse
library("tidyverse")

# Create dataframe
# Creating a vectors first
name <- c("Ali", "Zain", "Rizwan", "Faraz")
age <- c(26, 34, 46, 30)

# Creating dataframe name people
people <- data.frame(name, age)
head(people)
str(people)
glimpse(people)
colnames(people)
# Creating a new variable
mutate(people, age_2 = age + 2)

# Creating a dataa frame
fruit <- c("bluberry", "Guava", "Orange", "Straqberry")
rank <- c(1, 3, 2, 4)
fruit_ranks <- data.frame(fruits, fruit_ranks)
head(fruit_r)
str(fruit_r)
glimpse(fruit_r)

# Creating a new variable
mutate(fruit_r, fruit_ranks_2 = fruit_ranks + 1  )




