# Renaming the First n Columns Using Base R
# view column names of mtcars
names(mtcars)

# rename first 4 columns
names(mtcars) <- c("miles_gallon", "cylinders", "display", "horsepower")
names(mtcars)

# Renaming Columns by Name Using Base R

# rename just the "wt" column in mtcars
data(mtcars)
names(mtcars)[names(mtcars) == "wt"] <- "weight"
names(mtcars)

# Renaming Columns by Index Using Base R
# rename the second column name in mtcars
names(mtcars)[2] <- "cylinders"
names(mtcars)

# Renaming Columns Using dplyr
# install (if not already installed ) and load dplyr package
if(!require(dplyr)){install.packages("dplyr")}

# renamet the "mpg" and "cyl" columns
data(mtcars)
new_mtcars <- mtcars %>% 
  rename(
    miles_g = mpg,
    cylinder = cyl
  )

# view new column names
names(new_mtcars)

# Renaming Columns Using data.table
# install (if not already installed) and load data.table package
if(!require(data.table)){install.packages("data.table")}

# rename "mpg" and "cyl" column names in mtcars
setnames(mtcars, old = c("mpg", "cyl"), new = c("miles_g", "cylinder"))

# view new column names
names(mtcars)





















