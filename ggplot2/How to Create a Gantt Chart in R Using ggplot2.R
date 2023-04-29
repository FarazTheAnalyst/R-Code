# A gantt chart is a type of chart that shows the start
# and end times of various events.

# Creating a Gantt Chart in R Using ggplot2
# Suppose we have the following dataset that shows the start
# and end times for the shifts of four different workers at a store:
# create data frame
data <- data.frame(name=c("Bob", "Greg", "Mike", "Andy"),
                   start = c(4, 7, 12, 16),
                   end = c(12, 11, 8, 22),
                   shift_type = c("early", "mid_day", "mid_day", "late"))

# view data 
data

# install (if not already installed) and load ggplot2
if(!require(ggplot2)){install.packages("ggplot2")}

# create gantt chart visualizes start and end time for each worker
ggplot(data, aes(x=start, xend=end, y=name, yend=name, color=shift_type)) +
  geom_segment()

# With a couple tweaks to the layout, we can make
# this gantt chart look much better:
ggplot(data, aes(x=start, xend=end, y=name, yend=name, color=shift_type)) +
  theme_bw() + #use ggplot theme with black gridlines and white background
  geom_segment(size=8) + #increase line width of segments in the chart
  labs(title = "Worker Schedule", x="Time", y="Worker Name")

# In addition, if you would like to define the exact colors
# to be used in the chart, you can use the following code:
ggplot(data, aes(x=start, xend=end, y=name, yend=name, color=shift_type)) +
  theme_bw() + #use ggplot theme with black gridlines and white background
  geom_segment(size=8)  + #increase line width of segments in the chart
  scale_colour_manual(values = c("pink" , "purple", "blue"))

# Using Custom Themes
# load ggthemes library
library("ggthemes")

# create scatterplot with Wall Street Journal theme
ggplot(data, aes(x=start, xend=end, y=name, yend=name, color=shift_type)) +
  theme_bw() + 
  geom_segment(size=8) +
  labs(title = "Worker Schedule", x="Time", y="Worker Name") +
  scale_colour_manual(values = c("pink", "purple", "blue")) +
  theme_wsj() + 
  theme(axis.title = element_text())

# Or we could use a theme inspired by The Economist:
ggplot(data, aes(x=start, xend=end, y=name, yend=name, color=shift_type)) + 
  theme_bw() + 
  geom_segment(size=8) + 
  labs(title = "Worker Schedule", x="Time", y="Worker Name") + 
  scale_colour_manual(values = c("pink", "purple", "blue")) + 
  theme_economist() + 
  theme(axis.title = element_text())

# Or perhaps a theme inspired by Five Thirty Eight:
ggplot(data, aes(x=start, xend=end, y=name, yend=name, color=shift_type)) +
  theme_bw() + 
  geom_segment(size=8) +
  labs(title = "Worker Schedule", x="Time", y="Worker Name") + 
  scale_colour_manual(values=c("pink", "purple", "blue")) +
  theme_fivethirtyeight() + 
  theme(axis.title = element_text())
