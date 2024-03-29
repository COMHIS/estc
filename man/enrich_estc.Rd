% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/enrich.estc.R
\name{enrich_estc}
\alias{enrich_estc}
\title{Enrich ESTC}
\usage{
enrich_estc(data.enriched, df.orig, ecco.version = 2)
}
\arguments{
\item{data.enriched}{Data from generic enrichment}

\item{df.orig}{Original data frame}

\item{ecco.version}{Specify the ECCO version to use (1 or 2)}
}
\value{
Enriched data.frame
}
\description{
Enrich preprocessed ESTC data.
}
\examples{
\dontrun{df2 <- enrich_estc(data.enriched, df.orig, ecco.version = 2)}
}
\references{
See citation("estc")
}
\author{
Leo Lahti \email{leo.lahti@iki.fi}
}
\keyword{utilities}
