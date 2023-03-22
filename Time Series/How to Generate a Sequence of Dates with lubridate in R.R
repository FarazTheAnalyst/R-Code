# load lubridate package
library("lubridate")

# generate sequence of datees from 1/1/2022 to 2/15/2022 by day
seq(ymd("2022-01-01"), ymd("2022-02-15"), by="1 day")

# Example 2: Generate Sequence of Dates by Weeks
# generate sequence of dates from 1/1/2022 to 2/15/2022 by week
seq(ymd("2022-01-01"), ymd("2022-02-15"), by = "1 week")


# generate sequence of dates from 1/1/2022 to 2/15/2022 by 2 weeks
seq(ymd("2022-01-01"), ymd("2022-02-15"), by = "2 week")

# Example 3: Generate Sequence of Dates by Months
# generate sequence of dates from 1/1/2022 to 10/31/2022 by month
seq(ymd("2022-01-01"), ymd("2022-02-15"), by = "1 month")
