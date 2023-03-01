# create data
df <- data.frame(favorite=c("A", "B", "C", "D", "E", "F"),
                 count=c(140, 97, 58, 32, 17, 6))

# view data 
df

# create the pareto chart
# install & load qcc package
install.packages("qcc")
library("qcc")

# create pareto chart
pareto.chart(df$count)

# modify the pareto chart (optional)
pareto.chart(df$count,
             main="Pareto Chart for Favorite Cereal Brands",
             col=terrain.colors(length(df$count)))
