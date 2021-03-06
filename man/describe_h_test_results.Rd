% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/describe_h_test_results.R
\name{describe_h_test_results}
\alias{describe_h_test_results}
\title{Describe the results of a hypothesis test in 'plain' English.}
\usage{
describe_h_test_results(p, alpha = 0.05, h, stat = "mean")
}
\arguments{
\item{p}{p value.}

\item{alpha}{Confidence level. Default is 95\%.}

\item{h}{Named list vector containing text for the null and alternate hypothesis.}

\item{stat}{Character vector containing type of observed statistic. Default is "mean"}
}
\value{
A character vector
}
\description{
Describe the results of a hypothesis test in 'plain' English.
}
\examples{
standard usage:
describe_h_test_results(
0.0123, 0.01,
list(null = "Water is the best", alternative = "Water is not the best"),
sf = 5, stat = "proportion"
)

}
