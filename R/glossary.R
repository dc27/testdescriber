#' List containing definitions of terms used in hypothesis testing.
#'
#' @return A character vector
#' @export
#'
#' @examples
#' standard usage:
#'glossary$hypothesis_testing$p_value
#'"The p-value is the probability that a value equal to or more extreme than the observed sample statistic would be observed if the null hypothesis were true. The smaller the calculated p-value, the more unlikely it is that the null hypothesis is true."

h_testing <- c()
h_testing$p_value <- "The p-value is the probability that a value equal to or more extreme than the observed sample statistic would be observed if the null hypothesis were true. The smaller the calculated p-value, the more unlikely it is that the null hypothesis is true."
h_testing$alpha <- "The critical value α is a pre-determined threshold for the p-value determining whether the null hypothesis can be rejected or not. By rejecting the null hypothesis, it is implied that it is unlikely that the difference between the observed statistic and the null value is due to chance, and instead represents a statistically significant difference."
h_testing$null_distribution <- "The probability distribution of the test statistic when the null hypothesis is true"

distributions <- list()

measures_of_centre_terms <- c()
measures_of_centre_terms$mean <- "The mean is the 'average' value of a distribution. It is calculated arithmetically by dividing the sum of all values in a distribution by the number of values in the distribution"
measures_of_centre_terms$median <- "The median is the value of a distribution where 50% of the data lies below the value and 50% of the data lies above the value"
measures_of_centre_terms$mode <- "The mode is the most common / most frequent value in a distribution"
measures_of_centre_terms$skew <- "The skew of a distribution is a measure of how asymmetric it is. Skew has both a magnitude (not-moderate-heavy) and a direction (left or right) "
measures_of_centre_terms$modality <- "The modality of a distribution is way of expressing how many 'peaks' or modes a distribution contains"

measures_of_spread_terms <- c()
measures_of_centre_terms$range <- "The range of a distribution is the difference between the largest value and the smallest value"

distributions$measures_of_centre <- measures_of_centre_terms
distributions$measures_of_spread <- measures_of_spread_terms

glossary <- list()
glossary$hypothesis_testing <- h_testing
glossary$distributions <- distributions


