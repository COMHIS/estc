---
title: "Summaries on North America"
author: "Leo Lahti"
date: "2018-04-26"
output: markdown_document
---

Read the preprocessed ESTC data table and load tools:




```r
# Pick USA documents only
sel.country <- "USA"
df <- filter(df.preprocessed, country == sel.country)
```

```
## Error in filter_impl(.data, quo): Evaluation error: object 'country' not found.
```

```r
df$unity <- rep(1, nrow(df))
```

We have 480208 documents from USA.


## Most common authors from USA


```r
p <- top_plot(df, "author", 20)
p <- p + ggtitle(paste("Most common authors from", sel.country))
p <- p + ylab("Documents") + xlab("")
print(p)
```

![plot of chunk NAtopauth](figure/NAtopauth-1.png)


## Top titles 


```r
p <- top_plot(df, "title", 20)
p <- p + ggtitle(paste("Most common titles from", sel.country))
p <- p + ylab("Documents") + xlab("")
print(p)
```

![plot of chunk NAtoptitles](figure/NAtoptitles-1.png)



## Historical publication volumes for top-5 publication places

Average annual output for each decade is shown by lines, the actual annual document counts are shown by points. 

![plot of chunk NApubvols](figure/NApubvols-1.png)
