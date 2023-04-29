# A pie chart is a type of chart that is shaped like a circle
# and uses slices to represent proportions of a whole.
# How to Make a Basic Pie Chart
library("ggplot2")

# create data frame
data <- data.frame("category" = c("A", "B", "C", "D"),
                   "amount"=c(25, 40, 27, 8)) 

# create pie chart
ggplot(data, aes(x="", y=amount, fill=category)) + 
  geom_bar(stat="identity", width = 1) +
  coord_polar("y", start=0)


# How to Modify the Appearance of the Pie Chart
ggplot(data, aes(x="", y=amount, fill=category)) + 
  geom_bar(stat = "identity", width=1) + 
  coord_polar("y", start=0) + 
  theme_void()

# We can further improve the appearance of the chart by adding labels inside the slices:
ggplot(data, aes(x="", y=amount, fill=category)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0) +
  geom_text(aes(label = paste0(amount, "%")), position = position_stack(vjust=0.5)) +
  labs(x = NULL, y = NULL, fill = NULL)
    

# We can customize the chart even further by specifying our own
# hex colors to use for the slices with the scale_fill_manual() argument:
ggplot(data, aes(x="", y=amount, fill=category)) + 
  geom_bar(stat="identity", width=1) + 
  coord_polar("y", start = 0) +
  geom_text(aes(label=paste0(amount, "%")), position = position_stack(vjust=0.5))+ 
  labs(x=NULL, y=NULL, fill=NULL) +
  theme_classic() + 
  theme(axis.line = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank()) + 
  scale_fill_manual(values=c("#FF5733", "#75FF33", "#33DBFF", "#BD33FF"))


# You can also customize the colors of the slices by simply
# choosing one of the brewer color scales. For example, here's
# what the "blues" color scale looks like:
ggplot(data, aes(x="", y=amount, fill=category)) +
  geom_bar(stat = "identity", width=1) + 
  coord_polar("y", start = 0) + 
  geom_text(aes(label=paste(amount, "%")), position = position_stack(vjust=0.5)) +
  labs(x=NULL, y=NULL) + 
  theme_classic() + 
  theme(axis.line = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank()) + 
  scale_fill_brewer(palette = "Blues")


















