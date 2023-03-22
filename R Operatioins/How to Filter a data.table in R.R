library("data.table")

# create data table
dt <- data.table(team=c("A", "A", "A", "B", "C"),
                 points =c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# view data table
dt

# Example 1: Filter for Rows Based on One Condition
# filter for rows where team is A
dt[team == "A", ]

# Example 2: Filter for Rows that Contain Value in List
# filter for rows where team is A or C
dt[team %in% c("A", "C"), ]

# Example 3: Filter for Rows where One of Several Conditions is Met
# filter for rows where team is A or points < 90
dt[team == "A" | points < 90, ]

# Example 4: Filter for Rows where Multiple Conditions are Met
# filter for rows where team is A and points < 90
dt[team == "A" & points < 90, ]
