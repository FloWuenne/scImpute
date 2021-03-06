% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scimpute.R
\name{scimpute_quick}
\alias{scimpute_quick}
\title{quick re-run of SCimpute with a different \code{drop_thre}}
\usage{
scimpute_quick(count_path, infile = "csv", outfile = "csv", out_dir,
  drop_thre = 0.5, celltype = FALSE, labels = NULL, ncores = 5)
}
\arguments{
\item{count_path}{A character specifying the full path of the raw count matrix;}

\item{infile}{A character specifying the type of file storing the raw count matrix;
can be either "csv" or "txt". The input file shoule have rows representing genes and
columns representing cells, with its first row as cell names 
and first column as gene names.}

\item{outfile}{A character specifying the type of file storing the imputed count matrix;
can be either "csv" or "txt".}

\item{out_dir}{A character specifying the full path of the output directory, 
which is used to store all intermdediate and final outputs.}

\item{drop_thre}{A number between 0 and 1, 
specifying the threshold to determine dropout values.}

\item{celltype}{A logical value indicating whether cell type information is available.
\code{labels} must be specified if \code{celltype = TRUE}.}

\item{labels}{A character vector specifying the cell type of 
each column in the raw count matrix. Only needed when \code{celltype = TRUE}.
Each cell type should have at least two cells for imputation.}

\item{ncores}{A integer specifying the number of cores used for parallel computation.}
}
\value{
Save the imputed count matrix to SCimpute.csv or SCimpute.txt 
(depending on \code{outfile}) to \code{out_dir}.
}
\description{
quick re-run of SCimpute with a different \code{drop_thre}
}
