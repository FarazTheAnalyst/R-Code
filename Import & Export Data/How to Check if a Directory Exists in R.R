# define main directory
main_dir <- "C:/Users/DELL/"

# define various sub directories
sub_dir1 <- "Documents"
sub_dir2 <- "Data_Science_Documents"

# check if main directory exists
dir.exists(file.path(main_dir))

# check if main directory and sub directory 1 exists
dir.exists(file.path(main_dir, sub_dir1))

# check if main directory and sub directory 2 exsists
dir.exists(file.path(main_dir, sub_dir2))

# define main directory
main_dir <- "C:/Users/DELL/"

# define sub directory
sub_dir <- "Data_Science_Documents"

# define directory
my_directory <- file.path(main_dir, sub_dir)

# create directory if it doesn't exist
if(!dir.exists(my_directory)) {dir.create(my_directory)}








