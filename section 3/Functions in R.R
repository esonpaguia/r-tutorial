# use ? to get manpage

# normal distribution
?rnorm()
rnorm(5, 10, 8)
rnorm(n=5, mean=10, sd=8)
rnorm(mean=10, sd=8, n=5)
rnorm(sd=8, n=5)

# combine values
?c()

# sequence generation
?seq()
seq(10, 20, 3)
seq(from=10, to=20, by=3)
seq(from=10, to=20, length.out=100)

x <- c("a", "b", "c")
seq(from=10, to=20, along.with=x)

# replicate elements
?rep()
rep(5,10)
rep(5:6, 10)
rep(5:6, times=10)
rep(5:6, each=10)

?print()

?is.numeric()
?is.integer()
?is.double()
?is.character()

?typeof()

# Math functions
?sqrt()

x <- c("a", "b", "c")
A <- seq(from=10, to=20, along.with=x)
B <- sqrt(A)
B

# concatenate strings
?paste()
