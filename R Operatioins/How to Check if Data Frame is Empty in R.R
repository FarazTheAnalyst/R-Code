# create empty data frame
df <- data.frame(player = character(),
                 points = numeric(),
                 assists = numeric())

# view data frame
df

# display number of  rows in data frame
nrow(df)

# create if else statement that checks if data frame is empty
if(nrow(df) == 0) {
  print("This data frame is empty")
} else{
  print("This data frame is not empty")
}