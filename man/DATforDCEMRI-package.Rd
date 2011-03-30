%    DATforDCEMRI: a Deconvolution Analysis Tool for DCE-MRI
%    Copyright 2011 Genentech, Inc.
%
%    This program is free software; you can redistribute it and/or modify
%    it under the terms of the GNU General Public License as published by
%    the Free Software Foundation; either version 2 of the License, or
%    (at your option) any later version.
%
%    This program is distributed in the hope that it will be useful,
%    but WITHOUT ANY WARRANTY; without even the implied warranty of
%    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%    GNU General Public License for more details.
%
%    You should have received a copy of the GNU General Public License
%    along with this program; if not, write to the Free Software
%    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
%
%    For questions or comments, please contact
%    Gregory Z. Ferl, Ph.D.
%    Genentech, Inc.
%    Development Sciences
%    1 DNA Way, Mail stop 463A
%    South San Francisco, CA, United States of America
%    E-mail: ferl.gregory@gene.com


\name{DATforDCEMRI-package}
\Rdversion{1.1}
\alias{DATforDCEMRI-package}
\alias{DATforDCEMRI}
\docType{package}
\title{
Deconvolution Analysis Tool for DCE-MRI
}
\description{
Calculates the Impulse Response Function on a per-voxel basis for DCE-MRI data using numerical deconvolution, yielding the Impulse Response Function for each voxel analyzed.  The Area under the Curve and ratio of AUC to Mean Residence Time provide estimates of the kinetic model parameters ve and Ktrans.  A visualization tool is also included that allows the user to explore voxel-wise data in an interactive manner.
}
\details{
\tabular{ll}{
Package: \tab DATforDCEMRI\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2011-03-09\cr
License: \tab What GPL-2\cr
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
