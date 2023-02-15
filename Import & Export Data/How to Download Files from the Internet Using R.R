#define destination for file
destfile <- "C:/Users/DELL/Downloads"

#url of file to download
url <- "https://data.cityofnewyork.us/api/views/brsj-szf5/rows.csv?accessType=DOWNLOAD"

#download file and save in specified destination
download.file(url, destfile)
