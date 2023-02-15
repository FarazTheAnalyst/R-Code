# check if ggplot2 is installed
system.file(package = "ggplot2")

# check if this_package is installed
system.file(package = "this_package")

# define packages to install
packages <- c("ggplot2", "dplyr", "lattice")

# install all packages that are not already installed
install.packages(setdiff(packages, rownames(install.packages())))
