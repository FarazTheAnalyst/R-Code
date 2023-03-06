# make this example reproducible
set.seed(0)

# create data frame
df <- data.frame(tour=rep(1:10, each20),
                 experience=rnorm(200, mean=7, sd=1))

# view first six rows of data frame
head(df)

# randomly choose 4 tour out of the 10
clusters <- sample(unique(df$tour), size = 4, replace = FALSE )

# define sample as all members who belong to one of the 4 tour groups
cluster_sample <- df[df$tour %in% clusters, ]

# view how many customers came from each tour
table(cluster_sample$tour)
