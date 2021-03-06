% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MultiPhaseTimeRange.R
\name{MultiPhaseTimeRange}
\alias{MultiPhaseTimeRange}
\title{Phase time range for multiple groups}
\usage{
MultiPhaseTimeRange(
  data,
  position_minimum,
  position_maximum = position_minimum + 1,
  level = 0.95
)
}
\arguments{
\item{data}{Data frame containing the output of the MCMC algorithm.}

\item{position_minimum}{Numeric vector containing the column number
corresponding to the minimum of the events included in each phase.}

\item{position_maximum}{Numeric vector containing the column number
corresponding to the maximum of the phases set in the same order as
in \code{position_minimum}.}

\item{level}{Probability corresponding to the desired level of confidence.}
}
\value{
A matrix of values containing the level of confidence and the endpoints
of the shortest time range associated with the desired \code{level}. The result
is given in calendar years (BC/AD).
}
\description{
Computes the shortest interval that satisfies
\eqn{P(PhaseMin < IntervalInf < IntervalSup < PhaseMax | M) = level}
for each phase
}
\details{
For each \code{i}, \code{MultiPhaseTimeRange()} computes the time range interval
for the phase defined by its minimum \code{position_minimum[i]} and
its maximum \code{position_maximum[i]}. The default value of
\code{position_maximum} corresponds to CSV files exported from
\href{https://chronomodel.com/}{ChronoModel} software.
}
\examples{
  # Data extracted from ChronoModel software
  data(Phases)
  # List of the name of the groups
  names(Phases)
  # Stipulating position_maximum
  MultiPhaseTimeRange(Phases, position_minimum = c(4, 2), position_maximum = c(5, 3))
  # In this case, equivalent to
  MultiPhaseTimeRange(Phases, position_minimum = c(4, 2))

}
\author{
Anne Philippe, \email{Anne.Philippe@univ-nantes.fr} and

Marie-Anne Vibet, \email{Marie-Anne.Vibet@univ-nantes.fr}
}
