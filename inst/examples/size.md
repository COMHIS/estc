---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-04-11"
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


Compare gatherings and page counts. Page count information is originally missing but subsequently estimated for 17326 documents and updated (changed) for 8322 documents. 


![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|2fo           |               516.14|                    528|          59|              407.45|                500.50|       1358|            17.93|                 14|   25193|
|4to           |               425.49|                    492|          47|               72.81|                 20.00|        893|            21.42|                 20|   59678|
|8vo           |               438.77|                    460|         469|              284.30|                290.00|       7331|            28.38|                 28|   68237|
|12long        |               408.00|                    408|           1|               44.40|                 24.00|          6|            24.23|                 24|     133|
|12mo          |               291.85|                    288|         338|              156.98|                155.33|       6913|            25.66|                 24|   16863|
|16mo          |               192.40|                    100|           5|              284.45|                292.00|         49|            25.96|                 28|     476|
|18mo          |               302.67|                    328|          21|              196.89|                201.00|        261|            32.47|                 36|     221|
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




Only cases with 2000 documents are listed here:


|gatherings.original | mean.height| median.height| mean.width| median.width|   n|
|:-------------------|-----------:|-------------:|----------:|------------:|---:|
|1to                 |    41.57143|      41.57143|   29.05882|     29.05882|  28|
|2fo                 |    36.97161|      36.97161|   21.95902|     21.95902| 775|
|4to                 |    21.72989|      21.72989|   18.81250|     18.81250| 522|
|8vo                 |    19.17964|      19.17964|   16.33333|     16.33333| 668|
|12mo                |    15.54717|      15.54717|   12.00000|     12.00000| 107|
|16mo                |    11.04348|      11.04348|   11.00000|     11.00000|  23|
|18mo                |    11.40000|      11.40000|   10.00000|     10.00000|   5|

