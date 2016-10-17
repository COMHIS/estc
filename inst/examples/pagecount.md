---
title: "Pagecount preprocessing summary"
author: "Leo Lahti"
date: "2016-10-17"
output: markdown_document
---




## Page counts

  * Page count missing and estimated for 15214 documents (3.2%).

  * Page count missing and could not be estimated for 2497 documents (0.5%).

  * Page count updated for 0 documents.
  
  * [Conversions from raw data to final page count estimates](output.tables/pagecount_conversion_nontrivial.csv)

<!--[Page conversions from raw data to final page count estimates with volume info](output.tables/page_conversion_table_full.csv)-->

  * [Discarded pagecount info](output.tables/pagecount_discarded.csv) For these cases the missing/discarded page count was estimated based on average page count estimates for [single volume](mean_pagecounts_singlevol.csv), [multi-volume](mean_pagecounts_multivol.csv) and [issues](mean_pagecounts_issue.csv), calculated from those documents where original pagecount info is available.

  * [Automated tests for page count conversions](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/tests_polish_physical_extent.csv)


Left: Gatherings vs. overall pagecounts (original + estimated). Right: Only the estimated page counts (for the 15214 documents that have missing pagecount info in the original data):

<img src="figure/pagecount-size-estimated-1.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" /><img src="figure/pagecount-size-estimated-2.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" />


<!--

## Average page counts (only works in CERL now)

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|2fo           |               115.31|                   93.5|       95218|               89.55|                  2.00|       1046|            17.02|               2.00|     257|
|4long         |                  NaN|                     NA|          22|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|4to           |               121.14|                  108.0|      100609|                  NA|                    NA|         NA|            27.26|               1.63|     162|
|8long         |                  NaN|                     NA|          40|                3.00|                  3.00|          1|               NA|                 NA|      NA|
|8vo           |                71.79|                    5.0|      160914|               27.96|                  2.00|       6833|            10.87|               1.05|     392|
|12long        |               226.00|                  226.0|         260|               42.00|                 18.00|          5|            18.00|              18.00|       4|
|12mo          |               550.91|                  552.5|       64057|               13.80|                  1.33|       6713|            10.63|               1.33|      94|
|16long        |                  NaN|                     NA|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|16mo          |                  NaN|                     NA|        2340|               19.59|                  2.00|         45|               NA|                 NA|      NA|
|18mo          |                  NaN|                     NA|        1757|                7.02|                  1.33|        245|             0.50|               0.33|       8|
|24long        |                  NaN|                     NA|          82|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|24mo          |                  NaN|                     NA|        1815|               10.85|                  1.00|         55|             1.00|               1.00|       2|
|32mo          |                  NaN|                     NA|         744|                2.00|                  2.00|          7|             2.00|               2.00|       1|
|48mo          |                  NaN|                     NA|          21|                 NaN|                    NA|          2|               NA|                 NA|      NA|
|64mo          |                  NaN|                     NA|         123|              147.17|                147.00|          6|               NA|                 NA|      NA|
|NA            |                  NaN|                     NA|       16763|                2.48|                  1.33|        199|             1.04|               1.03|     116|
|1to           |                   NA|                     NA|          NA|                  NA|                    NA|         NA|              NaN|                 NA|      10|
|2long         |                   NA|                     NA|          NA|                  NA|                    NA|         NA|              NaN|                 NA|       1|

![plot of chunk size-pagecountsmulti2](figure/pagecount-size-pagecountsmulti2-1.png)

-->
