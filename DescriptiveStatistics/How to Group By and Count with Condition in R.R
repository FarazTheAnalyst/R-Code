# create data frame
df <- data.frame(team=c("A", "A", "A", "A", "B", "B", "B", "B"),
                 pos=c("Gu", "Fo", "Fo", "Fo", "Gu", "Gu", "Fo", "Fo"),
                 points=c(18, 22, 19, 14, 14, 11, 20, 28))

# view data frame
df

library("dplyr")

# group by team and count rows where pos is "Gu"
df %>% 
  group_by(team) %>% 
  summarize(count = sum(pos == "Gu"))

# group by team and count rows wehre pos is "Gu"
df %>% 
  group_by(team) %>% 
  summarize(count =  sum(points > 15))
