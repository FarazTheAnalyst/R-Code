# view first six rows of mtcars dataset
head(mtcars)

# Example 1: Use Pipe Operator to Summarize One Variable
library("dplyr")

# summarize mean mpg grouped by cyl
mtcars %>% 
  group_by(cyl) %>% 
  summarise(mean_mpg = mean(mpg))

# Example 2: Use Pipe Operator to Group & Summarize Multiple Variables
library("dplyr")

# summarize mean mpg and standard dev of hp grouped by cyl and am
mtcars %>% 
  group_by(cyl, am) %>% 
  summarise(mean_mpg = mean(mpg),
            sd_hp = sd(hp))

# Example 3: Use Pipe Operator to Create New Variables
library("dplyr")

# add two new varaibles in mtcars
new_mtcars <- mtcars %>% 
  mutate(mpt2 = mpg*2,
         mpg_root = sqrt(mpg))

# view first six rows of new data frame
head(new_mtcars)
