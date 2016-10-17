#' @import dplyr
#' @import ggplot2
#' @importFrom bibliographica check_synonymes
#' @importFrom bibliographica condense_spaces
#' @importFrom bibliographica harmonize_print_statements
#' @importFrom bibliographica map
#' @importFrom bibliographica read_mapping
#' @importFrom stats median
#' @importFrom stats na.omit
#' @importFrom stringr str_trim
#' @importFrom utils download.file
#' @importFrom utils read.csv
#' @importFrom utils unzip
.onAttach <- function(lib, pkg)
{

  # This may help with encodings in Mac/Linux
  # Sys.setlocale(locale = "UTF-8")
  # Sys.setlocale(locale = "WINDOWS-1252")
  packageStartupMessage("Tools for the British Library ESTC Data Collection.\nCopyright (C) 2014-2016 Leo Lahti, Niko Ilomaki, Mika Koistinen and Mikko Tolonen\n\nhttps://github.com/ropengov/estc \n\n Some scientists will seek and develop new collaborative arrangements; have members from all fields of science; and these new ways of working, effectively instrumented by huge computers, will contribute greatly to the advance in handling the complex, but essentially organic, problems of the biological and social sciences. - Weaver 1948 \n")

}

