# Create list
my_list <- list(A=c(1, 5, 6, 6, 3),
                B=c("hey", "hello"),
                C=1:10)

# view list
my_list

#export list to text file
# define file name
sink("my_list.txt")

# print my_list to file
print(my_list)

# close external connection to file
sink()

# create multiple lists
my_list1 <- list(A=c(1, 5, 6, 6, 3),
                 B=c("hey", "hello",
                 C=1:10))
my_list2 <- list(D=c(2, 2, 4, 6, 7),
                 E=c("one", "five"))
# define file name
sink("my_lists.txt")

# print multiple lists to file
print(my_list1)
print(my_list2)

# close external connection to file
sink()

# export list to CSV file
# define file name
sink("my_list.csv")

# print my_list to file
print(my_list)

# close external connnection to file
sink()




# creatte data frame
df <- data.frame(team=c("A", "B", "C", "D", "E"),
                 points=c(78, 85, 93, 90, 91),
                 assists=c(12, 20, 23, 8, 14))

# view data frame
df

#Use write.csv from base R
write.csv(df, "C:\\Users\\DELL\\Documents\\data.csv", row.names=FALSE)

# Use write_csv from readr package(2x faster than write.csv)
library(readr)
write.csv(df, "C:\\Users\\DELL\\Documents\\data.csv")

# Use fwrite from data.table package(2x faster than write_csv)
library(data.table)
fwrite(df, "C:\\Users\\DELL\\Documents\\data.csv")











