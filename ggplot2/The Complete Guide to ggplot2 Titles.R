# How to Add a ggplot2 Title
library("ggplot2")

ggplot(iris, aes(x=Species, y=Sepal.Length)) +
  geom_boxplot()

ggplot(iris, aes(x=Species, y=Sepal.Length)) + 
  geom_boxplot() +
  ggtitle("Sepal Length by Species")

# How to Center a ggplot2 Title
ggplot(iris, aes(x=Species, y=Sepal.Length)) +
  geom_boxplot() + 
  ggtitle("Sepal Length by Species") +
  theme(plot.title = element_text(hjust = 0.5))

# How to Modify the Font of a ggplot2 Title
ggplot(iris, aes(x=Species, y=Sepal.Length)) +
  geom_boxplot() +
  ggtitle("Sepal Length by Species") +
  theme(plot.title = element_text(hjust = 0.5, color = "blue", size=20, face="bold"))

# How to Create a Multi-Line ggplot2 Title
# If you have an unusually long title, you can simply throw in \n where
# you'd like a new line to start. 
ggplot(iris, aes(x=Species, y=Sepal.Length)) + 
  geom_boxplot() + 
  ggtitle("Sepal Length by Species\nSample size (n = 150)")



















