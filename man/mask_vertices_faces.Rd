% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mask_vertices_faces.R
\name{mask_vertices_faces}
\alias{mask_vertices_faces}
\title{Apply Mask to Vertices and Faces}
\usage{
mask_vertices_faces(vertices, faces, mask)
}
\arguments{
\item{vertices}{Vx3 matrix of vertices}

\item{faces}{matrix of faces}

\item{mask}{0/1 vector of length V indicating which vertices are to be retained (1) and which are to be excluded (0)}
}
\value{
List containing masked vertices and faces matrices
}
\description{
Apply a binary mask to a set of vertices and faces.  Vertices not in the mask are removed,
and faces (triangles) with any vertices outside of the mask are removed.  Finally,
vertex numbering in the masked faces matrix is corrected.
}
