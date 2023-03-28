# create data frame
df <- data.frame(player=LETTERS[1:12],
                 points=c(1, 2, 2, 2, 4, 5, 7, 9, 12, 14, 15, 22))

# view data frame
df

library("ggplot2")

# create new column that splits data into three equal sized groups based on points
df$group <- cut_number(df$points, 3)

# view updated data frame
df

# create new column that splits data into three equal sized groups based on pooints
df$group <- as.numeric(cut_number(df$points, 3))

# view updated data frame
df
