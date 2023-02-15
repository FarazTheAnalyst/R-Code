#Using read.csv from base R(Slowest method, but works fine for smallest datasets)
#import data
data1 <- read.csv("C:\\Users\\DELL\\Documents\\202102-divvy-tripdata.csv", header = TRUE, stringsAsFactors = FALSE)
str(data1)

#Using read_csv from readr package(2-3x faster than read.csv)
install.packages("tidyverse")
library(readr)
data2 <- read_csv("C:\\Users\\DELL\\Documents\\202102-divvy-tripdata.csv")
str(data2)

#Using fread from data.table(2-3x faster than read_csv,if your CSV is extremly large)
install.packages("data.table")
library(data.table)
data3 <- fread("C:\\Users\\DELL\\Documents\\202102-divvy-tripdata.csv")
str(data3)
