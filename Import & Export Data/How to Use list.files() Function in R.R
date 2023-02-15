#display all files in my_data_files folder
list.files("C:/Users/DELL/Documents/my_data_files")

#display total number of files in my_data_files folder
length(list.files("C:/Users/DELL/Documents/my_data_files"))

#display first three files in  my_data_files folder
list.files("C:/Users/DELL/Documents/my_data_files")[1:3]

#display all files with CSV extension in my_data_files folder
list.files("C:/Users/DELL/Documents/my_data_files", pattern = "csv")

#display all files that contain "data" in file name
list.files("C:/Users/DELL/Documents/my_data_files", pattern = "data")
