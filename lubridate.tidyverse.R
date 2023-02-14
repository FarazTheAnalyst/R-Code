install.packages("tidyverse")
library("tidyverse")
library("lubridate")

# converting From strings
today()
now()

# these functions convert the will parse your data in yyyy-mm-dd
ymd("2023-01-22")
mdy("january 22th 2023")
dmy("22-jan-2023")

# these function also take unquoted dates
ymd(20230122)

# creating date time componenet
ymd_hms("2023-01-22 20:11:59")
mdy_hm("01/22/2023 20:11")

# Switching existing date time objects
now()
as_date(now())








