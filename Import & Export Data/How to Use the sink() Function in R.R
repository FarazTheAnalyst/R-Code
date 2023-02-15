# define the file name
sink("my_data.txt")

# write this text to file
"here is my text"

# close the external connectioin
sink()

# define file name
sink("my_data.txt")

# write this text to file
"first text"
"second text"
"third text"

# close external connection
sink()

# export data frame to text file
# define file name
sink("my_data.txt")

# define data frame to write to file
df <- data.frame(player=c("A", "B", "C", "D", "E"),
                 points=c(12, 29, 24, 30, 19),
                 assists=c(5, 5, 7, 4, 10))
print(df)
# close external connection
sink()

# Export data frame to CSV File
sink("my_data.csv")

# define data frame to write to file
df <- data.frame(player=c("A", "B", "C", "D", "E"),
                 points=c(12, 29, 24, 30, 19),
                 assists=c(5, 5, 7, 4, 10))
print(df)

# close external connection
sink()

