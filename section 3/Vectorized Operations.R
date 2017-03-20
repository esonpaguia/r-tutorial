x <- rnorm(5)
x

# r-specific loop
for (i in x) {
  print(i)
}

print(x[1:5])
print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

# conventional loop
for (j in 1:5) {
  print(x[j])
}

# 2nd part

N <- 1000000
a <- rnorm(N)
b <- rnorm(N)

# vectorized approach
c <- a * b # faster: assumes all elements are same types

# de-vectorized approach
d <- rep(NA, N) # NA is null
for (counter in 1:N) { # slower: extra conversions
  d[counter] <- a[counter] * b[counter]
}
