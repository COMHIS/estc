---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-04-14"
output: markdown_document
---


## Page counts

[Page conversions from raw data to final page count estimates](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/pagecount_conversion_nontrivial.csv)

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


Compare gatherings and page counts. Page count information is originally missing but subsequently estimated for 17329 documents and updated (changed) for 8323 documents. 


![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|2fo           |               516.07|                    528|          59|              406.54|                500.00|       1359|            17.93|                 14|   25202|
|4to           |               425.15|                    492|          47|               72.67|                 20.00|        895|            21.42|                 20|   59685|
|8vo           |               438.65|                    460|         469|              284.24|                290.00|       7336|            28.37|                 28|   68255|
|12long        |               408.00|                    408|           1|               44.40|                 24.00|          6|            24.23|                 24|     133|
|12mo          |               290.77|                    288|         338|              156.94|                155.17|       6903|            25.67|                 24|   16865|
|16mo          |               192.40|                    100|           5|              284.45|                292.00|         49|            25.97|                 28|     475|
|18mo          |               302.67|                    328|          21|              196.89|                201.00|        261|            32.45|                 36|     220|
|24mo          |                74.67|                     48|           3|              270.75|                270.75|         59|            31.11|                 24|     666|
|32mo          |                64.00|                     64|           1|                 NaN|                    NA|          1|            31.39|                 32|     199|
|64mo          |               128.00|                    128|           1|              147.17|                147.00|          7|            30.00|                 32|      30|
|NA            |                94.00|                     94|           1|               15.68|                 12.88|        247|            24.00|                 23|    3716|
|2long         |                   NA|                     NA|          NA|               22.00|                 22.00|          5|            21.92|                 22|      13|
|8long         |                   NA|                     NA|          NA|                1.33|                  1.33|          1|            20.00|                 16|       4|
|4long         |                   NA|                     NA|          NA|                  NA|                    NA|         NA|            22.25|                 20|       8|
|24long        |                   NA|                     NA|          NA|                  NA|                    NA|         NA|            40.93|                 44|      15|
|48mo          |                   NA|                     NA|          NA|                  NA|                    NA|         NA|            34.00|                 32|       9|


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

