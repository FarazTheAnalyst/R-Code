# Load packages
library("ggplot2")
library("palmerpenguins")
data(penguins)
View(penguins)
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# You can also write the code this way
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g))+
  geom_point()
ggplot(data = penguins) +
  geom_point(mapping = aes(x = bill_length_mm, y = bill_depth_mm))


# Changing color size and shapes
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, body_mass_g, shape = species))

ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, size = species, color = species))

ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, alpha = species, color = species))

ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g),color = "magenta", size = 2, shape = "triangle")


# Using geom_smooth() function with diamonds dataset

ggplot(data = penguins)+
  geom_smooth(mapping = aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g))

# Using geom_smooth() with linetype arguments
ggplot(data = penguins) +
  geom_smooth(mapping = aes(x=flipper_length_mm, y=body_mass_g, linetype = species))

# Using geom_jitter() helps us deal with over plotting
ggplot(data = penguins) +
  geom_jitter(mapping = aes(x=flipper_length_mm, y=body_mass_g))

# Using diamonds dataset to create bar chart with geom_bar()
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x=cut))

# Adding color outline to the each bar
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x=cut, color=cut))

# Adding color in the each bar with fill
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x=cut, fill=cut))

# If we map fill with the new variable then geom_bar() will display stacked bar chart
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x=cut, fill=clarity))


# using facet_wrap() and facet_grid() to split our data in to smaller groups and subsets
ggplot(data = penguins, mapping = aes(x=flipper_length_mm, y=body_mass_g)) +
         geom_point(aes(color=species)) +
         facet_wrap(~species)

# Diamonds dataet and facet function
ggplot(data = diamonds, mapping = aes(x=color)) +
  geom_bar(aes(fill = cut)) +
  facet_wrap(~cut)

# Split two variables with facet_grid()  
ggplot(penguins, mapping = aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_point(aes(color=species))+
  facet_grid(sex~species)

# We can focus on one variable
ggplot(penguins, mapping = aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_point(aes(color=species))+
  facet_grid(~species)

# Species and sex
ggplot(penguins, mapping = aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_point(aes(color=species))+
  facet_grid(~sex)







