# create correlation heatmap in R
library("reshape2")

# create data frame
df <- data.frame(points=c(22, 25, 30, 16, 14, 18, 29, 22),
                 assists=c(4, 4, 5, 7, 8, 6, 7, 12),
                 rebounds=c(10, 7, 7, 6, 8, 5, 4, 3),
                 blocks=c(12, 4, 4, 6, 5, 3, 8, 5))

# view data frame
df

# calculate correlation coefficients, rounded to 2 decimal places
cor_df <- round(cor(df), 2)

# view cor_df
cor_df

# melt the data frame
melted_cor <- melt(cor_df)

# view head of melted data frame
head(melted_cor)

library("ggplot2")

# create correlation heatmap
ggplot(data=melted_cor, aes(x=Var1, y=Var2, fill=value)) +
  geom_tile() +
  geom_text(aes(Var2, Var1, label = value), size = 5) +
  scale_fill_gradient(low="purple", high = "gold",
                      limit=c(-1, 1), name="Correlation") +
  theme(axis.title.x = element_blank(), 
        axis.title.y = element_blank(),
        panel.background = element_blank())

library("ggplot2")

# create correlation heatmap
ggplot(data=melted_cor, aes(x=Var1, Var2, fill=value)) +
  geom_tile() +
  geom_text(aes(Var2, Var1, label=value), size=5)+
  scale_fill_gradient2(low = "red", high="green",
                       limit=c(-1, 1), name="Correlation") +
theme(axis.title.x = element_blank(),
      axis.title.y = element_blank(),
      panel.background = element_blank())


















