# A three-way ANOVA is used to determine whether or not there
# is a statistically significant difference between the means of
# three or more independent groups that have been split 
# on three factors.

# Example: Three-Way ANOVA in R
# create the dataset
df <- data.frame(program = rep(c(1, 2), each=20),
                 gender = rep(c("M", "F"), each=10, times=2),
                 division = rep(c(1, 2), eac=5, times = 4),
                 height=c(7, 7, 8, 8, 7, 6, 6, 5, 6, 5,
                          5, 5, 4, 5, 4, 3, 3, 4, 3, 3,
                          6, 6, 5, 4, 5, 4, 5, 4, 4, 3,
                          2, 2, 1, 4, 4, 2, 1, 1, 2, 1))

# view six rows of dataset
head(df)

# view descriptive statistics
library("dplyr")

# calculate mean jumping height increase by program, gender and division
df %>% 
  group_by(program, gender, division) %>% 
  summarize(mean_height = mean(height))

# Step 3: Perform the Three-Way ANOVA
# perform three-way ANOVA
model <- aov(height ~ program * gender * division, data = df)

# view summary of three-way ANOVA
summary(model)

# We can now use dplyr once again to find the mean jumping height
# increase for program, gender, and division separately

library(dplyr)

# find mean jumping increase by program
df %>% 
  group_by(program) %>% 
  summarize(mean_height = mean(height))

# find mean junping increase by division 
df %>% 
  group_by(division) %>% 
  summarize(mean_height = mean(height))

# find mean junping increse by gender 
df %>% 
  group_by(gender) %>% 
  summarize(mean_height = mean(height))
  
  
  
  
  
  
  
  
  
  
  





















