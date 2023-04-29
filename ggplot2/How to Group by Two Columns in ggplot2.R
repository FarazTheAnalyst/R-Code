# Example: Group by Two Columns in ggplot2
# create data frame
df <- data.frame(store=rep(c("A", "B"), each=8),
                 promo=rep(c("Promo1", "Promo2"), each=4, times=2),
                 week=rep(c(1:4), times=4),
                 sales=c(1, 2, 6, 7, 2, 3, 5, 6, 3, 4, 7, 8, 3, 5, 8, 9))

# view data frame
df

library("ggplot2")

# create line plot with values grouped by store and promo
ggplot(df, aes(x=week, y=sales, color=store, shape=promo,
               group=interaction(store, promo))) + 
  geom_point(size=3) + 
  geom_line()
