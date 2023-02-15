library("haven")
data <- read_sav("C:\\Users\\DELL\\Downloads\\manipulate.sav")

# view class of data
class(data)
# display dimensions of data frame
dim(data)

# view first six rows of the data
head(data)