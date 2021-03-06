% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/adherer.R
\name{plot.CMA_per_episode}
\alias{plot.CMA_per_episode}
\alias{plot.CMA_sliding_window}
\title{Plot CMA_per_episode and CMA_sliding_window objects.}
\usage{
\method{plot}{CMA_per_episode}(x, ..., patients.to.plot = NULL,
  duration = NA, align.all.patients = FALSE,
  align.first.event.at.zero = TRUE, show.period = c("dates",
  "days")[2], period.in.days = 90, show.legend = TRUE,
  legend.x = "right", legend.y = "bottom", legend.bkg.opacity = 0.5,
  cex = 1, cex.axis = 0.75, cex.lab = 1, show.cma = TRUE,
  col.cats = rainbow, unspecified.category.label = "drug",
  lty.event = "solid", lwd.event = 2, pch.start.event = 15,
  pch.end.event = 16, col.na = "lightgray",
  col.continuation = "black", lty.continuation = "dotted",
  lwd.continuation = 1, print.CMA = TRUE, CMA.cex = 0.5,
  plot.CMA = TRUE, plot.CMA.as.histogram = TRUE,
  CMA.plot.ratio = 0.1, CMA.plot.col = "lightgreen",
  CMA.plot.border = "darkgreen", CMA.plot.bkg = "aquamarine",
  CMA.plot.text = CMA.plot.border, highlight.followup.window = TRUE,
  followup.window.col = "green", highlight.observation.window = TRUE,
  observation.window.col = "yellow", observation.window.density = 35,
  observation.window.angle = -30, show.real.obs.window.start = TRUE,
  real.obs.window.density = 35, real.obs.window.angle = 30,
  bw.plot = FALSE)

\method{plot}{CMA_sliding_window}(...)
}
\arguments{
\item{x}{A \emph{\code{CMA0}} or derived object, representing the CMA to
plot}

\item{...}{other parameters (to be passed to the estimation and plotting of
the simple CMA)}

\item{patients.to.plot}{A vector of \emph{strings} containing the list of
patient IDs to plot (a subset of those in the \code{cma} object), or
\code{NULL} for all}

\item{duration}{A \emph{number}, the total duration (in days) of the whole
period to plot; in \code{NA} it is automatically determined from the event
data such that the whole dataset fits.}

\item{align.all.patients}{\emph{Logical}, should all patients be aligned
(i.e., the actual dates are discarded and all plots are relative to the
earliest date)?}

\item{align.first.event.at.zero}{\emph{Logical}, should the first event be
placed at the origin of the time axis (at 0)?}

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

\item{cex, cex.axis, cex.lab}{\emph{numeric} values specifying the cex of the
various types of text.}

\item{show.cma}{\emph{Logical}, should the CMA type be shown in the title?}

\item{col.cats}{A \emph{color} or a \emph{function} that specifies the single
colour or the colour palette used to plot the different medication; by
default \code{rainbow}, but we recommend, whenever possible, a
colorblind-friendly palette such as \code{viridis} or \code{colorblind_pal}.}

\item{unspecified.category.label}{A \emph{string} giving the name of the
unspecified (generic) medication category.}

\item{lty.event, lwd.event, pch.start.event, pch.end.event}{The style of the
event (line style, width, and start and end symbols).}

\item{col.na}{The colour used for missing event data.}

\item{col.continuation, lty.continuation, lwd.continuation}{The color, style
and width of the contuniation lines connecting consecutive events.}

\item{print.CMA}{\emph{Logical}, should the CMA values be printed?}

\item{CMA.cex}{... and, if printed, what cex (\emph{numeric}) to use?}

\item{plot.CMA}{\emph{Logical}, should the CMA values be represented
graphically?}

\item{plot.CMA.as.histogram}{\emph{Logical}, should the CMA plot be a
histogram or a (truncated) density plot? Please note that it is TRUE by
deafult for CMA_per_episode and FALSE for CMA_sliding_window, because
usually there are more sliding windows than episodes. Also, the density
estimate canot be estimated for less than three different values.}

\item{CMA.plot.ratio}{A \emph{number}, the proportion of the total horizontal
plot space to be allocated to the CMA plot.}

\item{CMA.plot.col, CMA.plot.border, CMA.plot.bkg, CMA.plot.text}{\emph{Strings}
giving the colours of the various components of the CMA plot.}

\item{highlight.followup.window}{\emph{Logical}, should the follow-up window
be plotted?}

\item{followup.window.col}{The follow-up window colour.}

\item{highlight.observation.window}{\emph{Logical}, should the observation
window be plotted?}

\item{observation.window.col, observation.window.density, observation.window.angle}{Attributes of the observation window
(colour, shading density and angle).}

\item{show.real.obs.window.start, real.obs.window.density, real.obs.window.angle}{For some CMAs, the observation window
might be adjusted, in which case should it be plotted and with that attributes?}

\item{bw.plot}{\emph{Logical}, should the plot use grayscale only (i.e., the
\code{\link[grDevices]{gray.colors}} function)?}
}
\description{
Plots the event data and the estimated CMA per treatment episode and sliding
window, respectively.
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
sequence of events, and carry no information about the avilability of
medicine in this interval.

Above these, the treatment episodes or the sliding windows are represented in
a stacked manner from the earlieast (left, bottom of the stack) to the latest
(right, top of the stack), each showing the CMA as percent fill (capped at
100\% even if CMA values may be higher) and also as text.

The follow-up and the observation windows are plotted as empty an rectangle
and as shaded rectangle, respectively (for some CMAs the observation window
might be adjusted in which case the adjustment may also be plotted using a
different shading).

The kernel density ("smoothed histogram") of the CMA estimates across
treatment episodes/sliding windows (if more than 2) can be visually
represented as well in the left side of the figure (NB, their horizontal
scales may be different across patients).

When several patients are displayed on the same plot, they are organized
vertically, and alternating bands (white and gray) help distinguish
consecutive patients.
Implicitely, all patients contained in the \code{cma} object will be plotted,
but the \code{patients.to.plot} parameter allows the selection of a subset
of patients.

Finally, the y-axis shows the patient ID and possibly the CMA estimate as
well.

Any not explicitely defined arguments are passed to the simple CMA estimation
and plotting function; therefore, for more info about possible estimation
parameters plese see the help for the appropriate simple CMA, and for possible
aesthetic tweaks, please see the help for their plotting.
}
\examples{
\dontrun{
cmaW <- CMA_sliding_window(CMA=CMA1,
                        data=med.events,
                        ID.colname="PATIENT_ID",
                        event.date.colname="DATE",
                        event.duration.colname="DURATION",
                        event.daily.dose.colname="PERDAY",
                        medication.class.colname="CATEGORY",
                        carry.only.for.same.medication=FALSE,
                        consider.dosage.change=FALSE,
                        followup.window.start=0,
                        observation.window.start=0,
                        observation.window.duration=365,
                        sliding.window.start=0,
                        sliding.window.start.unit="days",
                        sliding.window.duration=90,
                        sliding.window.duration.unit="days",
                        sliding.window.step.duration=7,
                        sliding.window.step.unit="days",
                        sliding.window.no.steps=NA,
                        date.format="\%m/\%d/\%Y"
                       );
plot(cmaW, patients.to.plot=c("1","2"));
cmaE <- CMA_per_episode(CMA=CMA1,
                        data=med.events,
                        ID.colname="PATIENT_ID",
                        event.date.colname="DATE",
                        event.duration.colname="DURATION",
                        event.daily.dose.colname="PERDAY",
                        medication.class.colname="CATEGORY",
                        carry.only.for.same.medication=FALSE,
                        consider.dosage.change=FALSE,
                        followup.window.start=0,
                        observation.window.start=0,
                        observation.window.duration=365,
                        date.format="\%m/\%d/\%Y"
                       );
plot(cmaE, patients.to.plot=c("1","2"));}
}
\seealso{
See the simple CMA estimation \code{\link[AdhereR]{CMA1}}
to \code{\link[AdhereR]{CMA9}} and plotting \code{\link[AdhereR]{plot.CMA1}}
functions for extra parameters.
}
