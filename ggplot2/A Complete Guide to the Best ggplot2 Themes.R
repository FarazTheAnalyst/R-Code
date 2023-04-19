# How to Modify Plot Appearance Using Built-in ggplot2 Themes
# view first six rows of iris dataset
head(iris)

# First, we'll load the ggplot2 library and create a scatterplot that
# shows Sepal.Length on the x-axis and Sepal.Width on the y-axis, colored
# according to Species:

# load ggplot2 library
library("ggplot2")

# create scatterplot
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color = Species)) +
  geom_point()

# theme_gray
# The default theme, featuring a gray background and white gridlines.
ggplot(iris, aes(x=Sepal.Length, y = Sepal.Width, color = Species)) + 
  geom_point() + 
  theme_gray()

# theme_bw
# A black on white theme.
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color = Species)) + 
  geom_point() +
  theme_bw()

# theme_linedraw
# A theme with only black lines of various widths on white backgrounds.
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point() +
  theme_linedraw()


# theme_light
# A theme similar to theme_linedraw but with grey lines and 
# axes designed to draw more attention to the data.
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point() +
  theme_light()

# theme_dark
# A theme similar to theme_light, but with a dark background.
# A useful theme for making thin colored lines stand out.
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point() +
  theme_dark()


# theme_minimal
# A theme with no background annotations.
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point() +
  theme_minimal()

# theme_classic
# A theme with no gridlines
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point() +
  theme_classic()

# theme_void
# A completely empty theme.
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point() +
  theme_void()

# How to modify the appearance of plots using predefined
# themes from the ggthemes library
library(ggthemes)


# theme_wsj
# A Wall Street Journal theme.
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point() +
  theme_wsj()

# theme_tufte
# A minimalist theme inspired by the work of statistician Edward Tufte.
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point() +
  theme_tufte()

# theme_solarized
# A theme that uses colors based on the solarized palette.
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point() +
  theme_solarized()

# Note that we can also use the argument light = FALSE to use a 
# dark background on the plot:
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point() +
  theme_solarized(light=FALSE)

# theme_gdocs
# A theme with Google Docs Chart defaults.
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point() +
  theme_gdocs()


# theme_fivethirtyeight
# Theme inspired by fivethirtyeight.com plots.
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point() +
  theme_fivethirtyeight()

# theme_economist
# Theme inspired by The Economist.
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point() +
  theme_economist()

# How to Modify Specific Components of Plots
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point() +
  theme(panel.border = element_blank(),
         panel.grid.major = element_blank(),
         panel.grid.minor = element_blank())

# The following code illustrates how to modify the plot panel
# background and the gridlines:
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  theme(
    panel.background = element_rect(fill = "powderblue",
                                    color = "powderblue",
                                    size = 0.5, linetype = "solid"),
    panel.grid.major = element_line(size = 0.5, linetype = 'solid', color = "white"),
    panel.grid.minor = element_line(size = 0.25, linetype = 'solid', color = "white")
  )























































