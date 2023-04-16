# create data frame
df <- data.frame(day=seq(as.Date("2022-01-01"), by="week", length.out=10),
                 scales=c(40, 35, 39, 44, 48, 51, 23, 29, 60, 65))

# view data frame
df

# Example 1: Filter Rows After Date
# load packages
library(dplyr)

# filter for rows with date after 1/25//2022
df %>% filter(day > "2022-01-25")

# Example 2: Filter Rows Before Date
library(dplyr)

# filter for rows with date before 1/25/2022
df %>% filter(day < "2022-01-25")

# Example 3: Filter Rows Between Two Dates
library(dplyr)

# filter for rows with dates between 1/20/2022 and 2/20/2022
df %>% filter(between(day, as.Date("2022-01-20"), as.Date("2022-02-20")))
