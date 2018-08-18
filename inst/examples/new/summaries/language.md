---
title: "Language summaries"
author: "Leo Lahti"
date: "2018-08-01"
output: markdown_document
---

## Language

 * 19 [unique languages](output.tables/language_accepted.csv)
 * 19 [unique primary languages](output.tables/language_accepted.csv)  
 * 10000 single-language documents (100%)
 * 0 multilingual documents (0%) 
 * [Conversions from raw to preprocessed language entries](output.tables/language_conversions.csv) 
 * 0 documents (0%) with [unrecognized language](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages

Number of documents assigned with each language (top-10). For a complete list,
see [accepted languages](output.tables/language_accepted.csv).


|Language              |Documents (n) |Fraction (%) |
|:---------------------|:-------------|:------------|
|English               |9359          |93.6         |
|Latin                 |353           |3.5          |
|French                |153           |1.5          |
|Welsh                 |31            |0.3          |
|German                |28            |0.3          |
|Romance Other         |18            |0.2          |
|Italian               |17            |0.2          |
|Greek Ancient to 1453 |11            |0.1          |
|Multiple languages    |7             |0.1          |
|Dutch                 |7             |0.1          |

