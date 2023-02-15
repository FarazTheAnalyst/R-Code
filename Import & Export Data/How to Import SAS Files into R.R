install.packages("haven")
library("haven")
data <- read_sas("C:\\Users\\DELL\\Downloads\\cola.sas7bdat")

# view class of data
class(data)

# display dimentions of data frame
dim(data)

#view first six rows of data
head(data)
