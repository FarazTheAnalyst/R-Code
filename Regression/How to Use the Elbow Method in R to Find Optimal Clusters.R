# Example: Using the Elbow Method in R
# load data
df <- USArrests

# remove rows with missing values
df <- na.omit(df)

# scale each variable to have a mean of 0 and sd of 1
df <- scale(df)

# view first six rows of datset
head(df)

library("cluster")
install.packages("facetoextra")
library("facetoextra")

# create plot of number of clusters vs total within sum of squares
fviz_nbclust(df, kmeans, method = "wss")

# make this example reproducible
set.seed(1)

# perform k-means clustering with k = 4 clusters
km <- kmeans(df, centers = 4, nstart = 25)

# add cluster assignment to original data
final_data <- cbind(USArrests, cluster = km$cluster)

# view final data
head(final_data)
