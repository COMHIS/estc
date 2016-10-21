---
title: "Scotland"
author: "Leo Lahti"
date: "2016-10-22"
output: markdown_document
---


# Scotland publishing summaries

Read the preprocessed ESTC data table and load tools:






We have 40239 documents from Scotland.


## Most common authors from Scotland

![plot of chunk ScotlandTopAuth](figure/ScotlandTopAuth-1.png)


## Publication timeline for top-10 authors

![plot of chunk ScotlandTop10authors](figure/ScotlandTop10authors-1.png)


## Most common publication places in Scotland

![plot of chunk Scotlandtopplaces](figure/Scotlandtopplaces-1.png)


## Top titles 

![plot of chunk Scotlandtoptitles](figure/Scotlandtoptitles-1.png)


## Authors born before 500AD

Authors born before 500 AD: paper consumption per decade in Scotland and globally. Top-10 authors shown for clarity in each case.


```
## Warning: Removed 1 rows containing missing values (position_stack).
```

![plot of chunk Scotlandad500](figure/Scotlandad500-1.png)![plot of chunk Scotlandad500](figure/Scotlandad500-2.png)


List of authors born before 500AD:


```
## 
## Demetrius,  (350-NA) 
##                    2
```

We have 2 documents from 1 unique
authors born before 500 AD who have published in Scotland.



## Historical publication volumes for all publication places in Scotland

Average annual output for each decade are indicated by lines, the annual document counts are shown by points. 


```
## Error in tapply(df$unity, list(df$publication_decade, df$publication_place), : arguments must have same length
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
## Error in fortify(data): object 'dfm.annual' not found
```

![plot of chunk Scotlandaveout](figure/Scotlandaveout-1.png)


## Historical publication volumes for top-5 publication places in Scotland

Average annual output for each decade are indicated by lines, the annual document counts are shown by points. 


```
## Error in tapply(df$unity, list(df$publication_decade, df$publication_place), : arguments must have same length
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
## Error in fortify(data): object 'dfm.annual' not found
```

```
## Error: Insufficient values in manual scale. 54 needed but only 5 provided.
```

![plot of chunk Scotlandaveout2](figure/Scotlandaveout2-1.png)


## Publishing in Scotland versus London 1700 



We have 34468 documents from Scotland and 205127 documents from London during 1700-1800. Average annual output for each decade are indicated by lines (passing through the middle point at each decade 1705, 1715 etc), the annual document counts are shown by points.


```
## Error in UseMethod("droplevels"): no applicable method for 'droplevels' applied to an object of class "character"
```

```
## Error in rbind(deparse.level, ...): numbers of columns of arguments do not match
```

```
## Error in eval(expr, envir, enclos): unknown variable to group by : publication_place2
```

```
## Don't know how to automatically pick scale for object of type function. Defaulting to continuous.
```

```
## Error in eval(expr, envir, enclos): object 'publication_decade' not found
```

```
## Error in eval(expr, envir, enclos): object 'publication_decade' not found
```

![plot of chunk Scotlandpub1700b](figure/Scotlandpub1700b-1.png)




## Comparing selected authors

![plot of chunk Scotlandselectedauthors](figure/Scotlandselectedauthors-1.png)

```
## Warning: Removed 6079 rows containing missing values (geom_point).
```

![plot of chunk Scotlandselectedauthors](figure/Scotlandselectedauthors-2.png)

```
## Warning: Removed 1981 rows containing missing values (geom_point).
```

![plot of chunk Scotlandselectedauthors](figure/Scotlandselectedauthors-3.png)![plot of chunk Scotlandselectedauthors](figure/Scotlandselectedauthors-4.png)

## Authors from different periods publishing in 1750-1799

![plot of chunk Scotlandselectedperiods](figure/Scotlandselectedperiods-1.png)![plot of chunk Scotlandselectedperiods](figure/Scotlandselectedperiods-2.png)

