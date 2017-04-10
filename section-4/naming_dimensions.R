myData <- 1:20
myData

A <- matrix(myData, 4, 5)
A
A[2,3]

# Set colnames
colnames(A) <- c("A", "B", "C", "D", "E")
A
A[2,"C"]

# Set rownames
rownames(A) <- c("F", "G", "H", "I")
A
A["G","C"]
A["G",3]
