# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# view data frame
df

# Example 1: Use transmute() to Create One New Variable
library("dplyr")

# create new variable called points2
df %>% transmute(points2 = points * 2)

# To save the results of the transmute() function in a new
# data frame, you must store them in a variable:
library("dplyr")

# store results of transmute in variable
df_points2 <- df %>% transmute(points2 = points * 2)

# view results
df_points2

# Example 2: Use transmute() to Create Multiple New Variables
library("dplyr")

# create multiple new variables
df %>% 
  transmute(
    points2 = points * 2,
    rebounds_squared = rebounds^2,
    assists_half = assists / 2,
    team_name = paste0("team_", team)
  )




















