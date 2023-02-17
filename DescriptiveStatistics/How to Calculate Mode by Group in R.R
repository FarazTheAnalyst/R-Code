# calculate mode by group  in R(one Mode)
# defne data frame
df <- data.frame(team=c("A", "A", "A", "A", "B", "B", "B", "B"),
                 points=c(c(5, 7, 7, 9, 12, 12, 10, 14)))
# veiw data frame
df

# use this code to calculate mode
library("dplyr")

# define function to calculate mode
find_mode <- function(x) {
  u <- unique(x)
  tab <- tabulate(match(x, u))
  u[tab == max(tab)]
}

# calcualte mode of "points" by "team"
df %>% 
  group_by(team) %>% 
  summarise(mode_points = find_mode(points))

# calculate mode by group  in R(multiple modes)
# define data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                       points=c(5, 7, 7, 9, 12, 12, 10, 10))


# view data frame
df

# load package dplyr
library("dplyr")

# define function  to calculate mode
find_mode <- function(x) {
  u <- unique(x)
  tab <- tabulate(match(x, u))
  u[tab == max(tab)]
}

# calcualte mode of "points" by "team"
df %>% 
  group_by(team) %>% 
  summarise(mode_points = find_mode(points))

















