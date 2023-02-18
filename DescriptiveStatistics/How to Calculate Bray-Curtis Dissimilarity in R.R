# create data frame
df <- data.frame(A=c(4, 3),
                 B=c(0, 6),
                 C=c(2, 0),
                 D=c(7, 4),
                 E=c(8, 11))

# view data frame
df

# calculate Bray-Curtis dissimilarity
sum(apply(df, 2, function(x) abs(max(x)-min(x)))) / sum(rowSums(df))
