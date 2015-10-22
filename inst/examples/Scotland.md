---
title: "Scotland"
author: "Leo Lahti"
date: "2015-10-19"
output: markdown_document
---


# Scotland publishing summaries

Read the preprocessed ESTC data table and load tools:






We have 2841 documents from Scotland.


## Most common authors from Scotland

![plot of chunk ScotlandTopAuth](figure/ScotlandTopAuth-1.png) 


## Publication timeline for top-10 authors


```
## Error in eval(expr, envir, enclos): unknown column 'publication_year'
```

```
## Error in eval(expr, envir, enclos): object 'publication_year' not found
```


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
##            arbuthnot, john (1667-1667) 
##                                      8 
##       henderson, alexander (1583-1583) 
##                                      8 
##                 caesar, julius (NA-NA) 
##                                     10 
##      castellion, sébastien (1515-1515) 
##                                     10 
##             kirkton, james (1628-1628) 
##                                     11 
##           buchanan, george (1506-1506) 
##                                     12 
##            burnet, gilbert (1643-1643) 
##                                     12 
## cromarty, george mackenzie (1630-1630) 
##                                     12 
##    belhaven, john hamilton (1656-1656) 
##                                     16 
##              defoe, daniel (1661-1661) 
##                                     20
```

We have 119 documents from 10 unique
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
## Error in tapply(df$unity, list(df$publication_year, df$publication_place), : arguments must have same length
```

```
## Error in publications.annual[is.na(publications.annual)] <- 0: object 'publications.annual' not found
```

```
## Error in melt(publications): object 'publications' not found
```

```
## Error in melt(publications.annual): object 'publications.annual' not found
```

```
## Error in names(dfm.annual) <- c("Time", "Place", "Documents"): object 'dfm.annual' not found
```

```
## Error in do.call("layer", list(mapping = mapping, data = data, stat = stat, : object 'dfm.annual' not found
```

![plot of chunk Scotlandaveout](figure/Scotlandaveout-1.png) 


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
## Error in tapply(df$unity, list(df$publication_year, df$publication_place), : arguments must have same length
```

```
## Error in publications.annual[is.na(publications.annual)] <- 0: object 'publications.annual' not found
```

```
## Error in is.data.frame(x): object 'publications' not found
```

```
## Error in eval(expr, envir, enclos): object 'publications' not found
```

```
## Error in eval(expr, envir, enclos): object 'publications.annual' not found
```

```
## Error in melt(publications): object 'publications' not found
```

```
## Error in melt(publications.annual): object 'publications.annual' not found
```

```
## Error in names(dfm.annual) <- c("Time", "Place", "Documents"): object 'dfm.annual' not found
```

```
## Error in do.call("layer", list(mapping = mapping, data = data, stat = stat, : object 'dfm.annual' not found
```

```
## Error: Continuous value supplied to discrete scale
```


## Publishing in Scotland versus London 1700 


```
## Error in eval(expr, envir, enclos): object 'publication_year' not found
```

```
## Error in filter_(.data, .dots = lazyeval::lazy_dots(...)): object 'df1700' not found
```

```
## Error in filter_(.data, .dots = lazyeval::lazy_dots(...)): object 'df1700' not found
```






