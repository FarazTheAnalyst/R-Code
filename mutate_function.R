install.packages("tidyverse")
library("ggplot2")
data("diamonds")
View(diamonds)

# mutate() to add a new column in a dataset
library(dplyr)
mutate(diamonds, carat_2=carat*100)

# To see column names use colnames()
colnames(diamonds)
