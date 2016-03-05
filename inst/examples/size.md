---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-03-05"
output: markdown_document
---


## Page counts

[Page conversions from raw data to final page count estimates](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/pagecount_conversion_nontrivial.csv)

<!--[Page conversions from raw data to final page count estimates with volume info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/page_conversion_table_full.csv)-->

[Discarded pagecount info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/pagecount_discarded.csv)



## Document size comparisons

[Dimension conversion table](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/conversions_physical_dimension.csv)

<!--[Discarded dimension info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/dimensions_discarded.csv)-->

Document size (area) info in area is available for 472075 documents (98%). Estimates of document size (area) info in gatherings system are available for 483344 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png)


Compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png)


Compare gatherings and page counts. Page count information is estimated for 0 documents and updated (changed) for 6993 documents. 

![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|1to           |              2.00000|                    2.0|       15961|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|2long         |             96.46154|                   24.0|          39|                  NA|                    NA|         NA|         27.90000|                 24|      20|
|2fo           |             80.94059|                   14.0|       99414|           350.35705|              373.0000|       3001|         28.43295|                 24|   32533|
|4long         |             29.30435|                    8.0|          23|                 NaN|                    NA|          1|         12.00000|                  8|       9|
|4to           |                 -Inf|                   32.0|      101597|            43.19762|               24.0000|       4762|         26.23049|                 24|   35438|
|8long         |            107.02381|                   20.0|          42|            16.00000|               16.0000|          1|         18.37500|                 16|      16|
|8vo           |                 -Inf|                   42.0|      168047|           202.08496|              200.0000|      12323|         26.13895|                 24|   56517|
|12long        |             86.44118|                   24.0|         272|             6.00000|                6.0000|         14|         24.76812|                 24|     138|
|12mo          |            103.94545|                   42.0|       71143|            35.28031|               27.0000|       6503|         25.80112|                 24|   25980|
|16long        |              2.00000|                    2.0|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|16mo          |             87.12956|                   24.0|        2386|            88.17687|               79.0000|        111|         23.94718|                 24|     833|
|18mo          |            129.27841|                   48.0|        2034|           115.20468|              120.0000|        175|         27.29459|                 26|     740|
|24long        |            104.44578|                   28.0|          83|           371.00000|              371.0000|          4|         27.06250|                 24|      32|
|24mo          |            122.61218|                   40.0|        1874|           234.19355|              238.0000|         98|         27.07704|                 26|     649|
|32mo          |            115.11268|                   32.0|         751|           237.54082|              237.5408|         47|         23.48659|                 24|     261|
|48mo          |             91.40476|                   58.5|          23|                  NA|                    NA|         NA|         26.00000|                 18|       5|
|64mo          |            145.02804|                   76.0|         130|            31.00000|               31.0000|          1|         31.87500|                 34|      32|
|NA            |             48.78495|                    2.0|       17480|           156.30515|              150.6667|        384|         22.63010|                 24|    3336|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only cases with 2000 documents are listed here:


|gatherings.original | mean.height| median.height| mean.width| median.width|    n|
|:-------------------|-----------:|-------------:|----------:|------------:|----:|
|1to                 |    41.96552|      41.96552|   29.05882|     29.05882|   29|
|2fo                 |    36.87189|      36.87189|   21.95902|     21.95902|  843|
|4to                 |    21.77656|      21.77656|   18.81250|     18.81250|  546|
|8vo                 |    19.23684|      19.23684|   16.33333|     16.33333|  684|
|12mo                |    15.50485|      15.50485|   12.00000|     12.00000|  104|
|16mo                |    10.76190|      10.76190|        NaN|          NaN|   21|
|18mo                |    10.75000|      10.75000|   10.00000|     10.00000|    4|
|NA                  |    30.01784|      30.01784|   23.17109|     23.17109| 6252|

