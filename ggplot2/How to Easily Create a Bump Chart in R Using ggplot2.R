# Example: Creating a Bump Chart
library("ggplot2")
library("dplyr")

# set the seed to make this example reproducible
set.seed(10)

data <- data.frame(team=rep(LETTERS[1:5], each=10),
                   random_num=runif(50),
                   day=rep(1:10, 5))

# display data 
data

data <- data %>% 
  group_by(day) %>% 
  arrange(day, desc(random_num), team) %>% 
  mutate(rank = row_number()) %>% 
  ungroup()

# view data 
head(data)

# This data frame simply shows the "rank" of five different teams 
# across a time span of 10 days.

# We can use ggplot2 to create a bump chart to visualize the 
# rank of each team during each day over this time span:
ggplot(data, aes(x=day, y=rank, group=team)) + 
  geom_line(aes(color=team, alpha=1), size=2) +
  geom_point(aes(color=team, alpha=1), size=4) + 
  scale_y_reverse(breaks=1:nrow(data))

# Styling the Bump Chart
my_theme <- function() {
  #colors
  color.background = "white"
    color.text = "#22211d"
      
    #Begin construction of chart
    theme_bw(base_size = 15) + 
      
      #Format background colors
      theme(panel.background = element_rect(fill = color.background,
                                            color = color.background)) +
      theme(plot.background = element_rect(fill = color.background,
                                           color=color.background)) +
      theme(panel.background = element_rect(color=color.background)) +
      theme(strip.background = element_rect(fill=color.background,
                                            color = color.background)) + 
      
      #Format the grid
      theme(panel.grid.major.y = element_blank()) + 
      theme(panel.grid.minor.y = element_blank()) +
      theme(axis.ticks = element_blank()) +
      
      #Format the legend
      theme(legend.position = "none") +
      theme(plot.title = element_text(color=color.text, size = 20, face="bold")) +
      theme(axis.title.x = element_text(size = 14, color = "black", face = "bold")) +
      theme(axis.title.y = element_text(size=14, color = "black", face = "bold",
                                        vjust = 1.25)) +
      theme(axis.text.x = element_text(size=10, vjust = 0.5, hjust = 0.5,
                                       color=color.text)) +
      theme(axis.text.y = element_text(size=10, color=color.text)) + 
      theme(strip.text = element_text(face = "bold")) + 
      #Plot margins
      theme(plot.margin = unit(c(0.35, 0.2, 0.3, 0.35), "cm"))
}


# We'll create the bump chart again, but this time we'll
# remove the legend, add some chart labels, and use the theme
# defined in the code above:
ggplot(data, aes(x = as.factor(day), y = rank, group = team)) +
  geom_line(aes(color = team, alpha = 1), size = 2) +
  geom_point(aes(color = team, alpha = 1), size = 4) +
  geom_point(color = "#FFFFFF", size = 1) +
  scale_y_reverse(breaks = 1:nrow(data)) + 
  scale_x_discrete(breaks = 1:10) +
  theme(legend.position = 'none') +
  geom_text(data = data %>% filter(day == "1"),
            aes(label = team, x = 0.5) , hjust = .5,
            fontface = "bold", color = "#888888", size = 4) +
  geom_text(data = data %>% filter(day == "10"),
            aes(label = team, x = 10.5) , hjust = 0.5,
            fontface = "bold", color = "#888888", size = 4) +
  labs(x = 'Day', y = 'Rank', title = 'Team Ranking by Day') +
  my_theme() 

# We can also easily highlight one of the lines by adding a 
# scale_color_manual() argument. For example, in the following
# code we make the line for team A purple and the line for all
# of the other lines grey:

ggplot(data, aes(x = as.factor(day), y = rank, group = team)) +
  geom_line(aes(color = team, alpha = 1), size = 2) +
  geom_point(aes(color = team, alpha = 1), size = 4) +
  geom_point(color = "#FFFFFF", size = 1) +
  scale_y_reverse(breaks = 1:nrow(data)) + 
  scale_x_discrete(breaks = 1:10) +
  theme(legend.position = 'none') +
  geom_text(data = data %>% filter(day == "1"),
            aes(label = team, x = 0.5) , hjust = .5,
            fontface = "bold", color = "#888888", size = 4) +
  geom_text(data = data %>% filter(day == "10"),
            aes(label = team, x = 10.5) , hjust = 0.5,
            fontface = "bold", color = "#888888", size = 4) +
  labs(x = 'Day', y = 'Rank', title = 'Team Ranking by Day') +
  my_theme() +
  scale_color_manual(values = c('purple', 'grey', 'grey', 'grey', 'grey'))



# We could also highlight more than one line if we'd like:
ggplot(data, aes(x = as.factor(day), y = rank, group = team)) +
  geom_line(aes(color = team, alpha = 1), size = 2) +
  geom_point(aes(color = team, alpha = 1), size = 4) +
  geom_point(color = "#FFFFFF", size = 1) +
  scale_y_reverse(breaks = 1:nrow(data)) + 
  scale_x_discrete(breaks = 1:10) +
  theme(legend.position = 'none') +
  geom_text(data = data %>% filter(day == "1"),
            aes(label = team, x = 0.5) , hjust = .5,
            fontface = "bold", color = "#888888", size = 4) +
  geom_text(data = data %>% filter(day == "10"),
            aes(label = team, x = 10.5) , hjust = 0.5,
            fontface = "bold", color = "#888888", size = 4) +
  labs(x = 'Day', y = 'Rank', title = 'Team Ranking by Day') +
  my_theme() +
  scale_color_manual(values = c('purple', 'steelblue', 'grey', 'grey', 'grey'))
