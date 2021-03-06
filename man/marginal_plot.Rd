% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MarginalPlot.R
\name{marginal_plot}
\alias{marginal_plot}
\title{Plot a marginal posterior density}
\usage{
marginal_plot(
  data,
  position = 1,
  level = 0.95,
  grid_length = 1024,
  title = if (is.numeric(position)) names(data)[position] else position,
  subtitle = "Marginal posterior density",
  caption = paste(level * 100, "\% credible interval", sep = ""),
  x_label = "Calendar year",
  y_label = "Density",
  y_grid = TRUE,
  x_scale = "calendar",
  elapsed_origin_position = NULL,
  x_min = NULL,
  x_max = NULL,
  height = 7,
  width = 7,
  units = "in",
  file = NULL,
  plot_result = TRUE,
  mean_linetype = "dashed",
  mean_color = "white",
  mean_size = 0.5,
  ci_linetype = "dotted",
  ci_color = mean_color,
  ci_size = mean_size,
  line_linetype = "solid",
  line_color = "black",
  line_size = 1,
  density_color = "gray30",
  fill_palette = NULL
)
}
\arguments{
\item{data}{Data frame containing the output of the MCMC algorithm.}

\item{position}{Index of the column corresponding to the MCMC chain of
interest, or a column name.}

\item{level}{Probability corresponding to the level of confidence.}

\item{grid_length}{Length of the grid used to estimate the density.}

\item{title}{Title of the graph.  The default uses the \code{data}
column name.}

\item{subtitle}{Subtitle of the graph.  The default is
"Marginal posterior density".}

\item{caption}{Caption of the graph.  The default describes the
confidence of the credible interval.}

\item{x_label}{Label of the x-axis.}

\item{y_label}{Label of the y-axis.}

\item{y_grid}{Switch for horizontal grid lines.}

\item{x_scale}{One of "calendar" for calendar years,
"BP" for years before present,
or "elapsed" for time elapsed from a specified origin.}

\item{elapsed_origin_position}{Position of the column to use as the
origin for elapsed time calculations.}

\item{x_min}{Minimum x axis value.}

\item{x_max}{Maximum x axis value.}

\item{height}{Plot height in \code{units}.}

\item{width}{Plot width in \code{units}.}

\item{units}{String recognized by the \code{ggsave()} function,
one of "in", "cm", "mm".  This parameter has no effect on the
display plot.}

\item{file}{Name of the file that will be saved if chosen,
default = \code{NULL}.}

\item{plot_result}{If \code{TRUE}, then draw a plot on the display,
else suppress drawing.}

\item{mean_linetype}{The \code{linetype} used to indicate the mean density.}

\item{mean_color}{The color of the line used to indicate mean density.}

\item{mean_size}{The width of the line used to indicate the mean density.}

\item{ci_linetype}{The \code{linetype} used to indicate the credible
intervals.}

\item{ci_color}{The color of the lines used to indicate the credible
intervals.}

\item{ci_size}{The width of the lines used to indicate the credible
intervals.}

\item{line_linetype}{The \code{linetype} used to indicate the density.}

\item{line_color}{The color of the line used to indicate the density.}

\item{line_size}{The width of the line used to indicate the density.}

\item{density_color}{Color to use if fill_palette is not specified.}

\item{fill_palette}{Palette to use for fills.}
}
\value{
An \code{archaeophases_plot} object with the data and metadata
needed to reproduce the plot.
}
\description{
Draws a plot of the marginal posterior density for a single parameter, with
an option to add the mean and the credible interval at the desired level
}
\details{
The plot is drawn with the current theme and color scales; the function
does not alter or override theme elements.
}
\examples{
  data(Events)
  mp <- marginal_plot(data = Events, position = 2, level = 0.95)
  ## View data and metadata
  str(mp)

}
\author{
Anne Philippe, \email{Anne.Philippe@univ-nantes.fr};

Marie-Anne Vibet, \email{Marie-Anne.Vibet@univ-nantes.fr}; and

Thomas S. Dye, \email{tsd@tsdye.online}
}
