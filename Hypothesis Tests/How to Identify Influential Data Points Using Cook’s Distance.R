# How to Calculate Cook's Distance in R
library("ggplot2")
library("gridExtra")

no_outliers <- data.frame(x = c(1, 2, 2, 3, 4, 5, 7, 3, 2, 12, 11, 15, 14, 17, 22),
                          y = c(22, 23, 24, 23, 19, 34, 35, 36, 36, 34, 32, 38, 41,
                                42, 44))

#create data frame with two outliers
outliers <- data.frame(x = c(1, 2, 2, 3, 4, 5, 7, 3, 2, 12, 11, 15, 14, 17, 22),
                       y = c(190, 23, 24, 23, 19, 34, 35, 36, 36, 34, 32, 38, 41,
                             42, 180))

# create scatterplot for data frame with no outliers
no_outliers_plot <- ggplot(data = no_outliers, aes(x = x, y = y)) +
  geom_point() +
  geom_smooth(method = lm) +
  ylim(0, 200) +
  ggtitle("No Outliers")

# create scatterplot for data frame with ouliers
outliers_plot <- ggplot(data = outliers, aes(x=x, y=y)) +
  geom_point() + 
  geom_smooth(method = lm) +
  ylim(0, 200) + 
  ggtitle("With Outliers")

# plot the two scatterplots side by side
gridExtra::grid.arrange(no_outliers_plot, outliers_plot, ncol = 2)

# fit the linear regression model to the dataset with outliers
model <- lm(y~x, data= outliers)

# find the cook's distance for each obsrvation in the dataset
cooksD <- cooks.distance(model)

# plot cook's distance with a horizontal line at 4/n to see which observations
# exceed this thresdhold
n <- nrow(outliers)

plot(cooksD, main="Cooks Distance for influential Obs")
abline(h=4/n, lty = 2, col = "red")  #add cutoff line


# identify influential points
influential_obs <- as.numeric((names(cooksD)[(cooksD > (4/n))]))

# define new data frame with influential points removed
outliers_removed <- outliers[-influential_obs, ]

# create scatterplot with outliers present
outliers_present <- ggplot(data = outliers, aes(x=x, y=y)) +
  geom_point() +
  geom_smooth(method=lm) +
  ylim(0, 200) +
  ggtitle("Outliers Present")

# create scatterplot with outliers removed
outliers_removed <- ggplot(data = outliers_removed, aes(x = x, y = y)) +
  geom_point() +
  geom_smooth(method = lm) +
  ylim(0, 200) +
  ggtitle("Outliers Removed")

# plot both scatterplot side by side
gridExtra::grid.arrange(outliers_present, outliers_removed, ncol=2)












