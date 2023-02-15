# export multiple data frames to multiple excel sheets
# define data frames
df1 <- data.frame(playerID=c(1, 2, 3, 4),
                  team=c("A", "B","B", "C"))
df2 <-  data.frame(playerID=c(1, 2, 3, 4),
                 rebounds=c(7, 8, 8, 14))
df3 <- data.frame(playerID=c(1, 2, 3, 4),
                  points=c(19, 22, 35, 29))

# exporting all these three of these data frames to separate sheets in the same 
#Excel file
install.packages("openxlsx")
libarary("openxlsx")
# define sheet names for each data frame
dataset_names <- list("Sheet1" = df1, "Sheet2" = df2, "Sheet3" = df3)

# export each data frame to separate sheets is name Excel file
openxlsx::write.xlsx(dataset_names, file = "mydata.xlsx")


