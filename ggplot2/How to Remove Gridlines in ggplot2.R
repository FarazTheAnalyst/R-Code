# Example 1: Remove Gridlines with theme_classic()
library("ggplot2")

# define data 
df <- data.frame(x=c(1, 2, 3, 4, 5, 6),
                 y=c(6, 8, 14, 19, 29, 31))

# create ggplot with no gridlines
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  theme_classic()

# Example 2: Remove Specific Gridlines
library("ggplot2")

# define data
df <- data.frame(x=c(1, 2, 3, 4, 5, 6),
                 y=c(6, 8, 14, 19, 29, 31))

# create ggplot with no gridlines
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  theme_bw() + 
  theme(axis.line = element_line(color="black"),
        plot.background = element_blank(), 
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.border = element_blank())

# This code allows you to remove specific gridlines.
# For example, we could use the following code to keep the major
# gridlines in the plot:
library("ggplot2")

# define data 
df <- data.frame(x=c(1, 2, 3, 4, 5, 6),
                 y=c(6, 8, 14, 19, 29, 31))

# create ggplot with no gridlines
ggplot(df, aes(x=x, y=y)) +
  geom_point() + 
  theme_bw() +
  theme(axis.line = element_line(color="black"),
        plot.background = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank())

library("ggplot2")

# define data
df <- data.frame(x=c(1, 2, 3, 4, 5, 6),
                 y=c(6, 8, 14, 19, 29, 31))

# create ggplot with no gridlines
ggplot(df, aes(x=x, y=y)) + 
  geom_point() +
  theme_bw() +
  theme(axis.line = element_line(color = "black"),
        plot.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())























