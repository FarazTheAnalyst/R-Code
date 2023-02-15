# Import data frame and skip first two rows
df <- read.csv('https://raw.githubusercontent.com/Statology/Miscellaneous/main/basketball_data.csv', skip = 2)
df

# By default R use the values of the next row
#Rename the colnames
names(df) <- c("team", "points", "assists")

# View updated data frame
df

# Example 2: where data meet specific conditions
#using sql function
#Only Import rows where pints > 90
library("sqldf")
df <- read.csv.sql("my_data.csv", 
                   sql = "select * from df where 'points' > 90", eol = "\n")

#View data frame
df









