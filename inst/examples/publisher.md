---
title: "Publisher preprocessing summary"
author: "Leo Lahti"
date: "2016-07-26"
output: markdown_document
---


### Publishers

 * 1 [unique publishers](output.tables/publisher_accepted.csv)

 * 0 documents have unambiguous publisher information (0%). 

 * [Discarded publisher entries](output.tables/publisher_discarded.csv)

 * [Conversions from original to final names](output.tables/publisher_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common publishers are shown with the number of documents. 


```
## Error in dfs$names: $ operator is invalid for atomic vectors
```

![plot of chunk summarypublisher2](figure/summarypublisher2-1.png)

### Publication timeline for top publishers

Title count


```
## Warning: Unknown column 'PANEL'
```

![plot of chunk summaryTop10pubtimeline](figure/summaryTop10pubtimeline-1.png)



Title count versus paper consumption (top publishers):

![plot of chunk publishertitlespapers](figure/publishertitlespapers-1.png)

|publisher | titles|paper |
|:---------|------:|:-----|


