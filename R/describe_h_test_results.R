#' Describe the results of a hypothesis test in 'plain' English.
#'
#'
#'
#' @param p p value.
#' @param alpha Confidence level. Default is 95%.
#' @param h Named list vector containing text for the null and alternate hypothesis.
#' @param stat Character vector containing type of observed statistic. Default is "mean"
#' @param sf Number of significant figures to round p value in the output vector.
#'
#' @return A character vector
#' @export
#'
#' @examples
#' standard usage:
#' describe_h_test_results(
#' 0.0123, 0.01,
#' list(null = "Water is the best", alternative = "Water is not the best"),
#' sf = 5, stat = "proportion"
#' )
#'

describe_h_test_results <- function(
  p, alpha = 0.05, h, stat = "mean", sf = 2
) {
  if (p <= alpha) {
    # reject null hypothesis, accept alternative hypothesis
    allows <- "allows"
    add_alt_phrase <- paste0(
      " and accept the alternative hypothesis: ", h$alternative,
      ". It is unlikely that the difference between the observed ", stat,
      " and the null hypothesis is due to chance, and instead represents a statistically significant difference."
    )
  } else {
    allows <- "does not allow"
    add_alt_phrase <- paste0(
      ". Based on the sample, there is not enough evidence that the ",  stat,
      " is statistically significantly different from the null value.")
  }

  phrase <- paste0(
    "Given a level of significance ", alpha, ", a p-value of ",round(p, sf),
    " ", allows, " the rejection of the null hypothesis: ",
    h$null, add_alt_phrase
  )

  return(phrase)
}
