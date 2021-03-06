% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/viz.R
\name{clonesizeDistribution}
\alias{clonesizeDistribution}
\title{Hierarchical clustering of clonotypes on clonotype size and 
Jensen-Shannon divergence}
\usage{
clonesizeDistribution(
  df,
  cloneCall = "gene+nt",
  method = "ward.D2",
  exportTable = FALSE
)
}
\arguments{
\item{df}{The product of combineTCR(), combineBCR(), or expression2List().}

\item{cloneCall}{How to call the clonotype - CDR3 gene (gene),
CDR3 nucleotide (nt), CDR3 amino acid (aa), or 
CDR3 gene+nucleotide (gene+nt).}

\item{method}{The clustering paramater for the dendrogram.}

\item{exportTable}{Returns the data frame used for forming the graph.}
}
\value{
ggplot dendrogram of the clone size distribution
}
\description{
This functionn produces a heirachial clustering of clonotypes by sample 
using the Jensen-Shannon distance and discrete gamma-GPD spliced threshold 
model in the [powerTCR R package]
(https://bioconductor.org/packages/devel/bioc/html/powerTCR.html).
Please read and cite PMID: 30485278 if using the function for analyses. 
If a matrix output for the data is preferred set exportTable = TRUE.
}
\examples{
#Making combined contig data
x <- contig_list
combined <- combineTCR(x, rep(c("PX", "PY", "PZ"), each=2), 
rep(c("P", "T"), 3), cells ="T-AB")
clonesizeDistribution(combined, cloneCall = "gene+nt", method="ward.D2")

}
