# matrix()
?matrix

myData <- 1:20
myData

A <- matrix(myData, 4, 5)
A
A[2,3]

B <- matrix(myData, 4, 5, byrow=T)
B
B[2,5]

# rbind
r1 <- c("I", "am", "happy")
r2 <- c("What", "a", "boy")
r3 <- c(1,2,3)

C <- rbind(r1,r2, r3)
C
C["r1",3]
C[1,3]

# cbind
c1 <- 1:5
c2 <- -1:-5
D <- cbind(c1,c2)
D
D[1,"c2"]
D[1,2]
