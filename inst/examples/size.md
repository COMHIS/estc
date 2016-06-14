---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-06-14"
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

Document size (area) info in area is available for 48127 documents (96%). Estimates of document size (area) info in gatherings system are available for 50288 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png)


Compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png)


Compare gatherings and page counts. Page count information is originally missing but subsequently estimated for 1139 documents and updated (changed) for 569 documents. 


![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|1to           |                   NA|                     NA|           8|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|2long         |                   NA|                     NA|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|2fo           |              1966.02|                   1440|         319|              721.85|                 716.0|        224|               NA|                 NA|      NA|
|4long         |                  NaN|                     NA|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|4to           |                54.53|                      4|         562|              354.07|                 418.5|         20|               20|                 20|       2|
|8vo           |               932.96|                    632|        1129|              308.96|                 312.0|       1149|               30|                 30|       1|
|12long        |                72.00|                     72|           1|               24.00|                  24.0|          1|               NA|                 NA|      NA|
|12mo          |               650.17|                    423|         418|              212.13|                 207.5|        423|               NA|                 NA|      NA|
|16mo          |                  NaN|                     NA|           3|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|18mo          |               390.50|                    350|           4|              174.00|                 174.0|          3|               NA|                 NA|      NA|
|24mo          |                  NaN|                     NA|           3|                 NaN|                    NA|          2|               NA|                 NA|      NA|
|NA            |                36.07|                     43|          16|                9.40|                   8.6|         10|               43|                 43|       4|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only the most frequently occurring gatherings are listed here:


|gatherings.original | mean.width| median.width| mean.height| median.height|   n|
|:-------------------|----------:|------------:|-----------:|-------------:|---:|
|1to                 |      24.50|        24.50|       36.67|         36.67|   3|
|2fo                 |      21.82|        21.82|       39.00|         39.00| 376|
|4to                 |      20.50|        20.50|       21.49|         21.49| 304|
|8vo                 |        NaN|          NaN|       20.81|         20.81| 188|
|12mo                |      12.00|        12.00|       15.14|         15.14|  15|

