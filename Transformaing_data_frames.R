# Manually creating a dataframe
library("tidyverse")
id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)
print(employee)

# Splitting name column
separate(employee, name, into = c("first_name", "last_name"), sep = " ")

# Combining data frames
id <- c(1:10)
first_name <- c("John", "Rob","Rachal", "Christy", "Johnson", "Candace","carlson", "Pansy", "Darius", "Claudia")
last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry","Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee <- data.frame(id, first_name, last_name, job_title)
print(employee)


# Combining useing unite()
unite(employee, "name", first_name, last_name, sep = " ")

# Creating a new variable in penguins data set
library("palmerpenguins")
head(View(penguins))
penguins %>% 
  mutate(body_mass_kg = body_mass_g/1000, flipper_length_m = flipper_length_mm/1000)

new_peng <- penguins %>% 
  mutate(body_mass_kg = body_mass_g/1000, flipper_length_m = flipper_length_mm/1000)
  mutate(body_mass_kg = body_mass_g/1000, flipper_length_m = flipper_length_mm/1000)
  
new_peng %>% group_by(island, species) %>% summarize(mean_flipper_length_m = mean(flipper_length_m)) %>%  drop_na()









