#read every line from some_data.txt that is saved in my computer
readLines("C:/Users/DELL/Documents/some_data.txt")

my_data <- read_lines("C:/Users/DELL/Documents/some_data.txt")

#create data frame
df <- data.frame(values=my_data)

#view data frame
df

#read first 4 lines from some_dat.txt
readLines("C:/Users/DELL/Documents/some_data.txt", n = 4)

#read first 4 lines from some_data.txt
my_data <- readLines("C:/Users/DELL/Documents/some_data.txt", n=4)

#display second line only
my_data[2]











