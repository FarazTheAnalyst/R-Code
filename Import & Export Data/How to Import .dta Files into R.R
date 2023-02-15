install.packages("haven")
library("haven")

# import the cola.dta file
data <- read_dta("C:\\Users\\DELL\\Downloads\\cola.dta")

# view class of data
class(data)

# display dimensions of data frame
dim(data)

# view first six rows of data
head(data)
