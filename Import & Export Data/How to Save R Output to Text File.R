# Save R output to Text File using sink()
# define file name
sink("my_data.txt")

# Write this string to file
"here is some text"

# close the external connection
sink()

# define file name
sink("my_data.txt")

# define data frame to write to file
df <- data.frame(player=c("A", "B", "C","D","E"),
                 points=c(12, 29, 24, 30, 19),
                 assists=c(5, 5, 7, 4, 10))
print(df)

# close the external connection
sink()

# save R output to text file using cat()
cat("here is some text", file="my_data.txt")











