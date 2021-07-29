#' List containing definitions of terms used in hypothesis testing.
#'
#' @return A character vector 
#' @export
#'
#' @examples
#' standard usage:
#'glossary$hypothesis_testing$p_value
#'"The p-value is the probability that a value equal to or more extreme than the observed sample statistic would be observed if the null hypothesis were true. The smaller the calculated p-value, the more unlikely it is that the null hypothesis is true."

h_testing_terms <- c()
h_testing_terms$p_value <- "The p-value is the probability that a value equal to or more extreme than the observed sample statistic would be observed if the null hypothesis were true. The smaller the calculated p-value, the more unlikely it is that the null hypothesis is true."
h_testing_terms$alpha <- "The critical value α is a pre-determined threshold for the p-value determining whether the null hypothesis can be rejected or not. By rejecting the null hypothesis, it is implied that it is unlikely that the difference between the observed statistic and the null value is due to chance, and instead represents a statistically significant difference."



glossary <- list()
glossary$hypothesis_testing <- h_testing_terms