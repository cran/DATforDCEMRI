\name{DAT.simData}
\Rdversion{1.1}
\alias{DAT.simData}
\docType{data}
\title{
Simulated DCE-MRI data
}
\description{
A simulated DCE-MRI data set to be used with \code{DAT}.
}
\usage{data(DAT.simData)}
\format{
  The format is:
List of 4

 $ time: num [1:25] 0 12 24 36 48 60 72 84 96 108 ...

 $ cc  : num [1:256, 1:256, 1:2, 1:25] 0 0 0 0 0 0 0 0 0 0 ...

 $ roi : int [1:256, 1:256, 1:2] 0 0 0 0 0 0 0 0 0 0 ...

 $ aif : num [1:25] 0 0 2781 2120 1871 ...
}
\details{
Simulated noisy data created using the Tofts version of the Kety model with a two compartment arterial input function.
}
\source{
Simulated using R.
}
%%\references{
%%No references yet.
%%}
\examples{
data(DAT.simData, package="DATforDCEMRI")
}
\keyword{data-sets}