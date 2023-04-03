# A tibble is a data frame in R that has a refined print method that
# only shows the first 10 rows of a data frame.

# Example: Convert Tibble to Data Frame in R
library("tidyverse")

# import CSV file into tibble
my_tibble <- read_csv("my_data.csv")

# view tibble 
print(my_tibble)

# view class
class(my_tibble)

# convert tibble to data frame
my_df <- as.data.frame(my_tibble)

# view class of my_df
class(my_df)

# view data frame
print(my_df)
