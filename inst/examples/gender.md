---
title: "Gender preprocessing overview"
author: "Leo Lahti"
date: "2016-03-05"
output: markdown_document
---

### Gender

[Female authors](output.tables/gender_female.csv)

[Male authors](output.tables/gender_male.csv)

[Authors with missing gender](output.tables/gender_unknown.csv)


<img src="figure/summary-authorgenders-1.png" title="plot of chunk summary-authorgenders" alt="plot of chunk summary-authorgenders" width="280px" /><img src="figure/summary-authorgenders-2.png" title="plot of chunk summary-authorgenders" alt="plot of chunk summary-authorgenders" width="280px" /><img src="figure/summary-authorgenders-3.png" title="plot of chunk summary-authorgenders" alt="plot of chunk summary-authorgenders" width="280px" />



Author gender distribution in the complete data:


|author_gender |   docs| fraction|
|:-------------|------:|--------:|
|female        |   8904|     1.84|
|male          | 227163|    47.00|
|NA            | 247277|    51.16|

Author gender distribution over time. Note that the name-gender mappings change over time. This has not been taken into account yet.


![plot of chunk summarygendertime](figure/summarygendertime-1.png)


