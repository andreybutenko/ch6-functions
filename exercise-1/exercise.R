# Exercise 1: writing and executing functions

# Write a function `AddThree` that adds 3 to an input value
AddThree <- function(number) {
  if(typeof(number) == 'double' || typeof(number) == 'integer') {
    return (number + 3)
  }
  else {
    return (-1)
  }
}

# Create a variable `ten` by passing 7 to your `AddThree` function
ten <- AddThree(7)

# Write a function `FeetToMeters` that converts from feet to meters
FeetToMeters <- function(feet) {
  if(typeof(feet) == 'double' || typeof(feet) == 'integer') {
    return (feet * 0.3)
  }
  else {
    return (-1)
  }
}

# Create a variable `height.in.feet` that is your height in feet
height.in.feet <- 6 + (2 / 12)

# Create a variable `height.in.meters` by passing `height.in.feet` to your `FeetToMeters` function
height.in.meters <- FeetToMeters(height.in.feet)
