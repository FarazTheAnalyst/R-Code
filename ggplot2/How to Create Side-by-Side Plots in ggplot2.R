# install ggplot2 and patchwork packages
install.packages("ggplot2")
install.packages("patchwork")

# load the packages
library("ggplot2")
library(patchwork)

# Example 1: Two Side-by-Side Plots
# create box plot
plot1 <- ggplot(iris, aes(x=Species, y=Sepal.Length)) + 
  geom_boxplot()

# create density plot
plot2 <- ggplot(iris, aes(x=Sepal.Length, fill=Species)) + 
  geom_density(alpha=0.8)

# display plots side by side
plot1 + plot2

# Example 2: Three Side-by-Side Plots
# create box plot
plot1 <- ggplot(iris, aes(x=Species, y=Sepal.Length)) + 
  geom_boxplot()

# create density plot
plot2 <- ggplot(iris, aes(x=Sepal.Length, fill=Species)) +
  gem_density(alpha=0.7)

# create scatterplot
plot3 <- ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) + 
  geom_point()

# display three plots side by side
plot1 + plot2 + plot3

# Example 3: Two Stacked Plots
# create box plot
plot1 <- ggplot(iris, aes(x=Species, y=Sepal.Length)) + 
  geom_boxplot()

# create density plot
plot2 <- ggplot(iris, aes(x=Sepal.Length, fill=Species)) + 
  geom_density(alpha=0.7)

# display plots stacked on top of each other
plot1 / plot2

# Example 4: Add Titles, Subtitles, and Captions
# create box plot
plot1 <- ggplot(iris, aes(x=Species, y=Sepal.Length)) +
  geom_boxplot() + 
  ggtitle("Boxplot")

# create density plot
plot2 <- ggplot(iris, aes(x=Sepal.Length, fill=Species)) + 
  geom_density(alpha=0.7) + 
  ggtitle("Density Plot")

# display plots side by side with title, subtitle, and captions
patchwork <- plot1 + plot2

patchwork + plot_annotation(
  title = "This is title",
  subtitle = "This is a subtitle that describes more information about the plots",
  caption = "This is caption"
)














