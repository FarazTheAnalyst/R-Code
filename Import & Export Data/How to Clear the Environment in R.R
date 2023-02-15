# clear Environment using rm()
rm(list = ls())

# clear specific types of objects using lim() and class
# clear all data frames from environment
rm(list=ls(all=TRUE)[sapply(mget(ls(all=TRUE)), class) == "data.frame"])

# clear all lists from environment
rm(list=ls(all=TRUE)[sapply(mget(ls(all=TRUE)), class) == "list"])
