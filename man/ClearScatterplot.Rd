% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ClearScatterplot.R
\docType{class}
\name{ClearScatterplot}
\alias{ClearScatterplot}
\title{ClearScatterplot: A Class for Enhanced Scatterplot}
\usage{
ClearScatterplot(
  data,
  logFoldChange = "log2fc",
  negativeLogPValue = "negLog10p",
  highLog2fc = 0.585,
  lowLog2fc = -0.585,
  negLog10pValue = 1.301,
  timePointColumn = "timePoint",
  timePointLevels = NULL,
  ...
)
}
\arguments{
\item{data}{A data frame containing the plot data.}

\item{logFoldChange}{The name of the column containing expression values.}

\item{negativeLogPValue}{The column containing the negative log pValues}

\item{highLog2fc}{Threshold for high log2 fold change values.}

\item{lowLog2fc}{Threshold for low log2 fold change values.}

\item{negLog10pValue}{Threshold for -log10 p-value.}

\item{timePointColumn}{The name of the column containing time point info.}

\item{timePointLevels}{The levels for the time point column, if any.}
}
\value{
An object of class ClearScatterplot.
}
\description{
A class for creating and managing scatterplot objects with enhanced visualization features.

Creates an instance of the ClearScatterplot class.
}
\section{Slots}{

\describe{
\item{\code{data}}{A data frame containing the data to be plotted.}

\item{\code{plot}}{An object storing the ggplot representation of the data.}
}}

\examples{
data <- data.frame(
  timePoint = c("T0", "T1"), p = runif(10),
  log2fc = runif(10, -2, 2)
)
scatterplot <- ClearScatterplot(
  data = data, pValueColumn = "p",
  expressionColumnName = "log2fc"
)
}
