library("tidyverse")
library("dplyr")
library(palmerpenguins)

# Sorting data in ascending order
penguins %>% arrange(bill_length_mm)

# Sorting data in descending order
penguins2 <- penguins %>% arrange(-bill_length_mm)
penguins2

# viewing data 
View(penguins2)

# Grouping data 
# drop_na() will remove NA rows from the data
penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = 
                                                      mean(bill_length_mm))
penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm = 
                                                            max(bill_length_mm))

# Group by both species and island
penguins %>%  group_by(species, island) %>% drop_na() %>% 
  summarize(max_bl = max
           (bill_length_mm), mean_bl = mean(
            bill_length_mm
            ))

# Filtering data FROM species "Adelie"
penguins %>% filter(species == "Adelie")









