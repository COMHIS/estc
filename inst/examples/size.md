---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-04-02"
output: markdown_document
---


## Page counts

[Page conversions from raw data to final page count estimates](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/pagecount_conversion_nontrivial.csv)

<!--[Page conversions from raw data to final page count estimates with volume info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/page_conversion_table_full.csv)-->

[Discarded pagecount info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/pagecount_discarded.csv)



## Document size comparisons

[Incomplete dimension info - document surface are could not be estimated](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/physical_dimension_incomplete.csv)

[Dimension conversion table](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/conversions_physical_dimension.csv)


<!--[Discarded dimension info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/dimensions_discarded.csv)-->

Document size (area) info in area is available for 472005 documents (98%). Estimates of document size (area) info in gatherings system are available for 483212 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png)


Compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png)


Compare gatherings and page counts. Page count information is estimated for 0 documents and updated (changed) for 7004 documents. 

![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|2fo           |             417.4619|                    416|         197|           350.39735|              373.0000|       3006|         28.91745|                 28|   31798|
|4long         |             338.0000|                    338|           1|                 NaN|                    NA|          1|         12.00000|                  8|       9|
|4to           |             446.3382|                    442|         890|            43.23175|               24.0000|       4755|         26.23919|                 24|   35424|
|8vo           |             396.5909|                    402|         704|           202.01073|              200.0000|      12326|         25.80434|                 24|   54698|
|12mo          |             384.2873|                    396|         181|            35.28788|               27.0000|       6500|         25.45074|                 24|   24937|
|16mo          |             356.7692|                    332|          13|            88.17687|               79.0000|        111|         23.90345|                 24|     725|
|18mo          |             516.0000|                    526|           4|           115.15000|              120.0000|        174|         26.98192|                 24|     719|
|24long        |             136.0000|                    136|           1|           371.00000|              371.0000|          4|         27.35484|                 24|      31|
|24mo          |             360.4000|                    300|           5|           234.27368|              238.0000|        100|         26.06401|                 24|     578|
|32mo          |             257.5000|                    300|           4|           237.54082|              237.5408|         47|         22.95868|                 24|     242|
|NA            |             498.1951|                    572|          41|           156.28876|              150.6667|        385|         22.60974|                 24|    3326|
|8long         |                   NA|                     NA|          NA|            16.00000|               16.0000|          1|         18.37500|                 16|      16|
|12long        |                   NA|                     NA|          NA|             6.00000|                6.0000|         14|         24.79104|                 24|     134|
|64mo          |                   NA|                     NA|          NA|            31.00000|               31.0000|          1|         28.15385|                 30|      26|
|2long         |                   NA|                     NA|          NA|                  NA|                    NA|         NA|         27.90000|                 24|      20|
|48mo          |                   NA|                     NA|          NA|                  NA|                    NA|         NA|         26.00000|                 18|       5|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only cases with 2000 documents are listed here:


|gatherings.original | mean.height| median.height| mean.width| median.width|   n|
|:-------------------|-----------:|-------------:|----------:|------------:|---:|
|1to                 |    41.96552|      41.96552|   29.05882|     29.05882|  29|
|2fo                 |    36.87189|      36.87189|   21.95902|     21.95902| 843|
|4to                 |    21.77248|      21.77248|   18.81250|     18.81250| 545|
|8vo                 |    19.23684|      19.23684|   16.33333|     16.33333| 684|
|12mo                |    15.53211|      15.53211|   12.00000|     12.00000| 110|
|16mo                |    11.04348|      11.04348|   11.00000|     11.00000|  23|
|18mo                |    11.40000|      11.40000|   10.00000|     10.00000|   5|

