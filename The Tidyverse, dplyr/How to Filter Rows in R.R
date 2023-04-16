library("dplyr")

# view first six rows of starwars dataset
head(starwars)

# view colnames
colnames(starwars)

# Example 1: Filter Rows Equal to Some Value
# The following code shows how to filter the dataset for rows where
# the variable 'species' is equal to Droid.
starwars %>% filter(species == "Droid")

# filter rows using "And"
# We can also filter for rows where the species is Droid and the eye color is red:
starwars %>% filter(species == "Droid" & eye_color == "red")

# Example 3: Filter Rows Using 'Or'
# We can also filter for rows where the species is Droid or the eye color is red:
starwars %>% filter(species =="Droid" | eye_color == "red")

# Example 4: Filter Rows with Values in a List
starwars %>% filter(eye_color %in% c("blue", "yellow", "red"))

# Example 5: Filter Rows Using Less Than or Greater Than
# find rows where height is greater than 250
starwars %>% filter(height > 250)

# find rows where height is between  200 and 220
starwars %>% filter(height > 200 & height < 220)

# find rows where height is above the average height
starwars %>% filter(height > mean(height, na.rm = TRUE))










