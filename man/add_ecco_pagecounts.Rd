% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_ecco_pagecounts.R
\name{add_ecco_pagecounts}
\alias{add_ecco_pagecounts}
\title{Add ECCO Page Counts}
\usage{
add_ecco_pagecounts(df, df.orig, ecco.version = 2)
}
\arguments{
\item{df}{Preprocessed data.frame}

\item{df.orig}{Original data.frame}

\item{ecco.version}{Specify the ECCO version (1 or 2)}
}
\value{
data.frame with publication years estimated
}
\description{
Augment the ESTC data with ECCO page counts.
}
\examples{
\dontrun{df2 <- add_ecco_pagecounts(df)}
}
\references{
See citation("estc")
}
\author{
Leo Lahti \email{leo.lahti@iki.fi}
}
\keyword{utilities}
