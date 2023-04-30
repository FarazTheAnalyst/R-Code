# view first six rows of iris dataset
head(iris)

# Example 1: Use Default Colors
library("ggplot2")

ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) + 
  geom_point()

# Example 2: Use Custom Colors
library("ggplot2")

ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) + 
  geom_point() + 
  scale_color_manual(values = c("setosa" = "purple",
                                "versicolor" = "orange",
                                  "virginica" = "steelblue"))

# Example 3: Use a Custom Color Scale
library("ggplot2")
library("RColorBrewer")

# define custom color scale
myColors <- brewer.pal(3, "Spectral")
names(myColors) <- levels(iris$Species)
custom_colors <- scale_color_manual(name="Species Names", values=myColors)

ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) + 
  geom_point() + 
  custom_colors
