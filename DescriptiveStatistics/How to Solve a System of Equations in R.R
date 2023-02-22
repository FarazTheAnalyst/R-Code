# define left-hand side of euations
left_matrix <- matrix(c(5, 2, 4, 6), nrow=2)
left_matrix

# define right-hand side of equations
right_matrix <- matrix(c(35, 36), nrow=2)
right_matrix

# solve for x and y
solve(left_matrix, right_matrix)

# define left-hand of queaitions
left_matrix <- matrix(c(1, 3, 2, 2, -2, 1, 2, 1, -1), nrow= 3)
left_matrix

# define right-hand side of equations
right_matrix <- matrix(c(5, -6, -1), nrow = 3)
right_matrix

# solve for x, y and z
solve(left_matrix, right_matrix)

# solve system of equations with four variables
# define left_hand side of equations
left_matrix <- matrix(c(6, 2, 3, 2, 2, 1, 2, 0, 2, 1, 2, 5, 1, 0, 4, 5), nrow = 4)
left_matrix

# define right-hand side of equations
right_matrix <- matrix(c(37, 14, 28, 28), nrow = 4)
right_matrix

# solve for w, x, y and z
solve(left_matrix, right_matrix)


















