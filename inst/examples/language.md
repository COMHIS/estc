---
title: "Language summaries"
author: "Leo Lahti"
date: "2016-07-26"
output: markdown_document
---

## Language

 * 47 unique languages
 * The languages may come in [combinations](output.tables/language_conversions.csv)
 * 279 multilingual documents (0.06%)  
 * 65 docs (0.01%) with no recognized language 
 * [Discarded languages](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages


|Language      | Documents (n)| Fraction (%)|
|:-------------|-------------:|------------:|
|English       |        451571|         93.9|
|Latin         |         16055|          3.3|
|French        |          7790|          1.6|
|German        |          1649|          0.3|
|Welsh         |           950|          0.2|
|Romance Other |           763|          0.2|

