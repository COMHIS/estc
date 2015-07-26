---
title: "ESTC vignette"
author: "Leo Lahti, Niko Ilomaki, Mikko Tolonen"
date: "2015-04-24"
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

[Installation](#installation) 
[Reproducing the ESTC analysis](#preprocessing) 
[Analysis tools](#tools) 


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
examples assume you have access to this data. To repeat the complete
analysis, run [main.R](../inst/examples/main.R). This will execute the
complete analysis from raw data to the final summary documents. It has
two main parts:

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
## $original
## [1] "printed by John Marshall, at No. 4, Bow-Lane"            
## [2] "printed and sold by John Marshall, Aldermary Church Yard"
## 
## $printedfor
## [1] NA NA
## 
## $printedby
## [1] "John Marshall" "John Marshall"
## 
## $rest
## [1] NA NA
```

Mapping places to countries


```r
get_country(c("Middelburg", "Newcastle"))
```

```
##       region     country
## 1 Middelburg Netherlands
## 2  Newcastle     England
```

Gender information


```r
get_gender(c("margaret"))
```

```
## [1] "female"
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
## R version 3.2.0 (2015-04-16)
## Platform: x86_64-unknown-linux-gnu (64-bit)
## Running under: Ubuntu 14.10
## 
## locale:
##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
##  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
##  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
##  [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
## [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## other attached packages:
## [1] rmarkdown_0.5.1       estc_0.1.30           bibliographica_0.1.30
## [4] stringr_0.6.2         knitr_1.9            
## 
## loaded via a namespace (and not attached):
##  [1] Rcpp_0.11.5      magrittr_1.5     devtools_1.7.0   MASS_7.3-40     
##  [5] munsell_0.4.2    colorspace_1.2-6 httr_0.6.1       plyr_1.8.2      
##  [9] dplyr_0.4.1      tools_3.2.0      parallel_3.2.0   grid_3.2.0      
## [13] gtable_0.1.2     DBI_0.3.1        htmltools_0.2.6  yaml_2.1.13     
## [17] lazyeval_0.1.10  assertthat_0.1   digest_0.6.8     reshape2_1.4.1  
## [21] ggplot2_1.0.1    formatR_1.2      evaluate_0.7     gender_0.4.3    
## [25] scales_0.2.4     jsonlite_0.9.16  proto_0.3-10
```
