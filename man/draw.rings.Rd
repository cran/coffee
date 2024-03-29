% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\name{draw.rings}
\alias{draw.rings}
\title{plot the dates and model of a wiggle-match dated tree}
\usage{
draw.rings(
  name = "mytree",
  tree.dir = "trees",
  sep = ",",
  normal = TRUE,
  dat = c(),
  out = c(),
  cc = 1,
  postbomb = FALSE,
  BCAD = FALSE,
  t.a = 3,
  t.b = 4,
  x.lim = c(),
  x1.axis = TRUE,
  x1.labels = FALSE,
  x1.lab = c(),
  rev.x = FALSE,
  y1.lab = c(),
  y1.lim = c(),
  y2.lim = c(),
  x2.lab = c(),
  y2.lab = c(),
  ex = 0.05,
  plot.cc = TRUE,
  plot.dists = TRUE,
  mar.1 = c(1, 3, 1, 1),
  mar.2 = c(3, 3, 0, 1),
  mgp = c(1.7, 0.7, 0),
  dist.res = 500,
  date.col = "steelblue",
  cc.col = rgb(0, 0.5, 0, 0.5),
  dist.col = rgb(0, 0, 0, 0.5),
  calib.col = rgb(0, 0, 1, 0.25),
  range.col = "black",
  set.layout = TRUE
)
}
\arguments{
\item{name}{The name of the tree. The .csv file should be saved under a folder named exactly the same as \code{name}, and the folder should live under the \code{tree.dir} folder. Default names include Ulandryk4 and mytree.}

\item{tree.dir}{The directory where the folders of the individual trees live. Defaults to \code{treedir="trees"}.}

\item{sep}{Separator for the fields in the .csv file. Defaults to a comma.}

\item{normal}{Calculations can be done assuming that the measurements are normally distributed. By default this is set to FALSE and a student-t distribution is used (Christen and Perez 2009).}

\item{dat}{If \code{plot.rings} is called from within \code{rings()}, both dat and out are provided. If an existing run has to be plotted again, dat and out are read from the files in the folder named \code{name}.}

\item{out}{If \code{plot.rings} is called from within \code{rings()}, both dat and out are provided. If an existing run has to be plotted again, dat and out are read from the files in the folder named \code{name}.}

\item{cc}{Calibration curve to be used. Could be 1 (IntCal20; default), 2 (Marine20), 3 (SHCal20) or 4 (custom curve).}

\item{postbomb}{Negative C-14 ages should be calibrated using a postbomb curve. This could be 1 (northern-hemisphere region 1), 2 (NH region 2), 3 (NH region 3), 4 (southern hemisphere regions 1-2), or 5 (SH region 3).}

\item{BCAD}{The calendar scale of graphs and age output-files is in \code{cal BP} by default, but can be changed to BC/AD using \code{BCAD=TRUE}.}

\item{t.a}{First parameter for the student-t distribution (defaults to 3; higher numbers make the distribution approximate the normal distribution more).}

\item{t.b}{Second parameter for the student-t distribution (defaults to 4; higher numbers make the distribution approximate the normal distribution more).}

\item{x.lim}{Limits of the x-axes. Calculated automatically by default.}

\item{x1.axis}{Whether or not to plot the upper x-axis (slightly redundant since the bottom axis shows the values already). Defaults to TRUE.}

\item{x1.labels}{Whether or not to plot the labels of the upper x-axis. (slightly redundant since the bottom axis shows the values already). Defaults to FALSE.}

\item{x1.lab}{The labels for the calendar axis of the upper panel. Defaults to empty.}

\item{rev.x}{Whether or not to reverse the x-axis. Defaults to \code{FALSE}.}

\item{y1.lab}{The labels for the y-axis. Defaults to \code{"rings"}.}

\item{y1.lim}{Limits of the top y-axis. Calculated automatically if left empty.}

\item{y2.lim}{Limits of the bottom y-axis. Calculated automatically if left empty.}

\item{x2.lab}{The labels for the bottom calendar axis (default \code{age.lab="cal BP"} or \code{"BC/AD"} if \code{BCAD=TRUE}).}

\item{y2.lab}{The labels for the bottom y-axis. Defaults to 14C BP with superscript 14, so \code{expression(""^14*C~BP)}.}

\item{ex}{Exaggeration of the heights of the calibrated distributions. Defaults to 0.05 so there is plenty space to plot many distributions.}

\item{plot.cc}{Whether or not to plot a panel with the calibration curve.}

\item{plot.dists}{Whether or not to plot a panel with the distributions.}

\item{mar.1}{Margins around the first/top plot.}

\item{mar.2}{Margins around the first/bottom plot.}

\item{mgp}{Axis text margins (where should titles, labels and tick marks be plotted). Defaults to \code{mgp=c(1.7, .7, .0)}.}

\item{dist.res}{Resolution of the plot of the distribution. The default is \code{500}, which results in smooth plots.}

\item{date.col}{Colour of the uncalibrated dates when plotted on top of the calibration curve. Defaults to \code{"steelblue"}.}

\item{cc.col}{Colour of the calibration curve. Defaults to semi-transparent darkgreen, \code{cc.col=rgb(0 0.5, 0, 0.5)}.}

\item{dist.col}{Colour of the age-modelled distribution. Defaults to semi-transparent grey, \code{dist.col=rgb(0,0,0,0.5)}.}

\item{calib.col}{Colour of the calibrated distributions. Defaults to semi-transparent blue, \code{dist.col=rgb(0,0,1,0.5)}.}

\item{range.col}{Colour of the hpd ranges. Defaults to \code{"black"}.}

\item{set.layout}{By default, the layout of the two plots is set automatically (2 plots in one column).}
}
\value{
A plot with the calibrated distributions of the individual dates and the wiggle-match distributions (top), and the dates on the calibration curve together with the age distribution for the earliest ring, 0.
}
\description{
A plot with two panels. The top panel shows the calibrated distributions (in blue) and the wiggle-match age-modelled age estimates for each dated ring (grey). The bottom panel shows the fit of the uncalibrated radiocarbon dates (steelblue dots and lab error bars) to the calibration curve (green), as well as the age estimate of the oldest/starting ring (grey) and its hpd range (black).
}
\examples{
  treedir <- tempdir()
  rings("Ulandryk", tree.dir=treedir, draw=FALSE)
  draw.rings("Ulandryk", tree.dir=treedir)
}
\author{
Maarten Blaauw, J. Andres Christen
}
