# Example: Increase Print Limit in R
# make this example reproducible 
set.seed(0)

# crete dta frame
df <- data.frame(x=runif(1002),
                 y=runif(1002))

# view head of data frame
head(df)

# attempt to print entire data frame
df

# increase print limit to 2500 values
options(max.print = 2500)

# attempt to print entire data frame again
df

# increase print limit to max allowed by your machine
options(max.print = .Machine$integer.max)

