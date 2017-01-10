---
title: "Preprocessing overview"
author: "Leo Lahti"
date: "2017-01-10"
output: markdown_document
---

# Preprocessing summary

The complete data set contains 480208 documents. The data
spanning years 1460-1800 has been included
and contains 480208 documents (also other filter
may apply depending on the data collection, see [source
code](inst/examples/analysis.init.R) for details.



## Specific fields

  * [Author info](author.md)
  * [Gender info](gender.md)
  * [Publisher info](publisher.md)
  * [Publication geography](publicationplace.md)
  * [Publication year info](publicationyear.md)
  * [Titles](title.md)  
  * [Page counts](pagecount.md)
  * [Physical dimension](dimension.md)    
  * [Document and subject topics](topic.md)
  * [Languages](language.md)

## Field conversions

This documents the conversions from raw data to the final preprocessed version (accepted, discarded, conversions). Only some of the key tables are explicitly linked below. The complete list of all summary tables is [here](output.tables/).

## Annotated documents

  * 480208 documents in the original raw data
  *  documents in the final preprocessed data (%)

Fraction of documents with data:


```
## Error in colMeans(!is.na(df)): 'x' must be an array of at least two dimensions
```

```
## Error in print(availability$plot): object 'availability' not found
```

Same in exact numbers: documents with available/missing entries, and number of unique entries for each field. Sorted by missing data:


```
## Error in eval(expr, envir, enclos): object 'availability' not found
```

```
## Error in `[.default`(tab, , c(1, 3, 2, 4, 5)): incorrect number of dimensions
```

```
##             used   (Mb) gc trigger   (Mb)  max used   (Mb)
## Ncells   7157624  382.3   26772400 1429.9  41831876 2234.1
## Vcells 265508411 2025.7  422042385 3220.0 422042378 3220.0
```



## Histograms of all entries for numeric variables


```
## Error in which(num): argument to 'which' is not logical
```

```
## Error in eval(expr, envir, enclos): object 'numeric.fields' not found
```


## Histograms of the top entries for factor variables

Non-trivial factors with at least 2 levels are shown.


```
## Error in which(fac): argument to 'which' is not logical
```

```
## Error in eval(expr, envir, enclos): object 'factor.fields' not found
```


