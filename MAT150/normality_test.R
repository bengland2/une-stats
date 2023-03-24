# function to compute median normal z-scores for a normality test
# the probability for each score is 
normal_zscores <- function(sample_size) {
  qnorm( (seq(1, sample_size)*2 - 1) / (2*sample_size))
}
