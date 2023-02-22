# Boxplot in Base R
# view first 6 rows of "airquality" dataset
head(airquality)
View(airquality)

# create boxplot for the variable "Ozone"
boxplot(airquality$Ozone)

# create boxplot that displays temperature distribution for each month in the dataset
boxplot(Temp ~ Month,
        data = airquality,
        main = "Temperature Distribution by Month",
        xlab = "Month",
        ylab = "Degrees (F)",
        col = "gold",
        border = "black")

# create boxplot for the variable "Ozone"
library("ggplot2")

ggplot(data = airquality, aes(x=Ozone)) + geom_boxplot()

# create boxplot that displays temperature distribution for each month in the dataset
library("ggplot2")

ggplot(data = airquality, aes(x=as.character(Month), y = Temp)) +
  geom_boxplot(fill = "steelblue") +
  labs(title = "Temperature Distribution by Month", x="Month", y="Degrees (F)")



















