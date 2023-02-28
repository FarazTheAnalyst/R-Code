# create data
df <- data.frame(Mon=c(100, 0, 34),
                  Tue=c(100, 0, 48),
                  Wed=c(100, 0, 58),
                  Thu=c(100, 0, 67), 
                  Fri=c(100, 0, 55), 
                  Sat=c(100, 0, 29),
                  Sun=c(100, 0, 18))

# view data
df

# install and load library
install.packages("fmsb")
library("fmsb")

radarchart(df)

# customize radar charts in R
radarchart(df, 
           axistype = 1,
           pcol="pink", 
           pfcol=rgb(0.9, 0.2, 0.5, 0.3),
           plwd = 3,
           cglcol="grey",
           cglty=1,
           axislabcol = "grey",
           cglwd = 0.6,
           vlcex = 1.1, 
           title = "Customers per Day"
           )

           