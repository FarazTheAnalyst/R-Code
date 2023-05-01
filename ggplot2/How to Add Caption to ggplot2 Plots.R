# create data frame
df <- data.frame(assists=c(1, 2, 2, 3, 5, 6, 7, 8, 8),
                 points=c(3, 6, 9, 14, 20, 23, 16, 19, 26))

# view data frame
df

# Example 1: Add Caption in Default Location
library(ggplot2)

# create scatter plot with caption in bottom right corner
ggplot(df, aes(x=assists, y=points)) + 
  geom_point(size=3) + 
  labs(caption = "Based on 2022 Basketball Data")

# Example 2: Add Caption in Custom Location
ggplot(df, aes(x=assists, y=points)) +
  geom_point(size=3) +
  labs(caption="Based on 2022 Basketball Data") + 
  theme(plot.caption = element_text(hjust=0))

# Example 3: Add Caption & Customize Text
library("ggplot2")

# create scatter plot with custom caption in bottom right corner
ggplot(df, aes(x=assists, y=points)) +
  geom_point() +
  labs(caption = "Based on 2022 Basketball Data") +
  theme(plot.caption = element_text(size=16, color="red", face = "italic"))

ggplot(df, aes(x=assists, y=points)) + 
  geom_point() +
  labs(caption = "Based on 2022 Basketball Data") + 
  theme(plot.caption = element_text(hjust = 0.5))
