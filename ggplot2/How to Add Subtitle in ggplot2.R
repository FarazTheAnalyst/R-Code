# create data frame
df <- data.frame(hours=c(1, 2, 2, 3, 4, 6, 7, 7, 8, 9),
                 score=c(76, 77, 75, 79, 84, 88, 85, 94, 95, 90))

# view data frame
df

# Example 1: Add Subtitle in ggplot2
library("ggplot2")

# create scatterplot with subtitle on one line 
ggplot(df, aes(x=hours, y=score)) + 
  geom_point(size=2) +
  labs(title="Hours Studied vs. Exam Score",
       subtitle="Data Collected in 2022")

# Example 2: Add Multi-Line Subtitle in ggplot2
library("ggplot2")

# create scatterplot with subtitle on multiple lines
ggplot(df, aes(x=hours, y=score)) + 
  geom_point(size=2) + 
  labs(title="Hours Studied vs. Exam Score",
       subtitle = "Data Collected in 2022\nUniversity A Exam Scores")

# Example 3: Add Subtitle with Custom Font
library("ggplot2")

# create scatter plot with subtitle that has customized font
ggplot(df, aes(x=hours, y=score)) + 
  geom_point(size=2) + 
  labs(title="Hours Studied vs. Exam Score", 
       subtitle="Data Colledted in 2022\nUniversity A Exam Scores") +
  theme(plot.subtitle=element_text(size=18, face="italic", color = "red"))
