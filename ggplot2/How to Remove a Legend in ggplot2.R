# Step 1: Create the Data Frame
# create data frame
df <- data.frame(assists=c(3, 4, 4, 3, 1, 5, 6, 7, 9),
                 points=c(14, 8, 8, 16, 3, 7, 17, 22, 26),
                 position=rep(c('Guard', 'Forward', 'Center'), times=3))

# view data frame
df

# Step 2: Create a Plot Using ggplot2
library("ggplot2")

# create scatterplot
ggplot(df, aes(x=assists, y=points, color=position)) + 
  geom_point(size=3)

# Step 3: Remove the Legend from the Plot
library("ggplot2")

# create scatterplot with no legend
ggplot(df, aes(x=assists, y=points, color=position)) + 
  geom_point() + 
  theme(legend.position = "none")
