---
title: "Preprocessing overview"
author: "Leo Lahti"
date: "2016-03-08"
output: markdown_document
---

# Summary

Date:


```
## [1] "Tue Mar  8 00:39:24 2016"
```


## Specific fields

  * [Author info](author.md)
  * [Gender info](gender.md)
  * [Publisher info](publisher.md)
  * [Publication geography](publicationplace.md)
  * [Generic document info](documents.md)
  * [Document sizes](size.md)
  * [Document topics](topic.md)


## Field conversions

This documents the conversions from raw data to the final preprocessed version (accepted, discarded, conversions). Only some of the key tables are explicitly linked below. The complete list of all summary tables is [here](output.tables/).

## Annotated documents

Fraction of documents with entries:

![plot of chunk summaryannotations](figure/summaryannotations-1.png)

Documents with data (number and percentage) and number of unique entries for each field:


|field_name            | missing| available|      n| unique_entries|
|:---------------------|-------:|---------:|------:|--------------:|
|title_uniform2        |    99.9|       0.1|    311|            111|
|volnumber             |    99.7|       0.3|   1445|             24|
|width.original        |    99.2|       0.8|   3728|             72|
|height.original       |    98.3|       1.7|   8144|             88|
|publication_year_till |    98.0|       2.0|   9606|            290|
|topic_publication     |    81.8|      18.2|  86753|           5069|
|publication_geography |    71.7|      28.3| 134967|          12719|
|author_death          |    62.8|      37.2| 177499|            440|
|author_birth          |    59.0|      41.0| 195468|            454|
|author_gender         |    51.0|      49.0| 233442|              3|
|author                |    47.3|      52.7| 251129|          45986|
|topic                 |    44.8|      55.2| 263198|          55812|
|author_name           |    44.5|      55.5| 264665|          42287|
|publisher             |    24.4|      75.6| 360465|         161356|
|latitude              |    14.0|      86.0| 410258|             16|
|longitude             |    14.0|      86.0| 410258|             16|
|paper.consumption.km2 |     7.7|      92.3| 440386|           5320|
|pagecount.orig        |     5.5|      94.5| 450899|           1140|
|country               |     4.3|      95.7| 456459|             35|
|obl                   |     3.6|      96.4| 459903|              3|
|width                 |     2.3|      97.7| 465935|             78|
|height                |     2.3|      97.7| 465935|             95|
|area                  |     2.3|      97.7| 465935|            629|
|publication_place     |     1.8|      98.2| 468175|            476|
|publication_year_from |     0.4|      99.6| 475157|            330|
|volcount              |     0.3|      99.7| 475452|            152|
|document.items        |     0.3|      99.7| 475452|            152|
|pagecount             |     0.1|      99.9| 476582|           1264|
|title                 |     0.0|     100.0| 476895|         361024|
|row.index             |     0.0|     100.0| 476897|         476897|
|language.finnish      |     0.0|     100.0| 476897|              1|
|language.swedish      |     0.0|     100.0| 476897|              2|
|language.latin        |     0.0|     100.0| 476897|              2|
|language.german       |     0.0|     100.0| 476897|              2|
|language.english      |     0.0|     100.0| 476897|              2|
|language.french       |     0.0|     100.0| 476897|              2|
|language.russian      |     0.0|     100.0| 476897|              2|
|language.greek        |     0.0|     100.0| 476897|              2|
|language.danish       |     0.0|     100.0| 476897|              2|
|language.italian      |     0.0|     100.0| 476897|              2|
|language.hebrew       |     0.0|     100.0| 476897|              2|
|language.dutch        |     0.0|     100.0| 476897|              2|
|language.spanish      |     0.0|     100.0| 476897|              2|
|language.sami         |     0.0|     100.0| 476897|              1|
|language.modern_greek |     0.0|     100.0| 476897|              2|
|language.icelandic    |     0.0|     100.0| 476897|              2|
|language.arabic       |     0.0|     100.0| 476897|              2|
|language.portuguese   |     0.0|     100.0| 476897|              2|
|language.finnougrian  |     0.0|     100.0| 476897|              1|
|language.multiple     |     0.0|     100.0| 476897|              2|
|language.undetermined |     0.0|     100.0| 476897|              1|
|gatherings.original   |     0.0|     100.0| 476897|             18|
|obl.original          |     0.0|     100.0| 476897|              2|
|gatherings            |     0.0|     100.0| 476897|             18|
|unity                 |     0.0|     100.0| 476897|              1|
|publication_year      |     0.0|     100.0| 476897|            329|
|publication_decade    |     0.0|     100.0| 476897|             35|


## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />

## Histograms of the top entries for factor variables

<img src="figure/summary-bars-1.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-2.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-3.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-4.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-5.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-6.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-7.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-8.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-9.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-10.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-11.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" />



