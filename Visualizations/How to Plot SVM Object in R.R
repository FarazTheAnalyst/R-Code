# create data frame
df <- data.frame(points = c(4, 5, 5, 7, 8, 12, 15, 22, 25, 29),
                 assists = c(3, 4, 6, 8, 5, 6, 5, 6, 8, 12),
                 good = factor(c(0, 0, 0, 1, 0, 1, 0, 1, 1, 1)))

# view data fraem
df

library("e1071")

# fit support vector machine
model = svm(good ~ points + assists, data = df)

# plot support vector machine
plot(model, df)

# fit support vector machine
model = svm(good ~ points + assists, data = df)

# plot support vector machine using different color palette
plot(model, df, color.palette = heat.colors)
plot(model, df, color.palette = rainbow)
plot(model, df, color.palette = terrain.colors)
plot(model, df, color.palette = topo.colors)
