#display all files in my_data.zip
unzip("my_data.zip", list = TRUE)

library(readr)

#read df1.csv into data frame
df <- read_csv(unzip("my_data.zip", "df1.csv"))

#view data frame
df
