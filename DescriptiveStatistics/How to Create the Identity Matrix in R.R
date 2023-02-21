# create identity matrix using diag()
# create 5x5 identity matrix
ident <- diag(5)

# view matrix
ident

# create identity matrix using diag(nrow)
# create 5x5 identity matrix
ident <- diag(nrow = 5)

# view matrix
ident

# create idntity matrix in two steps
# create 5x5 matix with zeros in all positions
indent <- matrix(0, 5, 5)

# make diagonal values 1
diag(ident) <- 1
