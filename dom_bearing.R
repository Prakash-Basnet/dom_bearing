# Define a function to calculate the bearing between two points
dom_bearing <- function(trajectory_center, Turning_position) {
  
  # Unpack the input vectors into separate x and y variables
  x1 <- trajectory_center[1]
  y1 <- trajectory_center[2]
  x2 <- Turning_position[1]
  y2 <- Turning_position[2]
  
  # Calculate the angle between the points
  theta <- atan2(y2 - y1, x2 - x1)
  
  # Ensure theta is in the range [0, 2*pi)
  if (theta < 0) {
    theta <- theta + 2 * pi
  }
  
  # Convert theta to degrees and calculate the bearing
  bearing <- 90 - theta * 180 / pi
  
  # Ensure bearing is in the range [0, 360)
  if (bearing < 0) {
    bearing <- bearing + 360
  }
  
  # Return the result
  return(bearing)
}
