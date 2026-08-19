#' CopyClust Example TCGA Integrative Cluster Labels
#'
#' Gold standard integrative cluster labels of 1,075 example TCGA samples from 'test_data' determined using combined copy number and gene expression classifier from iC10 package.
#'
#' Note that integrative cluster labels in this object are stored zero-indexed
#' (values `0`-`9`), whereas [CopyClust()] returns one-indexed labels (`1`-`10`).
#' Add one to `test_labels` before comparing the two:
#'
#' ```
#' results = CopyClust(test_data, model_approach = "6C")
#' truth = as.numeric(test_labels[,2]) + 1
#' mean(results$IntClust_Label == truth)
#' ```
#'
#' This object is reference data only; it is not used by [CopyClust()] or
#' [CC_format()] and has no bearing on model predictions.
#'
#' @format ## `test_labels`
#' A 1075 by 2 matrix. Column 1 is the TCGA sample ID; column 2 is the
#' zero-indexed integrative cluster label (`0`-`9`).
"test_labels"

#' CopyClust Example Data from TCGA Pre-Formatted
#'
#' Example data from 1,075 TCGA samples used to test the package pre-formatted for the CopyClust function.
#'
#' @format ## `test_data`
#' A 1075 by 478 matrix
"test_data"

#' CopyClust Example Data from TCGA Raw
#'
#' Example raw copy number values in DNACopy format from 100 TCGA samples used to test the CC_format function.
#'
#' @format ## `test_data_raw`
#' A 20413 by 6 matrix
"test_data_raw"

#' hg18 Ranges
#'
#' Genomic ranges used as features for the CopyClust function linked to the hg18 reference genome. Utilized for formatting with CC_format.
#' Columns: "chrom", "start", "end", "width", "range".
#'
#' @format ## `hg18_ranges`
#' A 478 by 5 matrix
"hg18_ranges"

#' hg19 Ranges
#'
#' Genomic ranges used as features for the CopyClust function linked to the hg19 reference genome. Utilized for formatting with CC_format.
#' Columns: "chrom", "start", "end", "width", "range".
#'
#' @format ## `hg19_ranges`
#' A 478 by 5 matrix
"hg19_ranges"

#' hg38 Ranges
#'
#' Genomic ranges used as features for the CopyClust function linked to the hg38 reference genome. Utilized for formatting with CC_format.
#' Columns: "chrom", "start", "end", "width", "range".
#'
#' @format ## `hg38_ranges`
#' A 478 by 5 matrix
"hg38_ranges"

#' Raw METABRIC Copynumber Data
#'
#' Raw METABRIC copynumber calls
#' Columns: "ID", "chrom", "loc.start", "loc.end", "num.mark", "seg.mean", "call", "call2".
#'
#' @format ## `raw_METABRIC_copynumber_data`
#' A 1909741 by 8 matrix
"raw_METABRIC_copynumber_data"

#' Raw TCGA SNP Copynumber Data
#'
#' Raw TCGA SNP copynumber calls
#' Columns: "GDC_Aliquot", "Chromosome", "Start", "End", "Num_Probes", "Segment_Mean".
#'
#' @format ## `raw_TCGA_SNP_copynumber_data`
#' A 794622 by 6 matrix
"raw_TCGA_SNP_copynumber_data"

#' Raw TCGA WES Copynumber Data
#'
#' Raw TCGA WES copynumber calls
#' Columns: "ID", "chrom", "loc.start", "loc.end", "num.mark", "seg.mean".
#'
#' @format ## `raw_TCGA_WES_copynumber_data`
#' A 214622 by 6 matrix
"raw_TCGA_WES_copynumber_data"


