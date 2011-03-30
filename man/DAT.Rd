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


\name{DAT}
\Rdversion{1.1}
\alias{DAT}
\title{
Deconvolution Analysis Tool
}
\description{
Calculates the Impulse Response Function on a per-voxel basis for DCE-MRI data using numerical deconvolution, yielding the Impulse Response Function for each voxel analyzed.  The Area Under the Curve and ratio of AUC to Mean Residence Time provide estimates of the kinetic model parameters ve and Ktrans.  A visualization tool is also included that allows the user to explore voxel-wise data in an interactive manner.
}
\usage{
DAT(file = "nodata", slice = 0, vp = 0, border = 20, maxCt = 0.66, 
parameter.plot = "AUCMRT", cutoff.map = 0.85, range.map = 1.5, 
export.matlab = FALSE, batch.mode = FALSE, alpha.AIF=c(0,0,2000), 
correct.trunc=TRUE, kep.nom=0.5, ...)
}
\arguments{
  \item{file}{
RData file containing DCE-MRI data.  May be generated manually or by the function \code{DAT.checkData}.
}
  \item{slice}{
Image slice to be extracted for analysis.
}
  \item{vp}{
Fractional plasma volume of tissue within Region of Interest.  Default value is zero.
}
  \item{border}{
A border of image voxels around the Field of View to be excluded from analysis.  Default is 20 voxels.
}
  \item{maxCt}{
Voxels will be excluded from analysis if the maximum contrast agent concentration exceed a threshold of \code{maxCt} times the maximum contrast agent concentration within the Arterial Input Function vector.  Default value is 0.66.
}
  \item{parameter.plot}{
Which parameter will be described in the parametric maps?  Two possible values are \code{AUC} and \code{AUCMRT} for the Area Under the Curve (AUC) and AUC divided by the Mean Residence Time of the Impulse Response Function.  \code{AUC} is correlated with ve and \code{AUCMRT} is correlated with Ktrans.  Default value is \code{AUCMRT}.
}
  \item{cutoff.map}{
Typically a number between 0.5 and 1.  Represents the quantile at which parametric map values will be truncated in order to suppress very large \code{AUC} or \code{AUCMRT} values within the parametric maps.  Default value is 0.85.
}
  \item{range.map}{
Typically a number between 1 and 2.  The range of the color bar associated with the parametric map is set to the maximum value within the map times \code{range.map}.  Default value is 1.5.
}
  \item{export.matlab}{
Will the deconvolution results be export as a matlab file in addition to an RData file?  Default value is FALSE.
}
  \item{batch.mode}{
Will the interactive parametric maps normally displayed at the end of each run be suppressed?  Default value is FALSE.
}
  \item{alpha.AIF}{
Vector of smoothing parameters utilized by the \code{locfit} function when smoothing the arterial input function. Default value is c(0,0,2000).
}
  \item{correct.trunc}{
Will a rough approximation of truncation error correction be performed on parametric maps of AUC and AUC/MRT? Default value is TRUE.
}
  \item{kep.nom}{
A nominal value of kep to be used for truncation correction, i.e., to estimate the AUC of the IRF from the end of the scanning period to infinity? Default value is 0.5.
}
  \item{...}{
Pass arguments.
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
\references{
Ferl GZ (2011) DATforDCEMRI: An R Package for Deconvolution Analysis and Visualization of DCE-MRI Data. \emph{Journal of Statistical Software} \bold{44}, 1-18.

Ferl GZ, Xu L, Friesenhahn M, Bernstein LJ, Barboriak DP, Port RE. (2010) An automated method for nonparametric kinetic analysis of clinical DCE-MRI data: application to glioblastoma treated with bevacizumab. \emph{Magn Reson Med.} \bold{63}, 1366-1375.
}
\author{
Gregory Zelinsky Ferl
}
%%\note{
%%No notes yet.
%%}
\seealso{
See also \code{DAT.checkData}
}
\examples{
data(DAT.simData, package="DATforDCEMRI")
myccarray <- (DAT.simData$mapCC)
mytimevector <- (DAT.simData$vectorTimes)
myroiarray <- (DAT.simData$maskROI)
myaifvector <- (DAT.simData$vectorAIF)
DAT.checkData(file.name="mydcemridata", vector.times=mytimevector, map.CC=myccarray, 
mask.ROI=myroiarray, vector.AIF=myaifvector, slice.stop=1)
DAT(file="mydcemridata_s1-s1.RData", slice=1, range.map=1.05, cutoff.map=0.95, 
batch.mode=TRUE)
}