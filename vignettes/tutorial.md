---
title: "ESTC vignette"
author: "Leo Lahti, Niko Ilomaki, Mikko Tolonen"
date: "2017-10-02"
bibliography: 
- bibliography.bib
- references.bib
output: html_document
---
<!--
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteIndexEntry{estc vignette}
  %\usepackage[utf8]{inputenc}
-->

ESTC toolkit for R
===========

This [R package](http://r-project.org/) provides tools to extract and analyse textual annotation fields from the British Library [ESTC library catalogue](http://estc.bl.uk/F/?func=file&file_name=login-bl-estc). Summaries of the ESTC data analysis are linked at the [README file](../README.md)

Your [contributions](http://ropengov.github.com/contact.html), [bug
reports and feedback](https://github.com/ropengov/estc) are welcome!


## Available tools

  * [Installation](#installation)  
  * [Reproducing the ESTC analysis](#preprocessing)  
  * [Analysis tools](#tools)  


## <a name="installation"></a>Installation

We assume you have installed [R](http://www.r-project.org/). If you
use [RStudio](http://www.rstudio.com/ide/download/desktop), change the
default encoding to UTF-8. 

Installing the development version in R:


```r
library(devtools)
install_github("ropengov/estc")
```

Load the ESTC tools


```r
library(estc)
```

Set UTF-8 encoding


```r
Sys.setlocale(locale="UTF-8") 
```

For further help with R, see [this page](Rhelp.md)


## <a name="preprocessing"></a>Reproducing the ESTC analysis

The ESTC data collection is not publicly available at the moment. The
examples assume you have access to this data.

### Parser

We use [MARCdata](https://github.com/rOpenGov/MARCdata) parser to pick selected fields from the source XML files and convert these into a CSV file.


### Analysis

To repeat the analysis, run [main.R](../inst/examples/main.R). This
will execute the complete analysis from raw data to the final summary
documents. It has two main parts:

 * [preprocessing.R](../inst/examples/preprocessing.R) loads and
   preprocesses the parsed SQL data tables. It cleans up the raw data
   fields with the support of various synonyme and mapping lists, and
   publicly available data sources (check the source code for full
   details). This produces the final preprocessed data matrix that can
   be used for further analysis. This data is confidential so we
   cannot share it here. 

 * [analysis.R](../inst/examples/analysis.R) reads and analyzes the
   final preprocessed data table, and produces the final statistical
   summaries and visualizations of the data. These include several
   [markdown (.md) files](../inst/examples/) listed in the [README
   file](https://github.com/rOpenGov/estc).



## <a name="tools"></a>Tools

Some examples of the ESTC-specific analysis tools provided in this
package are listed below.

### Harmonizing manual fields data

Harmonize publisher information:


```r
polish_publisher(c("printed by John Marshall, at No. 4, Bow-Lane", 
		   "printed and sold by John Marshall, Aldermary Church Yard"))
```

```
## [1] "printed by John Marshall, at No. 4, Bow-Lane"            
## [2] "printed and sold by John Marshall, Aldermary Church Yard"
```

Mapping places to countries


```r
get_country(c("Middelburg", "Newcastle"))
```

```
## [1] "Netherlands" "England"
```

Gender information


```r
get_gender(c("margaret"))
```

```
## Error in tolower(gendermap$name): argument "gendermap" is missing, with no default
```


## Related work

Whereas this package focuses on the ESTC data, it utilizes additional
tools from the more generic
[bibliographica](https://github.com/rOpenGov/bibliographica) and many
other R packages.


## Licensing and Citations

This work can be freely used, modified and distributed under the 
[Two-clause BSD license](http://en.wikipedia.org/wiki/BSD\_licenses).


```r
citation("estc")
```

```
## 
## Kindly cite the estc R package as follows:
## 
##   (C) Leo Lahti, Niko Ilomaki, Mikko Tolonen estc: R Toolkit for
##   ESTC Data Collection URL: http://github.com/ropengov/estc
## 
## A BibTeX entry for LaTeX users is
## 
##   @Misc{,
##     title = {estc: R Toolkit for ESTC Data Collection},
##     author = {Leo Lahti and Niko Ilomaki and Mikko Tolonen},
##     year = {2014},
##   }
```

## Session info

This vignette was created with


```r
sessionInfo()
```

```
## R version 3.3.2 (2016-10-31)
## Platform: x86_64-pc-linux-gnu (64-bit)
## Running under: Ubuntu 17.04
## 
## locale:
##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
##  [3] LC_TIME=de_BE.UTF-8        LC_COLLATE=en_US.UTF-8    
##  [5] LC_MONETARY=de_BE.UTF-8    LC_MESSAGES=en_US.UTF-8   
##  [7] LC_PAPER=de_BE.UTF-8       LC_NAME=C                 
##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
## [11] LC_MEASUREMENT=de_BE.UTF-8 LC_IDENTIFICATION=C       
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## other attached packages:
## [1] estc_0.1.45           stringr_1.2.0         bibliographica_0.2.31
## [4] knitr_1.17           
## 
## loaded via a namespace (and not attached):
##  [1] Rcpp_0.12.13       bindr_0.1          magrittr_1.5      
##  [4] munsell_0.4.3      tm_0.7-1           colorspace_1.3-2  
##  [7] rjson_0.2.15       R6_2.2.2           rlang_0.1.2.9000  
## [10] plyr_1.8.4         dplyr_0.7.4        tools_3.3.2       
## [13] babynames_0.3.0    parallel_3.3.2     grid_3.3.2        
## [16] data.table_1.10.4  gtable_0.2.0       genderdata_0.5.0  
## [19] lazyeval_0.2.0     assertthat_0.2.0   tibble_1.3.4      
## [22] NLP_0.1-11         bindrcpp_0.2       purrr_0.2.3       
## [25] tidyr_0.7.1        reshape2_1.4.2     ggplot2_2.2.1     
## [28] stringdist_0.9.4.6 slam_0.1-40        glue_1.1.1        
## [31] evaluate_0.10.1    stringi_1.1.5      gender_0.5.1      
## [34] scales_0.5.0       pkgconfig_2.0.1
```
