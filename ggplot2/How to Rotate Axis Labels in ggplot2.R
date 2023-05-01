# Step 1: Create the Data Frame
# create data frame
df = data.frame(team=c('The Amazing Amazon Anteaters',
                       'The Rowdy Racing Raccoons',
                       'The Crazy Camping Cobras'),
                points=c(14, 22, 11))

# view data frame
df

# Step 2: Create a Bar Plot
library("ggplot2")

# create bar plot
ggplot(data=df, aes(x=team, y=points)) + 
  geom_bar(stat="identity")

# Step 3: Rotate the Axis Labels of the Plot
library("ggplot2")

# create bar plot with axis  labels 90 degrees
ggplot(data=df, aes(x=team, y=points)) +
  geom_bar(stat="identity") + 
  theme(axis.text.x = element_text(angle=90, vjust=.5, hjust=1))

# we can use the following code to rotate the x-axis labels 45 degrees:
library("ggplot2")

# create bar plot with axis labels rotated 90 degress
ggplot(data=df, aes(x=team, y=points)) + 
  geom_bar(stat="identity") + 
  theme(axis.text.x = element_text(angle = 45, vjust = 1,hjust = 1
                                   ))
