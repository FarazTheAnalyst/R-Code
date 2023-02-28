# view first six lines of airquality data
head(airquality)

# create boxplot without order that shows distribution of temperature by month
boxplot(Temp ~ Month, data = airquality, col="chocolate", border="black")

# reorder boxplots based on specific order
# reorder Month values
airquality$Month <- factor(airquality$Month, levels = c(5, 8, 6, 9, 7))

# create boxplot of tepperature by month using the order we specified
boxplot(Temp ~ Month, data = airquality, col = "chocolate", border="black")

# Reorder Boxplots Based on Median Value
# reorder month values in ascending order based on median value of Temp
airquality$Month <- with(airquality, reorder(Month, Temp, median, na.rm=T))

# create boxplot of temperature by month
boxplot(Temp~Month, data=airquality, col="lightblue", border="black")

# reorder Month valeusin descending order based on mdeian value of Temp
airquality$Month <- with(airquality, reorder(Month, -Temp, median, na.rm=T))

# create boxplot or temperature by Month
boxplot(Temp~Month, data = airquality, col="lightblue", border="black")
