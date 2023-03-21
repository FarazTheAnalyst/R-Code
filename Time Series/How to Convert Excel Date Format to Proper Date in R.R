#Example 1: Convert Excel Number to Proper Date in R
library("readxl")

#import Excel file into R as data frame
df <- read_excel("C:\\Users\\bob\\Documents\\sales_data.xlsx")

#view data frame
df

#convert Excel number format to proper R date
df$date <- as.Date(df$date, origin = "1999-12-30")

#view updated data frame
df

#Example 2: Convert Excel Number to Proper Datetime in R
library(readxl)
library(openxlsx)

#import Excel file into R as data frame
df <- read_excel("C:\\Users\\bob\\Documents\\sales_data.xlsx")

#view data frame
df

#convert excel datatime to proper datatime in R
df$datetime <- convertToDateTime(df$datetime)

#view updated data frame
df

