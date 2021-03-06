% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MDL.R
\docType{methods}
\name{MDL}
\alias{MDL}
\alias{plot,MDLObj,missing-method}
\title{Minimum Description Length}
\usage{
MDL(CAMResult, mdl.method = 3)

\S4method{plot}{MDLObj,missing}(x, data.term = FALSE, ...)
}
\arguments{
\item{CAMResult}{Result from \code{\link{CAM}} function.}

\item{mdl.method}{Approach to calculate mdl values; should be 1, 2, or 3.
The default is 3.}

\item{x}{An object of class "\code{\link{MDLObj}}" from \code{\link{MDL}}.}

\item{data.term}{If true, plot data term (code length of data under model).}

\item{...}{All other arguments are passed to the plotting command.}
}
\value{
An object of class "\code{\link{MDLObj}}" containing the
following components:
\item{K}{The candidate subpopulation numbers.}
\item{datalengths}{For each model with a certain subpopulation number,
code length of data under the model.}
\item{mdls}{mdl value for each model with a certain subpopulation number.}
}
\description{
This function obtains minimum description length (mdl) values for each
candidate subpopulation number.
}
\details{
This function extracts minimum description length (mdl) values from
the result of \code{\link{CAM}} function, which contains mdl values form
three approaches for each candidate subpopulation number.
For more details about three approaches, refer to \code{\link{CAMASest}}.

mdl is code length of data under the model plus code length of model.
Both mdl value and the first term about data are returned.
}
\examples{
\dontrun{
#obtain data
data(ratMix3)
data <- ratMix3$X

#Analysis by CAM
rCAM <- CAM(data, K = 2:5, thres.low = 0.30, thres.high = 0.95)

#extract mdl values
MDL(rCAM)
MDL(rCAM, 1)
MDL(rCAM, 2)

#plot MDL curves
plot(MDL(rCAM))
plot(MDL(rCAM), data.term = TRUE) #with data length curve
}
}
