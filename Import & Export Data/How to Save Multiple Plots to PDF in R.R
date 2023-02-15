# specify path to save PDF to
destination = "C:\\Users\\DELL\\Documents\\my_plots.pdf"

# open pdf
pdf(file = destination)

# specify to save plots in 2x2 grid
par(mfrow=c(2, 2))

# save plots to pdf
for (i in 1:4) {
  x=rnorm(i)
  y=rnorm(i)
  plot(x, y)
}

# turn off ODF plotting
dev.off()

# save multiple plots to differe pages in PDF
# specify path to save PDF to
destination = "C:\\Users\\DELL\\Documents\\my_plots.pdf"

# open PDF
pdf(file = destination)

# save plot to PDF
for (i in 1:4) {
  x=rnorm(i)
  y=rnorm(i)
  plot(x, y)
  
}

# turn off PDF plotting
dev.off()




















