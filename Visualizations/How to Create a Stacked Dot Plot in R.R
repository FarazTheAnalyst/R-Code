# stacked dot plot in base R
# create some fake data
set.seed(0)
data <- sample(0:20, 100, replace = TRUE)

# create stacked dot plot
stripchart(data, method = "stack")

# customize stacked dot
# create some fake data
set.seed(0)

data <- sample(0:20, 100, replace=TRUE)

# create stacked dot plot
stripchart(data, method = "stack", offset = 0.5, at = 0, pch = 19,
           col = "lightblue", main="Stacked Dot Plot", xlab = "Data Value")

# stacked dot plot in ggplot2
# load ggplot2
library("ggplot2")

# create fake data 
set.seed(0)
data <- data.frame(x=sample(0:20, 100, replace = TRUE))

# create stacked dot plot
ggplot(data, aes(x=x)) +
  geom_dotplot()

# customize stack dotplot
# load ggplot2
library("ggplot2")

# create some fake data
set.seed(0)
data <- data.frame(x=sample(0:20, 100, replace = TRUE))

# create customized stacked dot plot
ggplot(data, aes(x=x)) +
  geom_dotplot(dotsize = .75, stackratio = 1.2, fill="steelblue") +
  scale_y_continuous(NULL, breaks = NULL) +
  labs(title = "stacked Dot Plot", x="Data Values", y = " ")






















