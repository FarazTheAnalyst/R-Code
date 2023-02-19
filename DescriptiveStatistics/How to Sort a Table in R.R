# create vector
data <- c(3, 8, 8, 8, 7, 7, 5, 5, 5, 5, 9, 12, 15, 15)

# create table
my_table <- table(data)

# view table
my_table

# sort table using base R

# sort table in ascending order
my_table_sorted <- my_table[order(my_table)]

# view sorted table
my_table_sorted

# sort table in descending order
my_table_sorted <- my_table[order(my_table, decreasing = TRUE)]

# view table table
my_table_sorted

# sort table using dplyr
library("dplyr")

# sort table in ascending order
my_table_sorted <- my_table %>%
  as.data.frame() %>% arrange(Freq)

# veiw sorted table
my_table_sorted

# sort table in descending order
my_table_sorted <- my_table %>% as.data.frame() %>% arrange(desc(Freq))


















