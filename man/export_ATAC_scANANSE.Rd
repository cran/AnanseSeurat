% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/export_functions.R
\name{export_ATAC_scANANSE}
\alias{export_ATAC_scANANSE}
\title{export_ATAC_scANANSE}
\usage{
export_ATAC_scANANSE(
  seurat_object,
  output_dir,
  min_cells = 50,
  ATAC_peak_assay = "peaks",
  cluster_id = "seurat_clusters"
)
}
\arguments{
\item{seurat_object}{object}

\item{output_dir}{directory where the files are outputted}

\item{min_cells}{minimum of cells a cluster needs to be exported}

\item{ATAC_peak_assay}{assay of the seurat object containing the peaks and peakcounts}

\item{cluster_id}{ID used for finding clusters of cells}
}
\value{
None, outputs ATAC peak count file in the output directory
}
\description{
This functions exports ATAC values from a seurat object
}
\examples{
sce_small <- readRDS(system.file("extdata","sce_small.Rds",package = 'AnanseSeurat'))
export_ATAC_scANANSE(sce_small, min_cells = 2, output_dir = tempdir())
}
