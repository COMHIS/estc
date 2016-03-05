---
title: "Preprocessing overview"
author: "Leo Lahti"
output: markdown_document
---

# Summary

Date:


```
## [1] "Sat Mar  5 10:39:37 2016"
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


|field_name            |    missing|   available|      n| unique_entries|
|:---------------------|----------:|-----------:|------:|--------------:|
|title_uniform2        | 99.9354468|   0.0645532|    311|            111|
|volnumber             | 99.5780170|   0.4219830|   2033|             24|
|width.original        | 99.2234932|   0.7765068|   3741|             72|
|height.original       | 98.3064638|   1.6935362|   8159|             88|
|publication_year_till | 97.9940760|   2.0059240|   9664|            290|
|topic_publication     | 81.7179460|  18.2820540|  88078|           5069|
|publication_geography | 71.6187914|  28.3812086| 136733|          12718|
|author_death          | 62.7347319|  37.2652681| 179534|            440|
|author_birth          | 58.6056089|  41.3943911| 199427|            471|
|author_gender         | 51.0236149|  48.9763851| 235955|              3|
|author                | 47.3258153|  52.6741847| 253770|          46249|
|topic                 | 44.8779820|  55.1220180| 265563|          55807|
|author_name           | 44.4883794|  55.5116206| 267440|          42287|
|publisher             | 24.4042319|  75.5957681| 364200|         161349|
|latitude              | 13.9026056|  86.0973944| 414794|             16|
|longitude             | 13.9026056|  86.0973944| 414794|             16|
|paper.consumption.km2 |  7.5529347|  92.4470653| 445385|           5317|
|pagecount.orig        |  5.3587478|  94.6412522| 455956|           1137|
|fieldtoplot           |  5.3587478|  94.6412522| 455956|           1137|
|country               |  4.2544933|  95.7455067| 461276|             35|
|obl                   |  3.5460684|  96.4539316| 464689|              3|
|width                 |  2.2913281|  97.7086719| 470734|             78|
|height                |  2.2913281|  97.7086719| 470734|             95|
|area                  |  2.2913281|  97.7086719| 470734|            629|
|publication_place     |  1.8164156|  98.1835844| 473022|            476|
|volcount              |  0.4219830|  99.5780170| 479740|            152|
|document.items        |  0.4219830|  99.5780170| 479740|            152|
|publication_year_from |  0.3655248|  99.6344752| 480012|            330|
|pagecount             |  0.0527219|  99.9472781| 481519|           1263|
|title                 |  0.0004151|  99.9995849| 481771|         361010|
|row.index             |  0.0000000| 100.0000000| 481773|         481773|
|language.finnish      |  0.0000000| 100.0000000| 481773|              1|
|language.swedish      |  0.0000000| 100.0000000| 481773|              2|
|language.latin        |  0.0000000| 100.0000000| 481773|              2|
|language.german       |  0.0000000| 100.0000000| 481773|              2|
|language.english      |  0.0000000| 100.0000000| 481773|              2|
|language.french       |  0.0000000| 100.0000000| 481773|              2|
|language.russian      |  0.0000000| 100.0000000| 481773|              2|
|language.greek        |  0.0000000| 100.0000000| 481773|              2|
|language.danish       |  0.0000000| 100.0000000| 481773|              2|
|language.italian      |  0.0000000| 100.0000000| 481773|              2|
|language.hebrew       |  0.0000000| 100.0000000| 481773|              2|
|language.dutch        |  0.0000000| 100.0000000| 481773|              2|
|language.spanish      |  0.0000000| 100.0000000| 481773|              2|
|language.sami         |  0.0000000| 100.0000000| 481773|              1|
|language.modern_greek |  0.0000000| 100.0000000| 481773|              2|
|language.icelandic    |  0.0000000| 100.0000000| 481773|              2|
|language.arabic       |  0.0000000| 100.0000000| 481773|              2|
|language.portuguese   |  0.0000000| 100.0000000| 481773|              2|
|language.finnougrian  |  0.0000000| 100.0000000| 481773|              1|
|language.multiple     |  0.0000000| 100.0000000| 481773|              2|
|language.undetermined |  0.0000000| 100.0000000| 481773|              1|
|original_row          |  0.0000000| 100.0000000| 481773|         481773|
|gatherings.original   |  0.0000000| 100.0000000| 481773|             18|
|obl.original          |  0.0000000| 100.0000000| 481773|              2|
|gatherings            |  0.0000000| 100.0000000| 481773|             18|
|unity                 |  0.0000000| 100.0000000| 481773|              1|
|publication_year      |  0.0000000| 100.0000000| 481773|            329|
|publication_decade    |  0.0000000| 100.0000000| 481773|             35|


## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-19.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />

## Histograms of the top entries for factor variables

<img src="figure/summary-bars-1.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-2.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-3.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-4.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-5.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-6.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-7.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-8.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-9.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-10.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-11.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" />



