# Step 1: using R package
# Load tidyverse
library(tidyverse)

# Step 2: Viewing Dataset.
# Summarise and preview data
head(diamonds)
str(diamonds)
glimpse(diamonds)

# Returns a list of the colnames in the dataset.
colnames(diamonds)

# Step 3: Cleaning data
# Renaming a variable
rename(diamonds, carat_new = carat, cut_new = cut)
# finding mean through summarize() 
summarize(diamonds, mean_carat = mean(carat))
# Step 4: Visualizing Data
ggplot(data = diamonds, aes(x = carat, y = price)) + geom_point()

# changing the color of the cut variable
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) + geom_point()
# Separating the component of each cut using the facet_wrap function
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) + geom_point() + facet_wrap(~cut)
# Documentation











