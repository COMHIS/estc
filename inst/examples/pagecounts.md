---
title: "Page count summary"
author: "Leo Lahti"
date: "30/05/2015"
output: markdown_document
---


## Page counts

Page count: distribution of document sizes


```
## Error in eval(expr, envir, enclos): object 'document.volcount' not found
```

```
## Error in eval(expr, envir, enclos): unknown column 'document.dimension.gatherings.estimated'
```

```
## Error in eval(expr, envir, enclos): unknown column 'document.dimension.gatherings.estimated'
```

```
## Error in ggplot(dff2, aes(y = document.dimension.gatherings.estimated, : object 'dff2' not found
```

```
## Error in do.call("layer", list(mapping = mapping, data = data, stat = stat, : object 'dff3' not found
```

```
## Error in do.call("layer", list(mapping = mapping, data = data, stat = stat, : object 'dff3' not found
```

```
## Error in eval(expr, envir, enclos): object 'document.volcount' not found
```

```
## Error in eval(expr, envir, enclos): unknown column 'document.dimension.gatherings.estimated'
```

```
## Error in eval(expr, envir, enclos): unknown column 'document.dimension.gatherings.estimated'
```

```
## Error in ggplot(dff2, aes(y = document.dimension.gatherings.estimated, : object 'dff2' not found
```

```
## Error in do.call("layer", list(mapping = mapping, data = data, stat = stat, : object 'dff3' not found
```

```
## Error in do.call("layer", list(mapping = mapping, data = data, stat = stat, : object 'dff3' not found
```

```
## Error in eval(expr, envir, enclos): object 'publication.country' not found
```


## Documents with missing pages over years 


```
## Error in eval(expr, envir, enclos): unknown column 'publication.decade'
```

```
## Error in df2$na[df2$na == 0] <- NA: object 'df2' not found
```

```
## Error in ggplot(df2, aes(x = publication.decade, y = document.dimension.gatherings.estimated, : object 'df2' not found
```

```
## Error in na.omit(df2$na): object 'df2' not found
```

```
## Error in eval(expr, envir, enclos): object 'publication.country' not found
```

```
## Error in eval(expr, envir, enclos): unknown column 'publication.decade'
```

```
## Error in df2b$na[df2b$na == 0] <- NA: object 'df2b' not found
```

```
## Error in ggplot(df2b, aes(x = publication.decade, y = document.dimension.gatherings.estimated, : object 'df2b' not found
```

```
## Error in na.omit(df2b$na): object 'df2b' not found
```

```
## Error in eval(expr, envir, enclos): object 'publication.country' not found
```


## Estimated paper consumption

Note: there are 0 documents that have some dimensions information but sheet area information could not be calculated for some reason. 


```
## Error in eval(expr, envir, enclos): unknown column 'publication.year'
```

```
## Error in regression_plot(paper.consumption.km2 ~ publication.year, df2): object 'df2' not found
```

```
## Error in eval(expr, envir, enclos): object 'publication.country' not found
```

```
## Error in regression_plot(n ~ publication.year, df2): object 'df2' not found
```

```
## Error in eval(expr, envir, enclos): object 'publication.country' not found
```


```
## Error in eval(expr, envir, enclos): unknown column 'publication.year'
```

```
## Error in filter_(.data, .dots = lazyeval::lazy_dots(...)): object 'df2' not found
```

```
## Error in ggplot(df2, aes(y = paper.consumption.km2, x = publication.year, : object 'df2' not found
```

```
## Error in eval(expr, envir, enclos): object 'publication.country' not found
```

```
## Error in ggplot(df2, aes(y = n, x = publication.year, group = document.dimension.gatherings.estimated, : object 'df2' not found
```

```
## Error in eval(expr, envir, enclos): object 'publication.country' not found
```

```
## Error in eval(expr, envir, enclos): unknown column 'publication.year'
```

```
## Error in filter_(.data, .dots = lazyeval::lazy_dots(...)): object 'df2' not found
```

