# create data frame
df <- data.frame(player = c('a', 'b', 'c', 'd', 'e'),
                 position = c('G', 'F', 'F', 'G', 'G'),
                 points = c(12, 15, 19, 22, 32),
                 rebounds = c(5, 7, 7, 12, 11))

# view data frame
df

# Example 1: Create New Variable Based on One Existing Variable
library("dplyr")

# define new varible "scorer" using mutate() and case_when()
df %>% 
  mutate(scorer = case_when(points < 15 ~ "low",
                            points < 25 ~ "med",
                            points < 35 ~ "high"))

# Example 2: Create New Variable Based on Several Existing Variables
library("dplyr")

# define new variable "type" using mutate()  and case_when()
df %>% 
  mutate(type=case_when(player == "a" | player == "b" ~ "starter",
                        player == "c" | plaeyr == "d" ~ "backup",
                        position == "G" ~ "reserve"))

library("dplyr")

# define new variable "valueAdded" using mutate() and case_when()
df %>% 
  mutate(valueAdded = case_when(points <= 15 & rebounds <= 5 ~ 2,
                                points <=15 & rebounds > 5 ~ 4,
                                points < 25 & rebounds > 8 ~7,
                                points >=25 ~ 9))






















