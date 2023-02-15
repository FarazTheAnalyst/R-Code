# Import data from URL
data <- read.csv('https://raw.githubusercontent.com/Statology/Miscellaneous/main/basketball_data.csv')

#View first 5 rows
head(data)

# View class of data
class(data)

#import data from URL
library("data.table")
data1 <- fread('https://raw.githubusercontent.com/Statology/Miscellaneous/main/basketball_data.csv')

#View first 5 rows
head(data1)

# View class of data
class(data1)

#Import data from URL
library(readr)

data2 <- read_csv('https://raw.githubusercontent.com/Statology/Miscellaneous/main/basketball_data.csv')

#View first five rows
head(data2)

#View class of data
class(data2)





