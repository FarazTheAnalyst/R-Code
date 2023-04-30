# The facet_wrap() function can be used to produce multi-panel
# plots in ggplot2.

# view first six rows of mpg dataset
head(mpg)

# Example 1: Basic facet_wrap() Function
ggplot(mpg, aes(x=displ, hwy)) + 
  geom_point() + 
  facet_wrap(vars(class))

# Example 2: Use Custom Labels
# define custom labels
plot_names <- c("2seater" = "2 Seater",
                "compact" = "Compact Vehicle",
                "midsize" = "Midsize Vehicle",
                "minivan" = "Minivan",
                "subcompact" = "Subcompact Vechicle",
                "suv" = "Sport Utility Vechile")

# use facet_wrap with custom plot labels
ggplot(mpg, aes(x=displ, y=hwy)) + 
  geom_point() + 
  facet_wrap(vars(class), labeller = as_labeller(plot_names))

# Example 3: Use Custom Scales
# use facet_wrap with custom scales
ggplot(mpg, aes(displ, hwy)) +
  geom_point() + 
  facet_wrap(vars(class), scales="free")


# define order for plots
mpg <- within(mpg, class <- factor(class, levels=c("compact", "2seater", "suv", 
                                                   "subcompact", "pickup",
                                                   "minivan", "midsize")))
# use facet_wrap with custom order
ggplot(mpg, aes(displ, hwy)) + 
  geom_point() + 
  facet_wrap(vars(class))
  

















