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