% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generateFilterValues.R
\name{generateFilterValuesData}
\alias{generateFilterValuesData}
\alias{FilterValues}
\title{Calculates feature filter values.}
\usage{
generateFilterValuesData(task, method = "randomForestSRC.rfsrc",
  nselect = getTaskNFeats(task), ..., more.args = list())
}
\arguments{
\item{task}{(\link{Task})\cr
The task.}

\item{method}{(\link{character})\cr
Filter method(s), see above.
Default is \dQuote{randomForestSRC.rfsrc}.}

\item{nselect}{(\code{integer(1)})\cr
Number of scores to request. Scores are getting calculated for all features per default.}

\item{...}{(any)\cr
Passed down to selected method. Can only be use if \code{method} contains one element.}

\item{more.args}{(named \link{list})\cr
Extra args passed down to filter methods. List elements are named with the filter
\code{method} name the args should be passed down to.
A more general and flexible option than \code{...}.
Default is empty list.}
}
\value{
(\link{FilterValues}). A \code{list} containing:
\item{task.desc}{[[TaskDesc])\cr
Task description.}
\item{data}{([data.frame]) with columns:
\itemize{
\item \code{name}([character])\cr
Name of feature.
\item \code{type}([character])\cr
Feature column type.
\item \code{method}([numeric])\cr
One column for each method with the feature importance values.
}}

[[TaskDesc]: R:[TaskDesc
[data.frame]: R:data.frame
[character]: R:character
[character]: R:character
[numeric]: R:numeric
}
\description{
Calculates numerical filter values for features.
For a list of features, use \link{listFilterMethods}.
}
\seealso{
Other generate_plot_data: \code{\link{generateCalibrationData}},
  \code{\link{generateCritDifferencesData}},
  \code{\link{generateFeatureImportanceData}},
  \code{\link{generateLearningCurveData}},
  \code{\link{generatePartialDependenceData}},
  \code{\link{generateThreshVsPerfData}},
  \code{\link{getFilterValues}},
  \code{\link{plotFilterValues}}

Other filter: \code{\link{filterFeatures}},
  \code{\link{getFilterValues}},
  \code{\link{getFilteredFeatures}},
  \code{\link{listFilterMethods}},
  \code{\link{makeFilterWrapper}},
  \code{\link{makeFilter}},
  \code{\link{plotFilterValuesGGVIS}},
  \code{\link{plotFilterValues}}
}
