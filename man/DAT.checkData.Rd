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


\name{DAT.checkData}
\Rdversion{1.1}
\alias{DAT.checkData}
\title{
Create and check data file.
}
\description{
The user loads DCE-MRI data into R using pre-existing functions such as \code{read.table}; \code{DAT.checkData} then saves all data into a single RData file which can be analyzed using \code{DAT}.
}
\usage{
DAT.checkData(file.name, vector.times, map.CC, mask.ROI, 
vector.AIF, slice.start=1, slice.stop="not.specified")
}
\arguments{
  \item{file.name}{
Specify a name for the file that will be generated.
}
  \item{vector.times}{
Vector of time points at which contrast agent concentrations are measured (should have units of seconds).
}
  \item{map.CC}{
Array of voxel-wise contrast agent concentrations.
}
  \item{mask.ROI}{
Array containing the predefined Region of Interest.
}
  \item{vector.AIF}{
Vector containing the Arterial Input Function.
}
  \item{slice.start}{
For multislice data files, a range of slices must be specified.  Slice numbers less than slice.start will not be included in the saved file.  The default value for this argument is "1"; we recommend not changing this unless file size is a significant issue.
}
  \item{slice.stop}{
For multislice data files, a range of slices must be specified.  Slice numbers grater than slice.stop will not be included in the RData file to be analyzed by \code{DAT}.
}
}
%%\details{
%%No details yet.
%%}
%%\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
%%}
%%\references{
%%No references.
%%}
\author{
Gregory Zelinsky Ferl
}
%%\note{
%%No notes yet.
%%}
\examples{
data(DAT.simData, package="DATforDCEMRI")
myccarray <- (DAT.simData$mapCC)
mytimevector <- (DAT.simData$vectorTimes)
myroiarray <- (DAT.simData$maskROI)
myaifvector <- (DAT.simData$vectorAIF)
DAT.checkData(file.name="mydcemridata", vector.times=mytimevector, map.CC=myccarray, 
mask.ROI=myroiarray, vector.AIF=myaifvector, slice.stop=2)
}