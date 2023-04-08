# Example: Reorder Factor Levels in R
# create data frame
df <- data.frame(region=factor(c('A', 'B', 'C', 'D', 'E')),
                 sales=c(12, 18, 21, 14, 34))

# view data frame
df

# display factor levels for region
levels(df$region)

# re-order factor levels for region
df$region <- factor(df$region, levels=c("A", "E", "D", "C", "B"))

# display factor levels for region
levels(df$region)

# re-order data frame based on factor levels for region
df <- df[order(levels(df$region)),]

# create barplot and place bars in order based on factor levels for region
barplot(df$sales, names=df$region)
