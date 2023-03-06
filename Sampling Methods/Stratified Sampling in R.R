# make this example reproducible
set.seed(1)

# create data frame
df <- data.frame(grade=rep(c("Freshman", "Sophomore", "Junior", "Senior"),
                           each=100), 
                 gp=rnorm(400, mean = 85, sd=3))
# view first six rows of data frame
head(df)

# Stratified Sampling Using Number of Rows
library("dplyr")

# obtain stratified sample
strat_sample <- df %>%
  group_by(grade) %>% 
  sample_n(size=10)

# find frequency of students fromeach grade
table(strat_sample$grade)

# stratified sampling using fraction of rows
library("dplyr")

# obtain 15% of students from each group using stratified sample
strat_sample <- df %>% 
  group_by(grade) %>% 
  sample_frac(size=.15)

# find frequency of students from each grade
table(strat_sample$grade)























