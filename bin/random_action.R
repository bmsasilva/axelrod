
# Determine action based on probability
# If prob = 0 => always cooperate (TRUE)
# If prob = 1 => always betray (FALSE)
# If prob = 0.5 => total randomness
# If prob <0.5 => more probability to cooperate
# If prob >0.5 => more probability to betray
random_action <- function(prob){
  # set the probabilities 
  p <- c((1-prob), prob)
  # retrieve the action
  r <- sample(c("TRUE","FALSE"), 1, prob = p)
  return(r)
}

random_action(0)
