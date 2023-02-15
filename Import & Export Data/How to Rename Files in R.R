# rename one file
# display all files in current working directory
list.files()

# rename one file
file.rename(from = "my_data.csv", to = "my_data1.csv")

# display all files in current working directory
list.files()

# Replace Pattern in Multiple files
# display all fiels in current working directory
list.files()
library("stringr")
file.rename(list.files(pattern = "df"),
            str_replace(list.files(pattern = "df"), pattern = "df", "dff"))
# display all files in currrent working directory
list.files()
str_replace(list.files(pattern = dff))








