# Load data
data()
data(mtcars)
# Reading a .csv with readr
readr_example()
readr_example("mtcars.csv")
read_csv(readr_example("mtcars.csv"))

# The readxl package
library("readxl")
read_excel(readxl_example("type-me.xlsx"))

# To list the names of indivuduals sheets
readxl_example("type-me.xlsx")
excel_sheets(readxl_example("type-me.xlsx"))
read_excel(readxl_example("type-me.xlsx"), sheet = "numeric_coercion")


             