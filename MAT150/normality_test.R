# function to compute median normal z-scores for a normality test
# the probability for each score is 
normal_zscores <- function(sample_size) {
  normal_zscore_list = vector(mode="numeric", length=sample_size)
  for (i in 1:sample_size) {
    next_probability = (2*i - 1) / (2*sample_size)
    normal_zscore_list[i] = qnorm(next_probability)
  }
  normal_zscore_list
}