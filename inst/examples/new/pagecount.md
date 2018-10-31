---
title: "Pagecount preprocessing summary"
author: "Leo Lahti / Computational History Group"
date: "2018-07-31"
output: markdown_document
---




## Page counts

  * Page count available for 9968 documents in total (99.7%), including both readily available and estimated page counts.

  * Page count readily available for 9584 documents (95.8%). 

  * Page count estimated for 384 documents (3.8%).

  * Page count missing and could not be estimated for 32 documents (0.3%).

  * Page count updated for 117 documents in the validation phase.
  
  * [Conversions from raw data to final page count estimates](output.tables/pagecount_conversions.csv)

  * [Augmented pagecounts](output.tables/pagecount_discarded.csv) For these cases the page count is missing (or discarded) in the original data, and estimated based on median page counts for [single volume](mean_pagecounts_singlevol.csv), [multi-volume](mean_pagecounts_multivol.csv) and [issues](mean_pagecounts_issue.csv), calculated from those documents where page count info was available.

  * [Automated unit tests for page count conversions](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/tests_polish_physical_extent.csv) - these are used to control that the page count conversions remain correct when changes are made to the cleanup routines



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

Left: Gatherings vs. overall pagecounts (original + estimated). Right: Only the estimated page counts (for the 384 documents that have missing pagecount info in the original data):


```
## Error in grouped_indices_grouped_df_impl(.data): Column `pagecount` is unknown
```

```
## Error in FUN(X[[i]], ...): object 'documents' not found
```

<img src="figure/pagecount-size-estimated-1.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" />



## Documents with missing pages over years 


```
## Error in grouped_df_impl(data, unname(vars), drop): Column `publication_decade` is unknown
```

```
## Error in `$<-.data.frame`(`*tmp*`, na, value = logical(0)): replacement has 0 rows, data has 9616
```

```
## Error in FUN(X[[i]], ...): object 'na' not found
```

```
## Error in grouped_df_impl(data, unname(vars), drop): Column `publication_decade` is unknown
```

```
## Error in df2b$na[df2b$na == 0] <- NA: object 'df2b' not found
```

```
## Error in ggplot(df2b, aes(x = publication_decade, y = gatherings, size = na)): object 'df2b' not found
```

```
## Error in na.omit(df2b$na): object 'df2b' not found
```

```
## Error in FUN(X[[i]], ...): object 'na' not found
```

![plot of chunk missingpages](figure/pagecount-missingpages-1.png)


## Estimated paper consumption

Note: there are 0 documents that have some dimension info but sheet area information could not be calculated. 


```
## Error in grouped_df_impl(data, unname(vars), drop): Column `publication_year` is unknown
```

```
## Error in arrange_impl(.data, dots): incorrect size (1) at position 1, expecting : 9616
```

```
## Error in FUN(X[[i]], ...): object 'na' not found
```

```
## Error in arrange_impl(.data, dots): incorrect size (1) at position 1, expecting : 9616
```

```
## Error in FUN(X[[i]], ...): object 'na' not found
```

![plot of chunk paperconsumption](figure/pagecount-paperconsumption-1.png)


```
## Error in grouped_df_impl(data, unname(vars), drop): Column `publication_year` is unknown
```

```
## Error in FUN(X[[i]], ...): object 'publication_year' not found
```

```
## Error in FUN(X[[i]], ...): object 'publication_year' not found
```

![plot of chunk paperconsumption2b](figure/pagecount-paperconsumption2b-1.png)




```
## Error in grouped_df_impl(data, unname(vars), drop): Column `publication_decade` is unknown
```

```
## Error in FUN(X[[i]], ...): object 'publication_decade' not found
```

```
## Error in FUN(X[[i]], ...): object 'publication_decade' not found
```

![plot of chunk pagecounts-gatherings-relab](figure/pagecount-pagecounts-gatherings-relab-1.png)


```
## Error in grouped_df_impl(data, unname(vars), drop): Column `publication_decade` is unknown
```

```
## Error in FUN(X[[i]], ...): object 'publication_decade' not found
```

![plot of chunk paperconsumption2](figure/pagecount-paperconsumption2-1.png)



## Pamphlets vs. Books


```
## Error in grouped_df_impl(data, unname(vars), drop): Column `publication_year` is unknown
```

```
## Error in FUN(X[[i]], ...): object 'publication_year' not found
```

```
## Error in FUN(X[[i]], ...): object 'publication_year' not found
```

![plot of chunk doctypes](figure/pagecount-doctypes-1.png)



```
## Error in grouped_df_impl(data, unname(vars), drop): Column `publication_decade` is unknown
```

```
## Error in FUN(X[[i]], ...): object 'publication_decade' not found
```

```
## Error in FUN(X[[i]], ...): object 'publication_decade' not found
```

![plot of chunk doctypes2](figure/pagecount-doctypes2-1.png)



## Nature of the documents over time

Estimated paper consumption by document size


```
## Error in grouped_df_impl(data, unname(vars), drop): Column `publication_year` is unknown
```

```
## Error in FUN(X[[i]], ...): object 'publication_year' not found
```

![plot of chunk 20150611paris-paper6](figure/pagecount-20150611paris-paper6-1.png)


Gatherings height: does it change over time? How increased printing activity is related to book size trends? Alternatively, we could use area (height x width), or median over time. Note that only original (not augmented) dimension info is being used here.


```
## Error in grouped_df_impl(data, unname(vars), drop): Column `publication_year` is unknown
```


Page counts: does it change over time? Also suggested we could calculate some kind of factor for each time period based on this ? In principle, we could calculate this separately for any given publication place as well but leẗ́s discuss this later. Would help to specify some specific places of interest.


```
## Error in grouped_df_impl(data, unname(vars), drop): Column `publication_year` is unknown
```


Same for documents that have a sufficient number of pages:


```
## Error in grouped_df_impl(data, unname(vars), drop): Column `publication_year` is unknown
```

