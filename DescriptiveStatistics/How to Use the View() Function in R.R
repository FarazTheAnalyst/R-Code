# make this example reproducible
set.seed(0)

# create data frame
df <- data.frame(x=rnorm(100),
                 y=rnorm(100))

# viwe data frame
View(df)
