# How to create vectors
x <- c(1,123,534,13,4)  # combine
y <- seq(201,250,11)    # sequence - similar to ':'
z <- rep("Hi!", 3)      # replicate

# combine
V1 <- c(3, 45,56,732)
V1
is.numeric(V1)
is.integer(V1)
is.double(V1)

V2 <- c(3L, 45L, 56L, 732L)
V2
is.numeric(V2)
is.integer(V2)
is.double(V2)

V3 <- c("a", "B23", "Hello", 7)
V3
is.character(V3)
is.numeric(V3)

# sequence
seq(1,15)
1:15

seq(1,15,2)
z <- seq(1,15,4)
z

# replicate
rep(3, 50)
d <- rep(3, 50)

rep("a", 5)

x <- c(80,20)
y <- rep(x,10)
y