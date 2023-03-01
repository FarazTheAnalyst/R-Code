# load data
data("USArrests")

# view first six rows of data
head(USArrests)

# peform PCA
results <- prcomp(USArrests, scale. = TRUE)
results

# create the scree plot
# calculate total variabce explained by each pricipal component
var_explained = results$sdev^2 / sum(results$sdev^2)

# create scree plot
library("ggplot2")

qplot(c(1:4), var_explained) +
  geom_line()+
  xlab("Principal Component") +
  ylab("Variance Explained") +
  ggtitle("Scree Plot") +
  ylim(0, 1)

# view var_explained
var_explained
