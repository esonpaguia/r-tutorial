w <- c("a", "b", "c", "d", "e")
w

# access per element
w[1]
w[2]
w[3]

# access all with exclusion
w[-1]
v <- w[-3] # assign to a variable
v

# access several elements via colon operator
w[1:3]
w[3:5]

# access several elements via combine operator
w[c(1,3,5)]
w[c(-2,-4)] # access all excluding some elements

-3:-5 # colon operator with negative numbers
w[-3:-5]
w[1:2]