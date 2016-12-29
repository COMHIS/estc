---
title: "Page count summary"
author: "Leo Lahti"
date: "2016-12-29"
output: markdown_document
---


## ESTC/ECCO comparison



There are 154499 ECCO documents with a direct match in ESTC in our data based on the system control number. This includes duplicates. The number of unique ECCO documents is 136168 and 99.8% of these have a match in ESTC. The total page count for the matched ESTC documents is 98.1% of the total page count over the same ECCO documents.

Comparison between the page counts available in ESTC and ECCO helps to quantify the accuracy our automated page count cleaning and estimation procedure. Some ESTC page counts are missing in the original data and have been augmented based on predefined estimates for [single volume](mean_pagecounts_singlevol.csv), [multi-volume](mean_pagecounts_multivol.csv) and [issues](mean_pagecounts_issue.csv), calculated from those documents where original page count info is available. In the ESTC/ECCO comparison, where pagecounts are available for both data sets, 4.53% of the pagecounts are based on estimates.

<img src="figure/ecco2-1.png" title="plot of chunk ecco2" alt="plot of chunk ecco2" width="500px" />



