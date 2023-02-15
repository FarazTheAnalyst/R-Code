# display current working directory
getwd()

# set working directory
setwd("C:/Users/DELL/Desktop")

# to verify it's changed 
# display current working directory
getwd()

# view number of files in  working directory
length(list.files())

# view first five file name in working directory
head(list.files())

# check if file acceptance.docx exists in working directory
"acceptance.docx" %in% list.files()











