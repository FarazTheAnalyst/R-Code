# creating data frame
data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))

# creating Files and folders
dir.create("destinatin_file")
file.create("new_text_file.txt")
file.create("new_docs_file.docx")
file.create("new_csv_file.csv")

# copying the file
file.copy("new_text_file.txt", "destinatin_file")

# delete files
unlink("destinatin_file")

# Creating a matrics
matrix(c(3:8), nrow = 2)
matrix(c(3:8), ncol = 2)











