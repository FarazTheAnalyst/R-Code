# display the names of every file in current working directory
list.files()

# check if file "my_data.csv" exists in current working directory
file.exists("my_data.csv")

# using if else statement

# define file name
data <- "df1.csv"

# import file only if it exists
if(file.exists(data)){
  df <- read.csv(data)
} else {
  print("Does not exist")
}

# veiw contents of CSV file
df

# suppose we try to import file that does not exist
data <- "this_data.csv"

# import file only if it exists
if(file.exists(data)){
  df <- read.csv(data)
} else {
  print("Does not exist")
}























