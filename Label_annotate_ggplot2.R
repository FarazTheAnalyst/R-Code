library("ggplot2")
library("palmerpenguins")

# Adding labels to the plot
ggplot(data = penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color = species))+
  labs(title = "Palmer Penguins: Body Mass vs Flipper Length", subtitle = "The Species Of Penguins", caption = "Data Collected by Dr Kristen Gorman")+
  annotate("text", x=220, y=4200, label="The Gentos are the largest", color="purple",
           fontface="bold", size=4.5, angle=45)
  
# Assigning Variable to make a code smaller
p <- ggplot(data = penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color = species))+
  labs(title = "Palmer Penguins: Body Mass vs Flipper Length", subtitle = "The Species Of Penguins", caption = "Data Collected by Dr Kristen Gorman")
  
p + annotate("text", x=220, y=3500, label="The Gentos are the Largest")


# Saving plot using ggpsave()
ggsave("Three Palmer Penguins Species.png")
