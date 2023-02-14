data("ToothGrowth")
View(ToothGrowth)
install.packages("dplyr")
library("dplyr")

# Filtering data
filter_tg <- filter(ToothGrowth, dose == 0.5)
View(filter_tg)

# Sorting data
arrange(ToothGrowth, len)
arrange(filter(ToothGrowth, dose == 0.5), len)

# Using pipe Operator
filtered_toothgrowth <-  ToothGrowth %>%
  filter(dose == 0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len, na.rm = T), .group = "drop")
filtered_toothgrowth
