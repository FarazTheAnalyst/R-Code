library("readr")
# import TSV file into data frame
df <- read_tsv("C:\\Users\\DELL\\Documents\\data.tsv")

# view data frame
df

# import TSV file into data frame that has no colnames
df <- read_tsv("C:\\Users\\DELL\\Documents\\data.tsv", col_names = FALSE)

# view data frame
df

# rename colnames
names(df) <- c("teams", "points", "rebounds")

# view updated data frame
df


