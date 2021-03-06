% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/adherer.R
\name{plot.CMA0}
\alias{plot.CMA0}
\title{Plot CMA0 objects.}
\usage{
\method{plot}{CMA0}(x, ..., patients.to.plot = NULL, duration = NA,
  align.all.patients = FALSE, show.period = c("dates", "days")[2],
  period.in.days = 90, show.legend = TRUE, legend.x = "right",
  legend.y = "bottom", legend.bkg.opacity = 0.5, legend.cex = 0.75,
  legend.cex.title = 1, cex = 1, cex.axis = 0.75, cex.lab = 1,
  col.cats = rainbow, unspecified.category.label = "drug",
  lty.event = "solid", lwd.event = 2, pch.start.event = 15,
  pch.end.event = 16, print.dose = FALSE, cex.dose = 0.75,
  print.dose.outline.col = "white", print.dose.centered = FALSE,
  plot.dose = FALSE, lwd.event.max.dose = 8,
  plot.dose.lwd.across.medication.classes = FALSE,
  col.continuation = "black", lty.continuation = "dotted",
  lwd.continuation = 1, col.na = "lightgray",
  highlight.followup.window = TRUE, followup.window.col = "green",
  highlight.observation.window = TRUE,
  observation.window.col = "yellow", observation.window.density = 35,
  observation.window.angle = -30, observation.window.opacity = 0.3,
  bw.plot = FALSE, print.CMA = TRUE, plot.CMA = TRUE,
  CMA.plot.ratio = 0.1, min.plot.size.in.characters.horiz = 10,
  min.plot.size.in.characters.vert = 0.5, max.patients.to.plot = 100)
}
\arguments{
\item{x}{A \emph{\code{CMA0}} or derived object, representing the CMA to
plot}

\item{...}{other possible parameters}

\item{patients.to.plot}{A vector of \emph{strings} containing the list of
patient IDs to plot (a subset of those in the \code{cma} object), or
\code{NULL} for all}

\item{duration}{A \emph{number}, the total duration (in days) of the whole
period to plot; in \code{NA} it is automatically determined from the event
data such that the whole dataset fits.}

\item{align.all.patients}{\emph{Logical}, should all patients be aligned
(i.e., the actual dates are discarded and all plots are relative to the
earliest date)?}

\item{show.period}{A \emph{string}, if "dates" show the actual dates at the
regular grid intervals, while for "days" (the default) shows the days since
the beginning; if \code{align.all.patients == TRUE}, \code{show.period} is
taken as "days".}

\item{period.in.days}{The \emph{number} of days at which the regular grid is
drawn (or 0 for no grid).}

\item{show.legend}{\emph{Logical}, should the legend be drawn?}

\item{legend.x}{The position of the legend on the x axis; can be "left",
"right" (default), or a \emph{numeric} value.}

\item{legend.y}{The position of the legend on the y axis; can be "bottom"
(default), "top", or a \emph{numeric} value.}

\item{legend.bkg.opacity}{A \emph{number} between 0.0 and 1.0 specifying the
opacity of the legend background.}

\item{cex, cex.axis, cex.lab, legend.cex, legend.cex.title}{\emph{numeric} values
specifying the cex of the various types of text.}

\item{col.cats}{A \emph{color} or a \emph{function} that specifies the single
colour or the colour palette used to plot the different medication; by
default \code{rainbow}, but we recommend, whenever possible, a
colorblind-friendly palette such as \code{viridis} or \code{colorblind_pal}.}

\item{unspecified.category.label}{A \emph{string} giving the name of the
unspecified (generic) medication category.}

\item{lty.event, lwd.event, pch.start.event, pch.end.event}{The style of the
event (line style, width, and start and end symbols).}

\item{print.dose}{\emph{Logical}, should the daily dose be printed as text?}

\item{cex.dose}{\emph{Numeric}, if daily dose is printed, what text size
to use?}

\item{print.dose.outline.col}{If \emph{\code{NA}}, don't print dose text with
outline, otherwise a color name/code for the outline.}

\item{print.dose.centered}{\emph{Logical}, print the daily dose centered on
the segment or slightly below it?}

\item{plot.dose}{\emph{Logical}, should the daily dose be indicated through
segment width?}

\item{lwd.event.max.dose}{\emph{Numeric}, the segment width corresponding to
the maximum daily dose (must be >= lwd.event but not too big either).}

\item{plot.dose.lwd.across.medication.classes}{\emph{Logical}, if \code{TRUE},
the line width of the even is scaled relative to all medication classes (i.e.,
relative to the global minimum and maximum doses), otherwise it is scale
relative only to its medication class.}

\item{col.continuation, lty.continuation, lwd.continuation}{The style of the
"continuation" lines connecting consecutive events (colour, line style and
width).}

\item{col.na}{The colour used for missing event data.}

\item{highlight.followup.window}{\emph{Logical}, should the follow-up window
be plotted?}

\item{followup.window.col}{The follow-up window's colour.}

\item{highlight.observation.window}{\emph{Logical}, should the observation
window be plotted?}

\item{observation.window.col, observation.window.density, observation.window.angle, observation.window.opacity}{Attributes of the observation window (colour, shading density, angle and
opacity).}

\item{bw.plot}{\emph{Logical}, should the plot use grayscale only (i.e., the
\code{\link[grDevices]{gray.colors}} function)?}

\item{print.CMA}{\emph{Logical}, should the CMA values be printed?}

\item{plot.CMA}{\emph{Logical}, should the CMA values be represented
graphically?}

\item{CMA.plot.ratio}{A \emph{number}, the proportion of the total horizontal
plot space to be allocated to the CMA plot.
\emph{Numeric}, the minimum size of the plotting surface in characters;
horizontally (min.plot.size.in.characters.horiz) referes to the the whole
duration of the events to plot; vertically (min.plot.size.in.characters.vert)
referes to a single event.}

\item{min.plot.size.in.characters.horiz, min.plot.size.in.characters.vert}{\emph{Numeric}, the minimum size of the plotting surface in characters;
horizontally (min.plot.size.in.characters.horiz) referes to the the whole
duration of the events to plot; vertically (min.plot.size.in.characters.vert)
referes to a single event.}

\item{max.patients.to.plot}{\emph{Numeric}, the maximum patients to attempt
to plot.}
}
\description{
Plots the events (prescribing or dispensing) data encapsulated in a basic
CMA0 object.
}
\details{
The x-axis represents time (either in days since the earliest date or as
actual dates), with consecutive events represented as ascending on the y-axis.

Each event is represented as a segment with style \code{lty.event} and line
width \code{lwd.event} starting with a \code{pch.start.event} and ending with
a \code{pch.end.event} character, coloured with a unique color as given by
\code{col.cats}, extending from its start date until its end date.
Consecutive events are thus represented on consecutive levels of the y-axis
and are connected by a "continuation" line with \code{col.continuation}
colour, \code{lty.continuation} style and \code{lwd.continuation} width;
these continuation lines are purely visual guides helping to perceive the
sequence of events, and carry no information about the availability of
medication in this interval.

When several patients are displayed on the same plot, they are organized
vertically, and alternating bands (white and gray) help distinguish
consecutive patients.
Implicitly, all patients contained in the \code{cma} object will be plotted,
but the \code{patients.to.plot} parameter allows the selection of a subset
of patients.
}
\examples{
cma0 <- CMA0(data=med.events,
             ID.colname="PATIENT_ID",
             event.date.colname="DATE",
             event.duration.colname="DURATION",
             event.daily.dose.colname="PERDAY",
             medication.class.colname="CATEGORY",
             followup.window.start=0,
             followup.window.start.unit="days",
             followup.window.duration=2*365,
             followup.window.duration.unit="days",
             observation.window.start=30,
             observation.window.start.unit="days",
             observation.window.duration=365,
             observation.window.duration.unit="days",
             date.format="\%m/\%d/\%Y",
             summary="Base CMA");
plot(cma0, patients.to.plot=c("1","2"));
}
