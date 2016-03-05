---
title: "Scotland"
author: "Lahti, L"
date: "2016-03-05"
output: markdown_document
---


# Scotland publishing summaries

Read the preprocessed ESTC data table and load tools:






We have 461276 documents from Scotland.


## Most common authors from Scotland

![plot of chunk ScotlandTopAuth](figure/ScotlandTopAuth-1.png)


## Publication timeline for top-10 authors

![plot of chunk ScotlandTop10authors](figure/ScotlandTop10authors-1.png)


## Most common publication places in Scotland

![plot of chunk Scotlandtopplaces](figure/Scotlandtopplaces-1.png)


## Top titles 


```
## Error in dfs$names: $ operator is invalid for atomic vectors
```

![plot of chunk Scotlandtoptitles](figure/Scotlandtoptitles-1.png)


## Authors born before 500AD

 * Ennen 500AD syntyneiden kirjoittajien julkaisujen esiintymat koko aikajanalla, painomaarat per vuosi, kaikki julkaisupaikat.
 * Ennen 500AD syntyneiden kirjoittajien julkaisujen esiintymat koko aikajanalla, painomaarat per vuosi Skotlannissa.



```
## Error in eval(expr, envir, enclos): object 'author.birth' not found
```

```
## 
##    Goldsmith, Oliver (1728-1774)         Wesley, John (1703-1791) 
##                               40                               64 
##      Pope, Alexander (1688-1744)         Watts, Isaac (1674-1748) 
##                               84                               87 
##      Swift, Jonathan (1667-1745)        Defoe, Daniel (1661-1731) 
##                               89                              102 
##         Dryden, John (1631-1700)         Milton, John (1608-1674) 
##                              121                              123 
##         Bunyan, John (1628-1688) Shakespeare, William (1564-1616) 
##                              133                              144
```

We have 987 documents from 10 unique
authors born before 500 AD who have published in Scotland.



## Historical publication volumes for all publication places in Scotland

Average annual output for each decade are indicated by lines, the annual document counts are shown by points. 

![plot of chunk Scotlandaveout](figure/Scotlandaveout-1.png)


## Historical publication volumes for top-5 publication places in Scotland

Average annual output for each decade are indicated by lines, the annual document counts are shown by points. 

![plot of chunk Scotlandaveout2](figure/Scotlandaveout2-1.png)


## Publishing in Scotland versus London 1700 



We have 33750 documents from Scotland and 205048 documents from London during 1700-1800. Average annual output for each decade are indicated by lines (passing through the middle point at each decade 1705, 1715 etc), the annual document counts are shown by points.

![plot of chunk Scotlandpub1700b](figure/Scotlandpub1700b-1.png)

```
## Warning: Removed 3 rows containing non-finite values (stat_smooth).
```

![plot of chunk Scotlandpub1700b](figure/Scotlandpub1700b-2.png)




## Comparing selected authors


```
## Warning in min(x): no non-missing arguments to min; returning Inf
```

```
## Warning in max(x): no non-missing arguments to max; returning -Inf
```

```
## Error in seq.default(from = best$lmin, to = best$lmax, by = best$lstep): 'from' must be of length 1
```

![plot of chunk Scotlandselectedauthors](figure/Scotlandselectedauthors-1.png)

```
## Error in seq.default(from = best$lmin, to = best$lmax, by = best$lstep): 'from' must be of length 1
```

```
## Error in seq.default(from = best$lmin, to = best$lmax, by = best$lstep): 'from' must be of length 1
```

## Authors from different periods publishing in 1750-1799



```
## Error in cut.default(df$author.birth, breaks = c(-Inf, 501, 1500, 1600, : 'x' must be numeric
```

```
## Error in eval(expr, envir, enclos): object 'author.birth.period' not found
```

```
## Error in eval(expr, envir, enclos): unknown column 'author.birth.period'
```

```
## Error in eval(expr, envir, enclos): object 'ndoc' not found
```

![plot of chunk Scotlandselectedperiods](figure/Scotlandselectedperiods-1.png)

```
## Error in eval(expr, envir, enclos): unknown column 'author.birth.period'
```

```
## Error in eval(expr, envir, enclos): object 'author.birth.period' not found
```
