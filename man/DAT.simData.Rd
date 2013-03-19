%%    DATforDCEMRI: a Deconvolution Analysis Tool for DCE-MRI
%%    Copyright 2013 Genentech, Inc.
%%
%%    This package is distributed under the
%%    Creative Commons Attribution-NonCommercial-ShareAlike 3.0 License
%%    at http://creativecommons.org/licenses/by-nc-sa/3.0/us/
%%
%%    For questions or comments, please contact
%%    Gregory Z. Ferl, Ph.D.
%%    Genentech, Inc.
%%    Development Sciences
%%    1 DNA Way, Mail stop 463A
%%    South San Francisco, CA, United States of America
%%    E-mail: ferl.gregory@gene.com


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