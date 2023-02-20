# create data
df <- data.frame(order_num = 1:20,
                 product=rep(c('TV', 'Radio', 'Computer'), times=c(9, 6, 5)),
                 country=rep(c('A', 'B', 'C', 'D'), times=5))

# view data
df

# create contingency table
table <- table(df$product, df$country)

# view contingency table
table

# add margins to contingency table
table_w_margins <- addmargins(table)

# view contingency table
table_w_margins
