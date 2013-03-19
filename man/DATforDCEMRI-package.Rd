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


\name{DATforDCEMRI-package}
\Rdversion{1.1}
\alias{DATforDCEMRI-package}
\alias{DATforDCEMRI}
\docType{package}
\title{
Deconvolution Analysis Tool for DCE-MRI
}
\description{
Calculates the Impulse Response Function on a per-voxel basis for
DCE-MRI data using numerical deconvolution, yielding the Impulse
Response Function for each voxel analyzed.  The Area under the Curve
(\code{AUC}) and ratio of \code{AUC} to Mean Residence Time (\code{MRT}) provide estimates of the kinetic model parameters \eqn{K^{trans}}{Ktrans} and \eqn{v_e}{ve}.  A visualization tool is also included that allows the user to explore voxel-wise data in an interactive manner.
}
\details{
\tabular{ll}{
Package: \tab DATforDCEMRI\cr
Type: \tab Package\cr
Version: \tab 0.55\cr
Date: \tab 2013-03-19\cr
License: \tab CC BY-NC-SA 3.0\cr
LazyLoad: \tab yes\cr
}
}
\author{
Gregory Zelinsky Ferl <ferl.gregory@gene.com>
}
\references{
Ferl GZ (2011) DATforDCEMRI: An R Package for Deconvolution Analysis and Visualization of DCE-MRI Data. \emph{Journal of Statistical Software} \bold{44}, 1-18.

Ferl GZ, Xu L, Friesenhahn M, Bernstein LJ, Barboriak DP, Port RE. (2010) An automated method for nonparametric kinetic analysis of clinical DCE-MRI data: application to glioblastoma treated with bevacizumab. \emph{Magn Reson Med.} \bold{63}, 1366-1375.
}
\keyword{ package }
