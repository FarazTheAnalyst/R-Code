#Import CSV into R with Column Names that Contain Spaces
basketball.csv <- data.frame(team = c("A", "B", "C", "D", "E"),
                             points.scored = c(22, 15, 33, 20, 11),
                             assists.collected = c(10, 6, 9, 14, 4),
                             rebounds = c(5, 5, 12, 3, 3))
write.csv(basketball.csv, "C:/Users/DELL/Documents/basketball.csv", row.names = FALSE)

#we have csv file with column names spaces between them
#import CSV file and R will automatically replace dot between spaces
df <- read.csv("basketball.csv")

#view data frame
df

#import CSV file and keep spaces in column names
df <- read.csv("basketball.csv", check.names = FALSE)

#view data frame
df

#if we do a calculation using column names and withspaces we must surrond them 
#in single back-quotes(``) or you will receive an error
#produces error
#attempt to calculate sum of points scored column
sum(df$points scored)

#calculate sum of points scored column using back-quotes
sum(df$`points scored`)









