% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/export_functions.R
\name{export_CPM_scANANSE}
\alias{export_CPM_scANANSE}
\title{export_CPM_scANANSE}
\usage{
export_CPM_scANANSE(
  seurat_object,
  output_dir,
  min_cells = 50,
  RNA_count_assay = "RNA",
  cluster_id = "seurat_clusters"
)
}
\arguments{
\item{seurat_object}{the seurat object used to export the CPM values from}

\item{output_dir}{directory where the files are outputted}

\item{min_cells}{minimum of cells a cluster needs to be exported}

\item{RNA_count_assay}{assay of the seurat object containing the RNA count data}

\item{cluster_id}{ID used for finding clusters of cells}
}
\value{
None, outputs CPM and counts files in the output directory
}
\description{
This functions exports CPM values from a seurat object
}
\examples{
sce_small <- readRDS(system.file("extdata","sce_small.Rds",package = 'AnanseSeurat'))
export_CPM_scANANSE(sce_small, min_cells = 2, output_dir = tempdir())
}
