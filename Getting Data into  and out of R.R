# Getting Data into R
# Entering data in the R text editor
elements <- data.frame()
elements <- edit(elements)
print(elements)
# Using the clipboard to copy  and paste
x <- readClipboard()
x
?read.table
getwd()
setwd("C:/Users/Dell/Documents")
x <- read.table(file = "clipboard", sep = "\t", header = TRUE)
x

# Reading data in  CSV files
install.packages("rfordummies")
library(rfordummies)
?elements
?write.csv
write.csv(elements, file = "elements.csv", row.names = FALSE)
saveElements("elements.xlsx")
saveElements("elements.csv", type = "csv")
?read.csv()
fdata <- read.csv("mbb.csv")
str(fdata)
elements <- read.csv("elements.csv")
str(elements, vec.len = 2)
elements <- read.csv("elements.csv", stringsAsFactors = FALSE )
str(elements, vec.len = 2)

# Using read.table() to import tabular data in text files
?read.table
x <- read.table(file = "clipboard", sep = "\t",
                header = TRUE, skip = 5,
                )

# Reading data from Excel
install.packages("XLConnect")
library("XLConnect")
getwd()
m <- read_excel("mbb.xlsx")
m
elements <- readWorksheetFromFile("Elements.xlsx", sheet = 1)
elements <- readWorksheetFromFile("Elements.xlsx", sheet = "Elements")
file.remove(c("mbb.xlsx", "elements.csv"))

# Working with other data types
library("foreign")
read.spss(file = "location/of/myfile")
# Getting Your Data out of R
writeClipboard(names(iris))
?write.table
write.table(head(iris), file = "iris.csv", sep = ",",
            row.names = FALSE)
write.table(head(iris), file = "clipboard", sep = "\t", row.names = FALSE)

# Working with Files and Folders
getwd()
setwd("C:/Users/Dell/Documents")
file.path("c:", "users", "dell", "documents","mbb.csv")
setwd(file.path("C:", "Users", "Dell", "Documents", "mbb.csv"))
?file.path
my_directory <- file.path("C:", "Users", "Dell", "Desktop") 
my_directory

# Manipulating files
list.files(file.path("C:", "Users", "Dell", "Documents"))
my.file <- tempfile()
my.file
list.files()
list.dirs()
file.exists("iris.csv")
file.create("faraz.gill")
tempfile("faraz.gill")
file.remove("faraz.gill")
tempdir()
write.csv(iris, file = my.file, row.names = FALSE)
list.files(tempdir())
file.iris <- read.csv(my.file)
file.iris
str(file.iris)
file.remove(my.file)
list.files(tempdir())
?read.csv













