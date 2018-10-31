---
title: "Page count summary"
author: "Leo Lahti / Computational History Group"
date: "2018-07-31"
output: markdown_document
---


## ESTC/ECCO comparison


```
## Error in `[<-.data.frame`(`*tmp*`, which(comptab[, "ecco.id"] == "NA"), : replacement has 1 row, data has 0
```

```
## Error in if (is.na(dfs$volcount) & !is.na(dfs$volnumber)) {: argument is of length zero
```

```
## Error in `[.data.frame`(df2, , "publication_year"): undefined columns selected
```

There are 207613 ECCO documents and 207613 have an ESTCID. Some of the ECCO entries refer to the same ESTCID; 4212 ECCO documents have a direct match in ESTC. The number of unique ECCO documents that have ESTC ID  is 184327 and 2.1% of these have a match in ESTC.

Total page count for the matched ESTC documents is 99.5% of the total page count over the same ECCO documents. This quantifies the correspondence between ESTC and ECCO.

Comparison between the page counts available in ESTC and ECCO helps to quantify the accuracy our automated page count cleaning and estimation procedure. Some ESTC page counts are missing in the original data and have been augmented based on predefined estimates for [single volume](mean_pagecounts_singlevol.csv), [multi-volume](mean_pagecounts_multivol.csv) and [issues](mean_pagecounts_issue.csv), calculated from those documents where original page count info is available. In the ESTC/ECCO comparison, where pagecounts are available for both data sets, 4.46% of the pagecounts are based on estimates; pagecount for 0 ESTC documents has been replaced or augmented from ECCO, improving the correlation.


<img src="figure/ecco2-1.png" title="plot of chunk ecco2" alt="plot of chunk ecco2" width="500px" />



