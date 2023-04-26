# Example: Plot Multiple Lines in ggplot2
# create data frame
df <- data.frame(day=c(1, 2, 3, 4, 5),
                 storeA=c(5, 6, 8, 8, 9),
                 storeB=c(3, 3, 4, 5, 7),
                 storeC=c(8, 10, 12, 12, 17))

# view data frame
df

# This data frame is currently in a wide format.
# However, we can use the pivot_longer() function from the tidyr package
# to quickly convert the data into a long format:
library(tidyr)

# convert data from wide to long format
df <- df %>% pivot_longer(cols=c("storeA", "storeB", "storeC"),
                          names_to = "store",
                          values_to = "sales")

# view updated data frame
df

library("ggplot2")

# plot sales by store
ggplot(df, aes(x=day, y=sales)) + 
  geom_line(aes(color=store)) +
  scale_color_manual(name="Store", labels=c("A", "B", "C"), 
                     values = c("red", "purple", "steelblue"))
