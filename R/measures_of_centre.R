#' Interpret the value given for skewness in 'plain' English.
#'
#' 
#' @param skew value of skewness
#'
#' @return A character vector 
#' @export
#'
#' @examples
#' standard usage:
#' describe_skewness(1)
#' "1 indicates highly right skewed data."
#'

describe_skewness <- function(skew) {
  # determine direction of skew
  if (skew > 0) {
    direction <- "right skewed data"
  } else if (skew < 0) {
    direction <- "left skewed data"
  } else {
    direction <- "data"
  }
  
  # describe magnitude of skew
  if (abs(skew) >= 1) {
    skew_description <- "highly"
  } else if (abs(skew) >= 0.5) {
    skew_description <- "moderately"
  } else {
    skew_description <- "fairly symmetrical"
  }
  
  # create phrase
  prefix <- "A skew of "
  
  phrase <- paste0(
    prefix, skew, " indicates ", skew_description, " ", direction, "."
  )
  
  return(phrase)
}

#' Interpret the value given for kurtosis in 'plain' English.
#'
#' The function takes a value of kurtosis, calculates excess kurtosis and
#' creates an interpretation.
#' 
#' @param kurtosis value of kurtosis
#'
#' @return interpretation of given kurtosis value
#' @export
#'
#' @examples
#' standard usage:
#' describe_kurtosis(4)
#' "A kurtosis of 4 results in an excess kurtosis of 1, which indicates a
#' leptokurtic or 'greater-tailed' distribution"
#'



describe_kurtosis <- function(kurtosis) {
  excess_k <- kurtosis - 3
  
  # determine classificaction of excess kurtosis
  if (excess_k > 0) {
    class <- "leptokurtic or 'greater-tailed'"
  } else if (excess_k < 0) {
    class <- "platykurtic or 'lesser-tailed'"
  } else {
    class <- "mesokurtic"
  }
  
  # create phrase
  prefix <- "A kurtosis of "
  
  phrase <- paste0(prefix, kurtosis, " results in an excess kurtosis of ",
                   excess_k , ", which indicates a ", class, " distribution")
  
  return(phrase)
}