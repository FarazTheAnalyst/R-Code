# create data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, 8, 3, 3),
                 var3=c(3, 3, 6, 6, 8),
                 var4=c(1, 1, 3, 8, 9))

# view data frame
df

# Use write.table to export the data frame to a file data.txt
# export data frame to Documents
write.table(df, file = "C:\\Users\\DELL\\Documents\\data.txt")

# Using the sep=","
write.table(df, file = "C:\\Users\\DELL\\Documents\\data.txt", sep = ",")
