---
title: "Pagecount preprocessing summary"
author: "Leo Lahti"
date: "2018-01-09"
output: markdown_document
---




## Page counts

  * Page count available for 479670 documents in total (99.9%), including both readily available and estimated page counts.

  * Page count readily available for 460916 documents (96%). 

  * Page count estimated for 18754 documents (3.9%).

  * Page count missing and could not be estimated for 511 documents (0.1%).

  * Page count updated for 5716 documents in the validation phase.
  
  * [Conversions from raw data to final page count estimates](output.tables/pagecount_conversions.csv)

  * [Augmented pagecounts](output.tables/pagecount_discarded.csv) For these cases the page count is missing (or discarded) in the original data, and estimated based on median page counts for [single volume](mean_pagecounts_singlevol.csv), [multi-volume](mean_pagecounts_multivol.csv) and [issues](mean_pagecounts_issue.csv), calculated from those documents where page count info was available.

  * [Automated unit tests for page count conversions](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/tests_polish_physical_extent.csv) - these are used to control that the page count conversions remain correct when changes are made to the cleanup routines



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



### Document size distribution

![plot of chunk pagecountstat](figure/pagecount-pagecountstat-1.png)

Left: Gatherings vs. overall pagecounts (original + estimated). Right: Only the estimated page counts (for the 18754 documents that have missing pagecount info in the original data):

<img src="figure/pagecount-size-estimated-1.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" /><img src="figure/pagecount-size-estimated-2.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" />



## Documents with missing pages over years 

![plot of chunk missingpages](figure/pagecount-missingpages-1.png)![plot of chunk missingpages](figure/pagecount-missingpages-2.png)


## Estimated paper consumption

Note: there are 10931 documents that have some dimension info but sheet area information could not be calculated. 

![plot of chunk paperconsumption](figure/pagecount-paperconsumption-1.png)![plot of chunk paperconsumption](figure/pagecount-paperconsumption-2.png)

![plot of chunk paperconsumption2b](figure/pagecount-paperconsumption2b-1.png)![plot of chunk paperconsumption2b](figure/pagecount-paperconsumption2b-2.png)



![plot of chunk pagecounts-gatherings-relab](figure/pagecount-pagecounts-gatherings-relab-1.png)![plot of chunk pagecounts-gatherings-relab](figure/pagecount-pagecounts-gatherings-relab-2.png)

![plot of chunk paperconsumption2](figure/pagecount-paperconsumption2-1.png)



## Pamphlets vs. Books

![plot of chunk doctypes](figure/pagecount-doctypes-1.png)![plot of chunk doctypes](figure/pagecount-doctypes-2.png)


![plot of chunk doctypes2](figure/pagecount-doctypes2-1.png)![plot of chunk doctypes2](figure/pagecount-doctypes2-2.png)



## Nature of the documents over time

Estimated paper consumption by document size

![plot of chunk 20150611paris-paper6](figure/pagecount-20150611paris-paper6-1.png)


Gatherings height: does it change over time? How increased printing activity is related to book size trends? Alternatively, we could use area (height x width), or median over time. Note that only original (not augmented) dimension info is being used here.

![plot of chunk pagecounts-gatsize](figure/pagecount-pagecounts-gatsize-1.png)![plot of chunk pagecounts-gatsize](figure/pagecount-pagecounts-gatsize-2.png)![plot of chunk pagecounts-gatsize](figure/pagecount-pagecounts-gatsize-3.png)![plot of chunk pagecounts-gatsize](figure/pagecount-pagecounts-gatsize-4.png)


Page counts: does it change over time? Also suggested we could calculate some kind of factor for each time period based on this ? In principle, we could calculate this separately for any given publication place as well but leẗ́s discuss this later. Would help to specify some specific places of interest.

![plot of chunk pagecounts-gatsize2](figure/pagecount-pagecounts-gatsize2-1.png)![plot of chunk pagecounts-gatsize2](figure/pagecount-pagecounts-gatsize2-2.png)![plot of chunk pagecounts-gatsize2](figure/pagecount-pagecounts-gatsize2-3.png)![plot of chunk pagecounts-gatsize2](figure/pagecount-pagecounts-gatsize2-4.png)


Same for documents that have a sufficient number of pages:

![plot of chunk pagecounts-gatsize3](figure/pagecount-pagecounts-gatsize3-1.png)![plot of chunk pagecounts-gatsize3](figure/pagecount-pagecounts-gatsize3-2.png)![plot of chunk pagecounts-gatsize3](figure/pagecount-pagecounts-gatsize3-3.png)![plot of chunk pagecounts-gatsize3](figure/pagecount-pagecounts-gatsize3-4.png)