```
## Error in ggplot(df2, aes(x = publication.year, fill = document.dimension.gatherings.estimated)): object 'df2' not found
```

```
## Error in eval(expr, envir, enclos): object 'publication.country' not found
```

```
## Error in ggplot(df2, aes(x = publication.year, fill = document.dimension.gatherings.estimated)): object 'df2' not found
```

```
## Error in eval(expr, envir, enclos): object 'publication.country' not found
```

p <- ggplot(df2, aes(y = n, x = publication.year, group = document.dimension.gatherings.estimated, color = document.dimension.gatherings.estimated))
p <- p + geom_point()
#p <- p + geom_line()
#p <- p + scale_y_log10()
p <- p + geom_smooth(method = "loess", size = 1)
p <- p + ggtitle("Annual title count by gatherings")
p <- p + xlab("Year")
p <- p + ylab("Documents (n)")
print(p)
```


```
## Error in eval(expr, envir, enclos): unknown column 'publication.year'
```

```
## Error in ggplot(df2, aes(x = publication.year, y = paper.consumption.km2/n)): object 'df2' not found
```

```
## Error in eval(expr, envir, enclos): object 'publication.country' not found
```



## Pamphlets vs. Books


```
## Error in eval(expr, envir, enclos): unknown column 'publication.year'
```

```
## Error in ggplot(df2, aes(x = publication.year, y = paper.consumption.km2, : object 'df2' not found
```

```
## Error in eval(expr, envir, enclos): object 'publication.country' not found
```

```
## Error in ggplot(df2, aes(x = publication.year, y = n, group = document.type, : object 'df2' not found
```

```
## Error in eval(expr, envir, enclos): object 'publication.country' not found
```



```
## Error in eval(expr, envir, enclos): object 'document.pages.total' not found
```

```
## Error in eval(expr, envir, enclos): unknown column 'publication.decade'
```

```
## Error in ggplot(df2, aes(x = publication.decade, y = paper.consumption.km2, : object 'df2' not found
```

```
## Error in eval(expr, envir, enclos): object 'publication.country' not found
```

```
## Error in ggplot(df2, aes(x = publication.decade, y = n, group = document.length, : object 'df2' not found
```

```
## Error in eval(expr, envir, enclos): object 'publication.country' not found
```


## Top authors


```
## Error in eval(expr, envir, enclos): object 'author.unique' not found
```

```
## Error in ggplot(df2, aes(x = publication.year, y = paper.consumption.km2, : object 'df2' not found
```

```
## Error in eval(expr, envir, enclos): object 'publication.country' not found
```

```
## Error in ggplot(df2, aes(x = publication.year, y = n, group = author.unique, : object 'df2' not found
```

```
## Error in eval(expr, envir, enclos): object 'publication.country' not found
```




## Nature of the documents over time

Estimated paper consumption by document size


```
## Error in eval(expr, envir, enclos): unknown column 'publication.year'
```

```
## Error in filter_(.data, .dots = lazyeval::lazy_dots(...)): object 'df2' not found
```

```
## Error in ggplot(df2, aes(y = paper.consumption.km2, x = publication.year, : object 'df2' not found
```

```
## Error in eval(expr, envir, enclos): object 'publication.country' not found
```


Gatherings height: does it change over time (1600's)? How increased printing activity is related to book size trends? Instead, we could use area (height x width), or simply calculate median over time but let's discuss this later.


```
## Error in eval(expr, envir, enclos): object 'publication.year' not found
```


Page counts: does it change over time (1600's)? Also suggested we could calculate some kind of factor for each time period based on this ? In principle, we could calculate this separately for any given publication place as well but leẗ́s discuss this later. Would help to specify some specific places of interest.


```
## Error in eval(expr, envir, enclos): object 'publication.year' not found
```


Same for documents that have a sufficient number of pages:


```
## Error in eval(expr, envir, enclos): object 'document.pages.total' not found
```
