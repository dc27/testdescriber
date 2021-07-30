# testdescriber

Translate statistical test results into 'plain' English.

# Installation

```
devtools::install.github("dc27/testdescriber")
library(testdescriber)
```

# Preface

It's difficult, sometimes, to put the results of a statistical test into words
that all audiences can describe. Many times, I've gotten to the end of my
experiment and forgotten exactly what the p-value I've calculated actually
describes. This package hopes to alleviate the demands from having to describe
a hypothesis test after forgetting statistical jargon.

# Functions

## `describe_h_test_results()`

The main function (so far) of the package. It takes in your p-value, your
alpha value (significance level), and a list containing your null hypothesis
and alternative hypothesis:

```
h <- list()
h$null <- "your null hypothesis"
h$alternative <- "your alternative hypothesis"
```

Optional arguments include

  - number of significant figures to round p value in the output string.
  - observed statistic (e.g. stat = "mean")  


```
describe_h_test_results(
  p = 0.0345,
  alpha = 0.05,
  h = list(
    null = "Cats and dogs are the same",
    alternative = "Cats and dogs are not the same"
    ),
  stat = "mean",
  sf = 3
  )
```

Output

```
[1] "Given a level of significance 0.05, a p-value of 0.034 allows the rejection
of the null hypothesis: Cats and dogs are the same and accept the alternative
hypothesis: Cats and dogs are not the same. It is unlikely that the difference
between the observed mean and the null hypothesis is due to chance, and instead
represents a statistically significant difference."
```
