# create data frame
df <- data.frame(A=c(1, 3, 3, 4, 5, 7, 8),
                 B=c(3, 6, 9, 12, 15, 14, 10),
                 C=c(10, 12, 14, 14, 17, 19, 20),
                 D=c(5, 7, 4, 3, 3, 2, 1))

# veiw data frame
df

# plot subset of data frame based on one condition
# plot A vs. B where C is  less than 15
with(df[df$C < 15, ], plot(A, B) )

# plot subset of data frame based on multiple conditions
# plot A vs. B where C is less than 15 and D is greater than 3
with(df[(df$C < 15) & (df$D > 3)], plot(A, B))
