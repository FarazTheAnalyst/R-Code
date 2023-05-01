# Step 1: Create the Data Frame
# make this example reprooducible
set.seed(1)

# create data frame
df <- data.frame(team=rep(c("A", "B", "C"), each=20),
                 player=rep(LETTERS(1:20), times=3),
                 points=round(rnorm(n=60, mean=30, sd=10), 2))

# view head of data frame
head(df)

# Step 2: Define a Function to Identify Outliers
# The observation is 1.5 times the interquartile range less
# than the first quartile (Q1)
# The observation is 1.5 times the interquartile range greater
# than the third quartile (Q3).
find_outlier <- function(x) {
  return(x < quantile(x, .25) - 1.5*IQR(x) | x > quantile(x, .75) + 1.5*IQR(x))
}

# Step 3: Label Outliers in Boxplots in ggplot2
library("ggplot2")
library("dplyr")

# add new column to data frame that indicates if each observatioin is an outlier
df <- df %>% 
  group_by(team) %>% 
  mutate(outlier=ifelse(find_outlier(points), points, NA))

# create box plot of points by team and label outliers
ggplot(df, aes(x=team, y=points)) + 
  geom_boxplot() + 
  geom_text(aes(label=outlier), na.rm = TRUE, hjust=-.5)

# For example, we could swap out points for player in the
# mutate() function to instead label the outliers based on
# the player name:
library("ggplot2")
library("dplyr")

# add new column to data frame that indicates if each observation is an outlier
df <- df %>% 
  group_by(team) %>% 
  mutate(outlier = ifelse(find_outlier(points), player, NA))

# create boxplot of points by team and label outliers
ggplot(df, aes(x=team, y=points)) + 
  geom_boxplot() + 
  geom_text(aes(label=outlier), na.rm = TRUE, hjust=-.5)














