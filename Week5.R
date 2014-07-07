# 1. Create matrices
A <- matrix(c(1,-1,-1,-1),ncol=2)
B <- matrix(c(2,3,-1,-2),ncol=2)
C <- matrix(c(1,0,0,0)ncol=2)
D <- matrix(c(0,1,0,1,0,0,0,0,1)ncol=3)
E <- matrix(c(1,0,0,0,0,1,0,1,0)ncol=3)

# 2. Test for Indempotency, if TRUE then Indempotent

A %*% A == A

B %*% B

C %*% C

D %*% D

E %*% E

# 3. Test for Othogonality, if TRUE then Orthogonal
solve(A) == t(A)

solve(B) == t(B)

solve(C) == t(C)

solve(D) == t(D)

solve(E) == t(E)

# 4.
listvector -> list(c(48,39,21,90),myDataframe,matrix(c(1,0,0,0)ncol=2),array(1,3,6,2,4,3,1,3,6,2,4,3, dim = c(2,3,2)),list('dog','cat','bird')))



