# Named vectors
group1 <- 1:5
group1

# Set names
names(group1)
names(group1) <- c("a", "b", "c", "d", "e")
group1
group1["d"]
names(group1)

# Remove names
names(group1) <- NULL
group1
names(group1)

# Naming matrix dimensions 1

# Create vector
temp.vec <- rep(c("a", "B", "zZ"),3)
temp.vec

temp.vec <- rep(c("a", "B", "zZ"),times=3)
temp.vec

temp.vec <- rep(c("a", "B", "zZ"),each=3)
temp.vec

# Create matrix
group2 <- matrix(temp.vec, 3, 3)
group2

# Set row names
rownames(group2)
rownames(group2) <- c("How", "are", "you?")
group2

# Set column names
colnames(group2)
colnames(group2) <- c("X", "Y", "Z")
group2

# Update value
group2["are", "Y"] <- 9999
group2

# Get cell
group2["are", "Y"]
group2[2,2]
group2[2, "Y"]
group2["are", 2]