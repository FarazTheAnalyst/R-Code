# A barplot is useful for visualizing the quantities
# of different categorical variables.

# Step 1: Create the Data
# create data 
df <- data.frame(stadium=rep(c('A', 'B', 'C'), each=4),
                 food=rep(c('popcorn', 'soda'), times=6),
                 sales=c(4, 5, 6, 8, 9, 12, 7, 9, 9, 11, 14, 13))

# view data
df

# Step 2: Create the Barplot with Multiple Variables
ggplot(df, aes(fill=food, y=sales, x=stadium)) + 
  geom_bar(position = "dodge", stat = "identity")

# Step 3: Modify the Aesthetics of the Barplot
ggplot(df, aes(fill=food, y=sales, x=stadium)) + 
  geom_bar(position = "dodge", stat="identity") + 
  ggtitle("Sales by Stadium") + 
  xlab('Stadium') +
  ylab("Sales (in thousands)") +
  scale_fill_manual("Product", values=c("coral2", "steelblue"))
