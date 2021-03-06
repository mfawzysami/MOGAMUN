% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MOGAMUN.R
\name{mogamun_load_data}
\alias{mogamun_load_data}
\title{mogamun_load_data}
\usage{
mogamun_load_data(
    EvolutionParameters,
    DifferentialExpressionPath,
    NodesScoresPath,
    NetworkLayersDir,
    Layers
)
}
\arguments{
\item{EvolutionParameters}{evolution paramenters returned by mogamun_init()}

\item{DifferentialExpressionPath}{full path to the differential expression 
results file (in CSV format). This file must contain at least the columns 
"gene" with the gene names, and ("PValue" or "FDR"). 
It can also contain "logFC"}

\item{NodesScoresPath}{full path to an existing CSV file containing the 
nodes scores (columns "gene" and "nodescore"). NOTE. If the file does not 
exist, MOGAMUN will generate it in the provided path with the specified name}

\item{NetworkLayersDir}{path of the folder that contains the networks that 
will be the layers of the multiplex. NOTE. Each file must start with a 
different digit}

\item{Layers}{string of numbers, where the numbers correspond to the first 
character of the name of the network files (e.g. "123" builds a multiplex 
with layers 1, 2, and 3)}
}
\value{
List with the data to process
}
\description{
Load the data to process
}
\examples{
DEGPath <- system.file("extdata/DE/Sample_DE.csv", package = "MOGAMUN")
NodesScoresPath <- 
    system.file("extdata/DE/Sample_NodesScore.csv", package = "MOGAMUN")
LayersPath <- 
    paste0(system.file("extdata/LayersMultiplex", package = "MOGAMUN"), "/")
EvolutionParameters <- mogamun_init(Generations = 1, PopSize = 10)
LoadedData <- 
    mogamun_load_data(
        EvolutionParameters = EvolutionParameters,
        DifferentialExpressionPath = DEGPath,
        NodesScoresPath = NodesScoresPath,
        NetworkLayersDir = LayersPath,
        Layers = "23"
    )
}
