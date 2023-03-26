# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'C'),
                 conf=c('East', 'East', 'South', 'West', 'West', 'East'),
                 points=c(11, 14, 15, 15, 14, 19))

# view data frame
df

# Example 1: Check if Exact String Exists in Column
# check if exact string "Eas" exists in conf column
install.packages("stringer")
library("stringer")

sum(str_detect(df$conf, '^Eas$')) > 0

# Example 2: Check if Partial String Exists in Column
# check if partial string "Eas" exists in conf column
sum(str_detect(df$conf, "Eas")) > 0

# Example 3: Count Occurrences of Partial String in Column
# count occurrences of partial string "Eas" in conf column
sum(str_detect(df$conf, "Eas"))
