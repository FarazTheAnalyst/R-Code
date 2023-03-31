# Delete a single data frame
# list all objects in current R workspace
ls()

# remove df1
rm(df1)

# list all objects in workspace
ls()

# delete multiple data frames
# list all objects in currect R workspace
ls()

# remove df, df2
rm("df", "df2")

# list all objects in workspace
ls()

# Delete All Data Frames
# list all objects in current R workspace
ls()

# remove all objects of type "data.frame"
rm(list = ls(all=TRUE)[sapply(mget(ls(all=TRUE)), class) == "data.frame"])

# list all objects in workspace
ls()

# list all objects in currect R workspace
ls()

# remove all objects that contain "df"
rm(list=ls()[grepl("data", ls())])

# list all objects in workspace
ls()
