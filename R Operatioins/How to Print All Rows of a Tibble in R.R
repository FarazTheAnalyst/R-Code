# load dplyr
library("dplyr")

# make this example reproducible
set.seed(1)

# create tibble
data <- tibble(a=rnorm(80),
               b=rnorm(80))

# view tibble
data

# Print a Specific Number of Rows of a Tibble
# print first 20  rows of tibble
print(data, n=20)

# print first 20 rows of tibble
data %>% print(n=20)

# print a all rows of a tibble
# print all rows of tibble
data %>% print(n=Inf)
