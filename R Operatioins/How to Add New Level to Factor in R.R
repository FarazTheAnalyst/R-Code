# create data frame
df <- data.frame(region=factor(c('A', 'B', NA, 'D', NA, 'F')),
                 sales=c(12, 18, 21, 14, 34, 40))

# view data frame
df

# add factor level called "no region"
levels(df$region) <- c(levels(df$region), "no region")

# convert each NA to "no region"
df$region[is.na(df$region)] <- "no region"

# view factor levels for region
levels(df$region)

# view occurrences of each factor level
table(df$region)
