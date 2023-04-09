library("dplyr")
library("MASS")

# find average mpg grouped by "cyl"
mtcars %>% 
  select(cyl, mpg) %>% 
  group_by(cyl) %>% 
  summarize(avg_mpg = mean(mpg))

# How to Fix the Error
library(dplyr)
library("MASS")

# find average mpg grouped by "cyl"
mtcars %>% 
  dplyr::select(cyl,mpg) %>% 
  group_by(cyl) %>% 
  summarise(avg_mpg = mean(mpg))
