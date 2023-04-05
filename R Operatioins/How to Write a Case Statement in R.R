# A case statement is a type of statement that goes through conditions
# and returns a value when the first condition is met.
# Example: Case Statement in R
# create data frame
df <- data.frame(player=c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
                 points=c(6, 8, 9, 9, 12, 14, 15, 17, 19, 22))

# view data frame
df

library("dplyr")

# create new column using case statement
df %>% 
  mutate(class = case_when(
    points < 9 ~ 'Bad',
    points < 12 ~ 'OK',
    points < 15 ~ 'Good',
    TRUE ~ 'Great'))
