# Exercise 2: writing and executing functions (II)

long.vector <- 1:100
short.vector <- 1:10

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a, b) {
  difference <- abs(length(a) - length(b))
  return (paste("The difference in lengths is", difference))
}

# Pass two vectors of different length to your `CompareLength` function
compare.length.result <- CompareLength(short.vector, long.vector)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a, b) {
  if(length(a) > length(b)) {
    vector.label <- "first"
    difference <- length(a) - length(b)
  } else {
    vector.label <- "second"
    difference <- length(b) - length(a)
  }
  return (paste("Your", vector.label, "vector is longer by", difference, "elements"))
}

# Pass two vectors to your `DescribeDifference` function
describe.difference.first.result <- DescribeDifference(long.vector, short.vector)
describe.difference.second.result <- DescribeDifference(short.vector, long.vector)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference <- function(a, b) {
  if(length(a) > length(b)) {
    vector.label <- deparse(substitute(a))
    difference <- length(a) - length(b)
  } else {
    vector.label <- deparse(substitute(b))
    difference <- length(b) - length(a)
  }
  return (paste("Your", vector.label, "vector is longer by", difference, "elements"))
}

describe.difference.named.first.result <- DescribeDifference(long.vector, short.vector)
describe.difference.named.second.result <- DescribeDifference(short.vector, long.vector)
