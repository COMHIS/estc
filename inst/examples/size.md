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

Document size (area) info in area is available for 465935 documents (98%). Estimates of document size (area) info in gatherings system are available for 476897 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png)


Compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png)


Compare gatherings and page counts. Page count information is estimated for 0 documents and updated (changed) for 7769 documents. 

![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|1to           |              2.00000|                      2|       15708|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|2long         |            135.52632|                     48|          38|            34.00000|                 34.00|          1|         32.26667|                 34|      15|
|2fo           |             95.49214|                     18|       97837|           453.22441|                470.00|       3016|         30.99573|                 32|   29272|
|4long         |             74.09091|                     13|          22|                  NA|                    NA|         NA|         17.50000|                 19|       4|
|4to           |                 -Inf|                     24|      100556|            57.76659|                 24.00|       4324|         24.30708|                 24|   38143|
|8long         |            105.97368|                     32|          41|            32.00000|                 32.00|          1|         29.31250|                 32|      16|
|8vo           |                 -Inf|                     40|      166145|           169.06191|                171.00|      11340|         25.57883|                 24|   58699|
|12long        |            113.45283|                     88|         265|            96.61765|                 96.00|         18|         26.01389|                 25|      72|
|12mo          |                 -Inf|                     40|       70635|           123.84208|                124.00|       6355|         25.51603|                 24|   26766|
|16long        |            372.00000|                    372|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|16mo          |            113.42725|                     28|        2371|           159.62236|                168.00|        121|         24.43398|                 24|     871|
|18mo          |            163.38380|                     44|        2018|           315.59455|                325.25|        165|         28.25341|                 30|     734|
|24long        |             85.84211|                     28|          81|                  NA|                    NA|         NA|         18.72727|                 16|      22|
|24mo          |            121.43830|                     36|        1867|           250.91026|                261.00|         82|         25.23572|                 24|     683|
|32mo          |            198.00402|                     34|         747|           510.51852|                529.00|         54|         27.88686|                 31|     274|
|48mo          |             48.05263|                     26|          22|                  NA|                    NA|         NA|         22.60000|                 25|      10|
|64mo          |             72.29126|                      8|         124|             8.00000|                  8.00|          2|         17.17857|                  8|      56|
|NA            |             62.86756|                      2|       16974|           274.43980|                274.00|        393|         25.29306|                 24|    2665|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only cases with 2000 documents are listed here:


|gatherings.original | mean.height| median.height| mean.width| median.width|    n|
|:-------------------|-----------:|-------------:|----------:|------------:|----:|
|1to                 |    41.57143|      41.57143|   29.05882|     29.05882|   28|
|2fo                 |    36.95731|      36.95731|   21.95902|     21.95902|  773|
|4to                 |    21.73231|      21.73231|   18.81250|     18.81250|  523|
|8vo                 |    19.16992|      19.16992|   16.33333|     16.33333|  665|
|12mo                |    15.50495|      15.50495|   12.00000|     12.00000|  102|
|16mo                |    10.76190|      10.76190|        NaN|          NaN|   21|
|18mo                |    10.75000|      10.75000|   10.00000|     10.00000|    4|
|NA                  |    29.71811|      29.71811|   23.19617|     23.19617| 6032|

