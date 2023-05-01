# Example 1: Create Basic Plot
library("ggplot2")

# make this example reproducible
set.seed(0)

# create data
df <- data.frame(x=rnorm(n=5000))

# create histogram using ggplot2
ggplot(df, aes(x=x)) +
  geom_histogram() + 
  ggtitle("Title of Histogram") +
  theme(plot.background = element_rect(fill="#e3fbff"))

# Notice how the plot has minimal margins on each side.

# Example 2: Modify Margins of the Plot
library("ggplot2")

# make this example reproducible
set.seed(0)

# create data 
df <- data.frame(x=rnorm(n=5000))

# create histogram with significant margins on top and bottom
ggplot(df, aes(x=x)) + 
  geom_histogram() + 
  ggtitle("Title of Histogram") +
  theme(plot.margin = unit(c(5, 1, 5, 1), "cm"),
        plot.background = element_rect(fill="#e3fbff"))

# the following code shows how to add significant margins to
# the left and right of the plot
library("ggplot2")

# make this example reproducible
set.seed(0)

# create data
df <- data.frame(x=rnorm(n=5000))

# create histogram with significant margins on left and right
ggplot(df, aes(x=x)) + 
  geom_histogram() + 
  ggtitle("Title of Histgram") +
  theme(plot.margin = unit(c(1, 5, 1, 5), "cm"),
        plot.background = element_rect(fill="#e3fbff"))





















