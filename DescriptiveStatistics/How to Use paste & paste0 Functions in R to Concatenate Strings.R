# use paste0()
# concatenate several elements into one string
paste0("I", "ride", "my", "bike", "25", "times")

# use paste()
# concatenate several elements into one string
paste("I", "ride", "my", "bike", "25", "times")

# use paste() with sep
# concatenate elements using _ as separator
paste("I", "ride", "my", "bike", "25", "times", sep = "_")

# use paste() with sep and collapse
# concatenate elements using sep and collapse arguments
paste(c("A", "B", "C"), c(1, 2, 3), sep = "_", collapse = " and ")
