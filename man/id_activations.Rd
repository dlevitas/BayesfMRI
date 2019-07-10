% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/id_activations.R
\name{id_activations}
\alias{id_activations}
\title{Identifies areas of activation given an activation threshold and significance level}
\usage{
id_activations(object, name, mask, mesh = NULL, session_names, threshold,
  alpha, area.limit)
}
\arguments{
\item{object}{An object of class ‘"inla"’, a result of a call to inla}

\item{name}{Name of latent field on which to identify activations}

\item{mask}{Logical vector used to map beta estimates back to whole-brain field}

\item{mesh}{SPDE triangular mesh.  Only required if area.limit is specified.}

\item{session_names}{Names of sessions included in INLA model that resulted in object}

\item{threshold}{Activation threshold (e.g. 0.01 for 1 percent signal change)}

\item{alpha}{Significance level (e.g. 0.05)}

\item{area.limit}{Below this value, activations will be considered spurious.  If NULL, no limit.}
}
\value{
An object of class excurobj (see \code{help(excursions.inla)} for more information)
}
\description{
For a given latent field, identifies locations that exceed a certain activation
threshold (e.g. 1 percent signal change) at a given significance level, based on the joint
posterior distribution of the latent field.
}
\details{
Put additional details here.
}
\examples{
\dontrun{}
}