# create data frame
df <- data.frame(x=c(1, 2, 3, 3, 5, 7, 9),
                 y=c(8, 14, 18, 25, 29, 33, 25))

# view data frame
df

# Example 1: Use geom_abline() to Add Line with Slope and Intercept
library("ggplot2")

# create scatterplot and add straight line with specific slope and intercept
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  geom_abline(slope = 3, intercept=15)

# Example 2: Use geom_vline() to Add Vertical Line
library("ggplot2")

# create scatterplot and add vertical line at x=5
ggplot(df, aes(x=x, y=y)) +
  geom_point() + 
  geom_vline(xintercept = 5)

# Example 3: Use geom_hline() to Add Horizontal Line
library("ggplot2")

# create scatterplot and add horizontal line at y=25
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  geom_hline(yintercept = 25)

# Example 4: Use geom_smooth() to Add Regression Line
library("ggplot2")

# create scatterplot and add fitted regression line
ggplot(df, aes(x=x, y=y)) + 
  geom_point() +
  geom_smooth(method = "lm", se=FALSE)
