% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BayesGLM.R
\name{BayesGLM_surface}
\alias{BayesGLM_surface}
\title{Applies spatial Bayesian GLM to task fMRI data on the cortical surface}
\usage{
BayesGLM_surface(
  data,
  vertices = NULL,
  faces = NULL,
  mesh = NULL,
  mask = NULL,
  scale_BOLD = TRUE,
  num.threads = 4,
  return_INLA_result = TRUE,
  outfile = NULL,
  verbose = FALSE
)
}
\arguments{
\item{data}{A list of sessions, where each session is a list with elements
BOLD, design and nuisance.  See \code{?create.session} and \code{?is.session} for more details.
List element names represent session names.}

\item{vertices}{A Vx3 matrix of vertex locations of the triangular mesh in Euclidean space.}

\item{faces}{A Wx3 matrix, where each row contains the vertex indices for a given face or triangle in the triangular mesh. W is the number of faces in the mesh.}

\item{mesh}{A \code{inla.mesh} object.  Must be provided if and only if \code{vertices} and \code{faces} are not.}

\item{mask}{(Optional) A logical or 0/1 vector of length V indicating which vertices are to be included.}

\item{scale_BOLD}{If TRUE, scale timeseries data so estimates represent percent signal change.  Else, center but do not scale.}

\item{num.threads}{Maximum number of threads the inla-program will use for model estimation}

\item{return_INLA_result}{If TRUE, object returned will include the INLA model object (can be large).  Default is TRUE. Required for running \code{id_activations} on \code{BayesGLM} model object.}

\item{outfile}{File name where results will be written (for use by \code{BayesGLM_group}).}

\item{verbose}{Logical indicating if INLA should run in a verbose mode (default FALSE).}
}
\value{
A list containing...
}
\description{
Applies spatial Bayesian GLM to task fMRI data on the cortical surface
}
\note{
This function requires the \code{INLA} package, which is not a CRAN package. See \url{http://www.r-inla.org/download} for easy installation instructions.
}
