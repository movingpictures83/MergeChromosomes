library("derfinder")
library("derfinderData")
library("GenomicRanges")
library("knitr")


####################################################################################
# MERGE RESULTS
input <- function(inputfile) {
   results2 <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {

mergeResults(
    chrs = "chr21", prefix = "analysisResults",
    genomicState = genomicState$fullGenome,
    optionsStats = results2$optionsStats
)
dir("analysisResults", pattern = ".Rdata")
load(file.path("analysisResults", "optionsMerge.Rdata"))
load(file.path("analysisResults", "fullRegions.Rdata"))
load(file.path("analysisResults", "fullAnnotatedRegions.Rdata"))
#lapply(fullAnnotatedRegions, head)
saveRDS(fullRegions, outputfile)
}
####################################################################################

