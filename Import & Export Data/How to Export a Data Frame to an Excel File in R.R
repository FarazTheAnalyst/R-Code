# create data frame
df <- data.frame(team=c("A", "B", "C", "D", "E"),
                 points=c(78, 85, 93, 90, 91),
                 assists=c(12, 20, 23, 8, 14))

# view data frame
df

# install and load writexl package
install.packages("writexl")
library("writexl")
write_xlsx(df, "C:\\Users\\DELL\\Documents\\data.xlsx")
