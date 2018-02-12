---
title: "Language summaries"
author: "Leo Lahti"
date: "2018-02-12"
output: markdown_document
---

## Language

 * 49 [unique languages](output.tables/language_accepted.csv)
 * 49 [unique primary languages](output.tables/language_accepted.csv)  
 * 480208 single-language documents (100%)
 * 0 multilingual documents (0%) 
 * [Conversions from raw to preprocessed language entries](output.tables/language_conversions.csv) 
 * 66 documents (0.01%) with [unrecognized language](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages

Number of documents assigned with each language (top-10). For a complete list,
see [accepted languages](output.tables/language_accepted.csv).


|Language              |Documents (n) |Fraction (%) |
|:---------------------|:-------------|:------------|
|English               |450592        |93.8         |
|Latin                 |16026         |3.3          |
|French                |7745          |1.6          |
|German                |1649          |0.3          |
|Welsh                 |952           |0.2          |
|Romance Other         |771           |0.2          |
|Italian               |586           |0.1          |
|Greek Ancient to 1453 |525           |0.1          |
|Multiple languages    |279           |0.1          |
|Dutch                 |223           |0            |

