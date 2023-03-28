# create list
team_info <- list(team = "Mavericks",
                  positions = c("G", "F", "C"),
                  all_stars = 3)

# view list
team_info

# Example 1: Loop Through List & Display All Sub-Elements on Same Line
# print each sub-element on same line
for (i in team_info) {
  print(i)
}

# Example 2: Loop Through List & Display All Sub-Elements on Different Lines
# print each sub-element on different lines
for (i in team_info) {
  for (j in i) {
    {print(j)}
  }
}

# Example 3: Loop Through List & Only Display Specific Values
# only display first value in each element of list
for (i in 1:length(team_info)) {
  print(team_info[[i]][1])
}
