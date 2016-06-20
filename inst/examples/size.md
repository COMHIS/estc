---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-06-20"
output: markdown_document
---


## Page counts

[Page conversions from raw data to final page count estimates](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/pagecount_conversion_nontrivial.csv)

<!--[Page conversions from raw data to final page count estimates with volume info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/page_conversion_table_full.csv)-->

[Discarded pagecount info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/pagecount_discarded.csv)



## Document size comparisons

[Incomplete dimension info - document surface are could not be estimated](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/physical_dimension_incomplete.csv)

[Dimension conversion table](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/conversions_physical_dimension.csv)


These include estimates that are based on auxiliary information sheets:

  * [Document dimension abbreviations](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/document_size_abbreviations.csv)

  * [Standard sheet size estimates](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/sheetsizes.csv)

  * [Document dimension estimates](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/documentdimensions.csv) (used when information is partially missing)


  
<!--[Discarded dimension info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/dimensions_discarded.csv)-->

Document size (area) info in area is available for 470237 documents (98%). Estimates of document size (area) info in gatherings system are available for 481205 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png)


Compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png)


Compare gatherings and page counts. Page count information is originally missing but subsequently estimated for 15549 documents and updated (changed) for 4279 documents. 


![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|1to           |                   NA|                     NA|          16|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|2long         |                   NA|                     NA|           5|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|2fo           |              1425.62|                1008.00|        1389|              511.85|                500.00|       1093|            38.00|                 38|       2|
|4long         |                  NaN|                     NA|           2|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|4to           |               140.46|                   4.00|        1507|              338.13|                341.17|        180|            25.33|                 32|       3|
|8long         |                15.33|                  15.33|           2|                4.33|                  4.33|          2|               NA|                 NA|      NA|
|8vo           |                 -Inf|                 583.00|        7187|              289.46|                289.50|       7327|            21.33|                 26|       3|
|12long        |                99.43|                  48.00|           7|               44.40|                 24.00|          6|               NA|                 NA|      NA|
|12mo          |               445.85|                 314.00|        6826|              157.93|                155.00|       7028|               NA|                 NA|      NA|
|16mo          |               790.85|                 588.00|          48|              292.04|                292.00|         50|               NA|                 NA|      NA|
|18mo          |               629.04|                 410.00|         254|              200.97|                201.00|        265|               NA|                 NA|      NA|
|24mo          |               738.73|                 545.50|          60|              271.97|                270.75|         58|               NA|                 NA|      NA|
|32mo          |                  NaN|                     NA|           7|                 NaN|                    NA|          1|               NA|                 NA|      NA|
|48mo          |                  NaN|                     NA|           2|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|64mo          |               318.83|                 294.00|           6|              147.17|                147.00|          7|               NA|                 NA|      NA|
|NA            |                30.16|                  17.20|         327|                9.84|                  8.60|        199|               NA|                 NA|      NA|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only the most frequently occurring gatherings are listed here:


|gatherings.original | mean.width| median.width| mean.height| median.height|   n|
|:-------------------|----------:|------------:|-----------:|-------------:|---:|
|1to                 |      29.06|        29.06|       41.57|         41.57|  28|
|2fo                 |      21.96|        21.96|       36.97|         36.97| 775|
|4to                 |      18.81|        18.81|       21.73|         21.73| 522|
|8vo                 |      16.33|        16.33|       19.18|         19.18| 668|
|12mo                |      12.00|        12.00|       15.55|         15.55| 107|
|16mo                |      11.00|        11.00|       11.04|         11.04|  23|
|18mo                |      10.00|        10.00|       11.40|         11.40|   5|

