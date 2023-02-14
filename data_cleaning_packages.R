install.packages("here")
library(("here"))
install.packages("skimr")
library("skimr")
install.packages("janitor")
library("janitor")

# load dplyr()
library("dplyr")
install.packages("palmerpenguins")
library("palmerpenguins")

# Summarize data
skim_without_charts(penguins)
glimpse(penguins)
head(penguins)

# Subset data
penguins %>% 
  select(species)

# Subset with species
penguins %>% 
  select(-species)

# rename column names
penguins %>% 
  rename(island_new = island)

# renaming the colnames in upper or lower case
rename_with(penguins, toupper)
rename_with(penguins, tolower)

# cleaning colnames
clean_names(penguins)






