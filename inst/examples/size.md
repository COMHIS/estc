---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-03-08"
output: markdown_document
---


## Page counts

[Page conversions from raw data to final page count estimates](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/pagecount_conversion_nontrivial.csv)

<!--[Page conversions from raw data to final page count estimates with volume info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/page_conversion_table_full.csv)-->

[Discarded pagecount info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/pagecount_discarded.csv)



## Document size comparisons

[Dimension conversion table](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/conversions_physical_dimension.csv)

<!--[Discarded dimension info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/dimensions_discarded.csv)-->

Document size (area) info in area is available for 470747 documents (98%). Estimates of document size (area) info in gatherings system are available for 481788 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png)


Compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png)


Compare gatherings and page counts. Page count information is estimated for 0 documents and updated (changed) for 6984 documents. 

![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|1to           |              2.00000|                    2.0|       15913|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|2long         |             98.78947|                   27.0|          38|                  NA|                    NA|         NA|         28.94737|                 24|      19|
|2fo           |             81.08551|                   16.0|       98943|           350.30849|              373.0000|       2995|         28.59928|                 26|   32217|
|4long         |             31.33333|                    8.0|          21|                 NaN|                    NA|          1|         13.14286|                  8|       7|
|4to           |                 -Inf|                   32.0|      101358|            43.26531|               24.0000|       4750|         26.25451|                 24|   35315|
|8long         |            109.58537|                   20.0|          41|            16.00000|               16.0000|          1|         18.37500|                 16|      16|
|8vo           |                 -Inf|                   42.0|      167826|           202.04245|              200.0000|      12304|         26.14394|                 24|   56420|
|12long        |             87.51311|                   24.0|         267|             6.00000|                6.0000|         11|         24.67647|                 24|     136|
|12mo          |            103.98490|                   42.0|       71049|            35.28687|               27.0000|       6498|         25.80403|                 24|   25937|
|16long        |              2.00000|                    2.0|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|16mo          |             87.22574|                   24.0|        2371|            88.17687|               79.0000|        111|         23.95657|                 24|     829|
|18mo          |            129.53698|                   48.0|        2029|           115.20468|              120.0000|        175|         27.27989|                 26|     736|
|24long        |            105.69512|                   30.0|          82|           371.00000|              371.0000|          4|         27.06250|                 24|      32|
|24mo          |            122.68486|                   40.0|        1871|           234.19355|              238.0000|         98|         27.06327|                 26|     648|
|32mo          |            115.32657|                   32.0|         746|           237.54082|              237.5408|         47|         23.49612|                 24|     258|
|48mo          |             91.40476|                   58.5|          23|                  NA|                    NA|         NA|         26.00000|                 18|       5|
|64mo          |            142.16981|                   76.0|         129|            31.00000|               31.0000|          1|         31.87500|                 34|      32|
|NA            |             49.56966|                    2.0|       17047|           156.30515|              150.6667|        383|         23.87176|                 24|    3049|



```
## Error in match.names(clabs, names(xi)): names do not match previous names
```

```
## Error in match.names(clabs, names(xi)): names do not match previous names
```

![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only cases with 2000 documents are listed here:


|gatherings.original | mean.height| median.height| mean.width| median.width|    n|
|:-------------------|-----------:|-------------:|----------:|------------:|----:|
|1to                 |    41.57143|      41.57143|   29.05882|     29.05882|   28|
|2fo                 |    36.95995|      36.95995|   21.95902|     21.95902|  774|
|4to                 |    21.73231|      21.73231|   18.81250|     18.81250|  523|
|8vo                 |    19.17417|      19.17417|   16.33333|     16.33333|  666|
|12mo                |    15.50495|      15.50495|   12.00000|     12.00000|  102|
|16mo                |    10.76190|      10.76190|        NaN|          NaN|   21|
|18mo                |    10.75000|      10.75000|   10.00000|     10.00000|    4|
|NA                  |    29.72224|      29.72224|   23.18723|     23.18723| 6046|

