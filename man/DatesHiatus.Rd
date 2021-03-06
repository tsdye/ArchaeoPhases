% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DatesHiatus.R
\name{DatesHiatus}
\alias{DatesHiatus}
\title{Test for the existence of a hiatus between two parameters}
\usage{
DatesHiatus(a_chain, b_chain, level = 0.95)
}
\arguments{
\item{a_chain}{: Numeric vector containing the output of the MCMC
algorithm for the first parameter.}

\item{b_chain}{: Numeric vector containing the output of the MCMC
algorithm for the second parameter.}

\item{level}{Probability corresponding to the confidence level of the interval.}
}
\value{
A named vector with the level and the endpoints of the gap in calendar years (AD/BC)
}
\description{
Finds if a gap exists between two dates and returns the longest interval that satisfies: \eqn{P(a_chain < IntervalInf < IntervalSup < b_chain | M) = level}
}
\examples{
  data(Events); attach(Events)
  DatesHiatus(Event.1, Event.12)
  DatesHiatus(Event.1, Event.12, level = 0.5)

}
\author{
Anne Philippe, \email{Anne.Philippe@univ-nantes.fr} and

Marie-Anne Vibet, \email{Marie-Anne.Vibet@univ-nantes.fr}
}
