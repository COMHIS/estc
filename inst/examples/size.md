---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-04-05"
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


Compare gatherings and page counts. Page count information is originally missing but subsequently estimated for 25626 documents and updated (changed) for 7004 documents. 


![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|2fo           |               417.46|                    416|         197|              350.40|                373.00|       3006|            28.92|                 28|   31798|
|4long         |               338.00|                    338|           1|                 NaN|                    NA|          1|            12.00|                  8|       9|
|4to           |               446.34|                    442|         890|               43.23|                 24.00|       4755|            26.24|                 24|   35424|
|8vo           |               396.59|                    402|         704|              202.01|                200.00|      12326|            25.80|                 24|   54698|
|12mo          |               384.29|                    396|         181|               35.29|                 27.00|       6500|            25.45|                 24|   24937|
|16mo          |               356.77|                    332|          13|               88.18|                 79.00|        111|            23.90|                 24|     725|
|18mo          |               516.00|                    526|           4|              115.15|                120.00|        174|            26.98|                 24|     719|
|24long        |               136.00|                    136|           1|              371.00|                371.00|          4|            27.35|                 24|      31|
|24mo          |               360.40|                    300|           5|              234.27|                238.00|        100|            26.06|                 24|     578|
|32mo          |               257.50|                    300|           4|              237.54|                237.54|         47|            22.96|                 24|     242|
|NA            |               498.20|                    572|          41|              156.29|                150.67|        385|            22.61|                 24|    3326|
|8long         |                   NA|                     NA|          NA|               16.00|                 16.00|          1|            18.38|                 16|      16|
|12long        |                   NA|                     NA|          NA|                6.00|                  6.00|         14|            24.79|                 24|     134|
|64mo          |                   NA|                     NA|          NA|               31.00|                 31.00|          1|            28.15|                 30|      26|
|2long         |                   NA|                     NA|          NA|                  NA|                    NA|         NA|            27.90|                 24|      20|
|48mo          |                   NA|                     NA|          NA|                  NA|                    NA|         NA|            26.00|                 18|       5|


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

