---
title: "Pagecount preprocessing summary"
author: "Leo Lahti"
date: "2016-12-25"
output: markdown_document
---




## Page counts

  * Page count available for 474088 documents in total (98.7%), including both readily available and estimated page counts.

  * Page count readily available for 460963 documents (96%). 

  * Page count estimated for 13125 documents (2.7%).

  * Page count missing and could not be estimated for 6191 documents (1.3%).

  * Page count updated for 5368 documents in the validation phase.
  
  * [Conversions from raw data to final page count estimates](output.tables/pagecount_conversions.csv)

  * [Augmented pagecounts](output.tables/pagecount_discarded.csv) For these cases the page count is missing (or discarded) in the original data, and estimated based on median page counts for [single volume](mean_pagecounts_singlevol.csv), [multi-volume](mean_pagecounts_multivol.csv) and [issues](mean_pagecounts_issue.csv), calculated from those documents where page count info was available.

  * [Automated unit tests for page count conversions](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/tests_polish_physical_extent.csv) - these are used to control that the page count conversions remain correct when changes are made to the cleanup routines


Left: Gatherings vs. overall pagecounts (original + estimated). Right: Only the estimated page counts (for the 13125 documents that have missing pagecount info in the original data):

<img src="figure/pagecount-size-estimated-1.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" /><img src="figure/pagecount-size-estimated-2.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" />



## Average page counts

Mean and median page counts calculated based on the documents where
the page count information was readily available. Also see the
correponding numerical tables with page count estimates:

 * [Single volume](mean_pagecounts_singlevol.csv)
 * [Multi-volume](mean_pagecounts_multivol.csv)
 * [Issue](mean_pagecounts_issue.csv)

These estimates are used to fill in page count info for the remaining
documents where page count info is missing.

The multi-volume documents average page counts are given per volume.

The page count estimates are calculated without plates. Plate
information is added separately for each document on top of the page
count estimate.



![plot of chunk size-pagecountsmulti2](figure/pagecount-size-pagecountsmulti2-1.png)


