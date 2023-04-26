# Example 1: Basic Plot with Two Lines in ggplot2
# create data frame
df <- data.frame(day = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
                 sales = c(8, 8, 7, 6, 7, 8, 9, 12, 14, 18),
                 customers = c(4, 6, 6, 4, 6, 7, 8, 9, 12, 13))

# view first six rows of data frame
head(df)

library("ggplot2")

# create plot with two lines
ggplot(df, aes(x=day)) +
  geom_line(aes(y=sales, color="sales")) +
  geom_line(aes(y=customers, color="customers"))

# Example 2: Custom Plot with Two Lines in ggplot2
# the followeing code shows how to create the same plot as the previous example
# with example with a custom title, labels, colors, line,
# thickness, and theme
library("ggplot2")

ggplot(df, aes(x=day)) +
  geom_line(aes(y=sales, color="sales"), lwd=2) +
  geom_line(aes(y=customers, color="customers"), lwd=2) +
  scale_color_manual("Metric", values = c("red", "steelblue")) +
  labs(title = "Sales & Customers by Day", x="Day", y="Amount") +
  theme_minimal()
