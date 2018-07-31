#' @title Add Manual Page Counts
#' @description Augment the ESTC data with manually insertred page counts.
#' @param df Preprocessed data.frame 
#' @return data.frame with publication years estimated
#' @export
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' @examples \dontrun{df2 <- add_manual_pagecounts_estc(df)}
#' @keywords utilities
add_manual_pagecounts_estc <- function (df) {

  f <- system.file("extdata/custom_pagecounts.csv", package = "estc")    			   
  pagecount <- read_mapping(f, mode = "table", sep = "\t", from = "system_control_number", to = "pagecount", remove.ambiguous = TRUE)

  # Note that there are some ambiguous cases, now removed:
  # For instance: system_control_number == "(CU-RivES)W31466" (see below for full list)
  # MissingPages-12mo.csv:1794	A journal during a residence in France	2v. ;	562 p.
  # MissingPages-12mo.csv:1794	A journal during a residence in France	2 v. ;	1129 p.
  # MissingPages-12mo.csv:1794	A journal during a residence in France	2 v. ;	674 p.

  # Ensure that all pagecount entries are found in ESTC
  # otherwise the rest of this function will fail
  rmind <- which(!pagecount$system_control_number %in% df$system_control_number)
  if (length(rmind) > 0) {
    warning(paste("The following system control numbers were not found from ESTC but have been listed for manual page number corrections:", paste(pagecount$system_control_number, collapse = ", ")))
    pagecount <- pagecount[-rmind,]
  }

  # Add manual page counts
  inds <- match(pagecount$system_control_number, df$system_control_number)

  df[inds, "pagecount"] <- as.numeric(as.character(pagecount$pagecount))
  # Add custom page counts and note their manual origin
  df[inds, "pagecount_from"] <- "custom"
  df[inds, "pagecount"] <- as.numeric(as.character(pagecount$pagecount))
 
  df

}

# These IDs have ambiguous custom page count information in
# extdata/custom_pagecounts.csv - originally filled in by MT ?
#(CU-RivES)N10049
#(CU-RivES)N1050
#(CU-RivES)N17436
#(CU-RivES)N17768
#(CU-RivES)N20672
#(CU-RivES)N21794
#(CU-RivES)N21978
#(CU-RivES)N23065
#(CU-RivES)N33195
#(CU-RivES)N33291
#(CU-RivES)N55726
#(CU-RivES)N5887
#(CU-RivES)N6548
#(CU-RivES)N7427
#(CU-RivES)N7478
#(CU-RivES)N8421
#(CU-RivES)N8859
#(CU-RivES)N8861
#(CU-RivES)T108852
#(CU-RivES)T113058
#(CU-RivES)T114086
#(CU-RivES)T114642
#(CU-RivES)T117016
#(CU-RivES)T117617
#(CU-RivES)T120868
#(CU-RivES)T130115
#(CU-RivES)T134590
#(CU-RivES)T134881
#(CU-RivES)T135878
#(CU-RivES)T143732
#(CU-RivES)T145848
#(CU-RivES)T147520
#(CU-RivES)T147668
#(CU-RivES)T148503
#(CU-RivES)T151989
#(CU-RivES)T161289
#(CU-RivES)T167650
#(CU-RivES)T176260
#(CU-RivES)T177160
#(CU-RivES)T179700
#(CU-RivES)T209641
#(CU-RivES)T63903
#(CU-RivES)T66874
#(CU-RivES)T78970
#(CU-RivES)T78971
#(CU-RivES)T88772
#(CU-RivES)T96525
#(CU-RivES)T99901
#(CU-RivES)N12984
#(CU-RivES)T72016
#(CU-RivES)T72017
#(CU-RivES)T86055
#(CU-RivES)T86056
#(CU-RivES)T86362
#(CU-RivES)W27479
#(CU-RivES)W31466
