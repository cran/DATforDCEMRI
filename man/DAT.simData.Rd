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