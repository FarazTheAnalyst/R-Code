# calculate mean of every row
# create data frame
df <- data.frame(points=c(99, 91, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24,24, 28),
                 blocks=c(1, 4, 11, 0, 2))

# view data frame
df

# calculate row means
rowMeans(df)

# calculate mean of every row & exclude NA's
# create data frame with NA valuess
df <- data.frame(points=c(99, 91, 86, 99, 95),
                 assists=c(33, NA, 31, 39, 34),
                 rebounds=c(30, 28, NA, NA, 28),
                 blocks=c(1, 3, 11, 0, 2))

# view data frame
df

# calculate row means
rowMeans(df, na.rm=T)

# calculate mean of specific rows
# create data frame
df <- data.frame(points=c(99, 91, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28),
                 blocks=c(1, 4, 11, 0, 2))

# calculate row means of first three rows only
rowMeans(df[1:3, ])

# c() to spcific rows
# calculate rowm means for rows 1, 4, and 5
rowMeans(df[c(1, 4, 5), ])

























