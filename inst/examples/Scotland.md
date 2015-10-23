---
title: "Scotland"
author: "Leo Lahti"
date: "2015-10-23"
output: markdown_document
---


# Scotland publishing summaries

Read the preprocessed ESTC data table and load tools:






We have 2841 documents from Scotland.


## Most common authors from Scotland

![plot of chunk ScotlandTopAuth](figure/ScotlandTopAuth-1.png) 


## Publication timeline for top-10 authors

![plot of chunk ScotlandTop10authors](figure/ScotlandTop10authors-1.png) 


## Most common publication places in Scotland

![plot of chunk Scotlandtopplaces](figure/Scotlandtopplaces-1.png) 


## Top titles 


```
## Error in dfs[1:ntop, ]: incorrect number of dimensions
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
##       henderson, alexander (1583-1646) 
##                                      3 
##            arbuthnot, john (1667-1735) 
##                                      5 
##            burnet, gilbert (1643-1715) 
##                                      5 
## cromarty, george mackenzie (1630-1714) 
##                                      5 
##    belhaven, john hamilton (1656-1708) 
##                                      6 
##                 caesar, julius (NA-NA) 
##                                      6 
##              defoe, daniel (1661-1731) 
##                                      6 
##      castellion, sébastien (1515-1563) 
##                                      8 
##           buchanan, george (1506-1582) 
##                                     10 
##             kirkton, james (1628-1699) 
##                                     10
```

We have 64 documents from 10 unique
authors born before 500 AD who have published in Scotland.



## Historical publication volumes for all publication places in Scotland

Average annual output for each decade are indicated by lines, the annual document counts are shown by points. 


```
## Error in tapply(df$unity, list(df$publication.decade, df$publication_place), : arguments must have same length
```

```
## Error in publications[is.na(publications)] <- 0: object 'publications' not found
```

```
## Error in eval(expr, envir, enclos): object 'publications' not found
```

```
## Error in melt(publications): object 'publications' not found
```

```
## Error: Discrete value supplied to continuous scale
```


## Historical publication volumes for top-5 publication places in Scotland

Average annual output for each decade are indicated by lines, the annual document counts are shown by points. 


```
## Error in tapply(df$unity, list(df$publication.decade, df$publication_place), : arguments must have same length
```

```
## Error in publications[is.na(publications)] <- 0: object 'publications' not found
```

```
## Error in eval(expr, envir, enclos): object 'publications' not found
```

```
## Error in is.data.frame(x): object 'publications' not found
```

```
## Error in eval(expr, envir, enclos): object 'publications' not found
```

```
## Error in eval(expr, envir, enclos): object 'top_places' not found
```

```
## Error in melt(publications): object 'publications' not found
```

```
## Error: Continuous value supplied to discrete scale
```


## Publishing in Scotland versus London 1700 



We have 1334 documents from Scotland and 10878 documents from London during 1700-1800. Average annual output for each decade are indicated by lines (passing through the middle point at each decade 1705, 1715 etc), the annual document counts are shown by points.


```
## Error in eval(expr, envir, enclos): unknown column 'publication.decade'
```

```
## Error in eval(expr, envir, enclos): object 'publication.decade' not found
```

```
## Error in eval(expr, envir, enclos): object 'publication.decade' not found
```




## Comparing selected authors

![plot of chunk Scotlandselectedauthors](figure/Scotlandselectedauthors-1.png) ![plot of chunk Scotlandselectedauthors](figure/Scotlandselectedauthors-2.png) ![plot of chunk Scotlandselectedauthors](figure/Scotlandselectedauthors-3.png) ![plot of chunk Scotlandselectedauthors](figure/Scotlandselectedauthors-4.png) 

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

```
## Error in eval(expr, envir, enclos): object 'publication_country' not found
```

```
## Error in eval(expr, envir, enclos): unknown column 'author.birth.period'
```

```
## Error in eval(expr, envir, enclos): object 'ndoc' not found
```
