# lollopop chart in R
# view first six rows of mtcars
head(mtcars)

# create new column for car names
mtcars$car <- row.names(mtcars)

# view new column car in mtcars dataset
mtcars

# load ggplot2 library
library("ggplot2")

# create lollipop chart
ggplot(mtcars, aes(x=mpg, y=car)) +
  geom_segment(aes(x=0, y=car, xend=mpg, yend=car)) +
  geom_point()

ggplot(mtcars, aes(x=mpg, y=car, label=mpg)) +
  geom_segment(aes(x=0, y=car, xend=mpg, yend=car)) +
  geom_point() +
  geom_text(nudge_x = 1.5)

# instead of placing the labels at the end of each line, we could them inside of
# the circles themselves by enlarging the circles and canging the label font color to white
ggplot(mtcars, aes(x=mpg, y=car, label = mpg)) +
  geom_segment(aes(x = 0, y = car, xend = mpg, yend = car)) +
  geom_point(size=7) +
  geom_point(size = 7) +
  geom_text(color = "white", size = 2)

# load library dplyr
library("dplyr")

# find mean value mpg and arrange cars in  order by mpg descending
mtcars_new <- mtcars %>% 
  arrange(mpg) %>% 
  mutate(mean_mpg = mean(mpg), 
         flag = ifelse(mpg - mean_mpg > 0, TRUE, FALSE), 
         car = factor(car, levels = .$car))

# view first six rows of mtcars_new 
head(mtcars_new)

ggplot(mtcars_new, aes(x = mpg, y = car, color = flag)) +
  geom_segment(aes(x = mean_mpg, y = car, xend = mpg, yend = car)) +
  geom_point()

ggplot(mtcars_new, aes(x = mpg, y = car, color = flag)) +
  geom_segment(aes(x = mean_mpg, y = car, xend = mpg, yend = car), color = "grey") +
  geom_point() +
  annotate("text", x = 27, y = 20, label = "Above Average", color = "#00BFC4", size = 3, hjust = -0.1, vjust = .75) +
  annotate("text", x = 27, y = 17, label = "Below Average", color = "#F8766D", size = 3, hjust = -0.1, vjust = -.1) +
  geom_segment(aes(x = 26.5, xend = 26.5, y = 19, yend = 23),
               arrow = arrow(length = unit(0.2,"cm")), color = "#00BFC4") +
  geom_segment(aes(x = 26.5, xend = 26.5 , y = 18, yend = 14),
               arrow = arrow(length = unit(0.2,"cm")), color = "#F8766D") +
  labs(title = "Miles per Gallon by Car") +
  theme_minimal() +
  theme(axis.title = element_blank(),
        panel.grid.minor = element_blank(),
        legend.position = "none",
        text = element_text(family = "Georgia"),
        axis.text.y = element_text(size = 8),
        plot.title = element_text(size = 20, margin = margin(b = 10), hjust = 0),
        plot.subtitle = element_text(size = 12, color = "darkslategrey", margin = margin(b = 10, l = -15)),
        plot.caption = element_text(size = 8, margin = margin(t = 10), color = "grey70", hjust = 0))
  
  

  













