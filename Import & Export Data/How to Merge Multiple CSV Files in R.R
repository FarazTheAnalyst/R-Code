#Create and export data frames
#Create three data frames
df1 <- data.frame(points = c(4, 5, 5, 6, 8, 9),
                  assists = c(3, 2, 4, 4, 6, 3))
df2 <- data.frame(points = c(2, 10, 14, 15),
                  assists = c(3, 2, 9, 3))
df3 <- data.frame(points = c(6, 8, 9),
                  assists = c(10, 6, 4))

#Export all three data frames to CSV files
getwd()
write.csv(df1, "C:/Users/DELL/Documents/my_data_files/df1.csv", row.names = FALSE)
write.csv(df2, "C:/Users/DELL/Documents/my_data_files/df2.csv", row.names = FALSE)
write.csv(df3, "C:/Users/DELL/Documents/my_data_files/df3.csv", row.names = FALSE)

#Import & Merge Multiple CSV Files
library(dplyr)
library(readr)

#import and merge all three CSV files into one data frame
df <- list.files(path='C:/Users/DELL/Documents/my_data_files') %>% 
  lapply(read_csv) %>% 
  bind_rows

#View resulting data frame
df





