---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-05-26"
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

Document size (area) info in area is available for 449365 documents (98%). Estimates of document size (area) info in gatherings system are available for 459644 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png)


Compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png)


Compare gatherings and page counts. Page count information is originally missing but subsequently estimated for 15465 documents and updated (changed) for 3940 documents. 


![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|1to           |                   NA|                     NA|          15|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|2long         |                   NA|                     NA|           5|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|2fo           |              1396.40|                1004.00|        1200|              347.06|                500.00|       1156|            38.32|                 38|      38|
|4long         |                  NaN|                     NA|           2|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|4to           |               222.65|                  64.00|        1315|               81.64|                 32.00|        801|            31.84|                 32|     128|
|8long         |                15.33|                  15.33|           2|                4.33|                  4.33|          2|               NA|                 NA|      NA|
|8vo           |                 -Inf|                 584.00|        6576|              276.68|                290.00|       6848|            25.12|                 26|      16|
|12long        |               168.00|                 226.00|           3|              138.00|                138.00|          2|               NA|                 NA|      NA|
|12mo          |               442.80|                 314.00|        6490|              157.89|                155.00|       6701|               NA|                 NA|      NA|
|16mo          |               748.13|                 584.00|          46|              292.05|                292.00|         48|               NA|                 NA|      NA|
|18mo          |               653.17|                 424.00|         227|              202.62|                201.00|        241|               NA|                 NA|      NA|
|24mo          |               749.08|                 543.50|          57|              271.94|                270.75|         56|               NA|                 NA|      NA|
|32mo          |                  NaN|                     NA|           5|                 NaN|                    NA|          1|               NA|                 NA|      NA|
|48mo          |                  NaN|                     NA|           2|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|64mo          |               318.83|                 294.00|           6|              147.17|                147.00|          7|               NA|                 NA|      NA|
|NA            |                31.30|                  17.20|         288|                9.86|                  8.60|        182|               NA|                 NA|      NA|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only the most frequently occurring gatherings are listed here:


|gatherings.original | mean.width| median.width| mean.height| median.height|   n|
|:-------------------|----------:|------------:|-----------:|-------------:|---:|
|1to                 |      29.69|        29.69|       41.81|         41.81|  27|
|2fo                 |      21.99|        21.99|       36.97|         36.97| 731|
|4to                 |      18.93|        18.93|       21.72|         21.72| 509|
|8vo                 |      11.00|        11.00|       19.30|         19.30| 625|
|12mo                |      12.00|        12.00|       15.48|         15.48| 101|
|16mo                |      11.00|        11.00|       11.33|         11.33|  18|

