---
title: "Preprocessing overview"
author: "Leo Lahti"
date: "2016-03-05"
output: markdown_document
---

# Summary

Date:


```
## [1] "Sat Mar  5 22:46:42 2016"
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
|title_uniform2        | 99.9352428|   0.0647572|    313|            111|
|volnumber             | 99.5771128|   0.4228872|   2044|             24|
|width.original        | 99.2140173|   0.7859827|   3799|             72|
|height.original       | 98.2457629|   1.7542371|   8479|             89|
|publication_year_till | 97.9993545|   2.0006455|   9670|            290|
|topic_publication     | 81.6772320|  18.3227680|  88562|           5113|
|publication_geography | 71.5773859|  28.4226141| 137379|          12814|
|author_death          | 62.8415787|  37.1584213| 179603|            440|
|author_birth          | 58.7231868|  41.2768132| 199509|            471|
|author_gender         | 51.1596296|  48.8403704| 236067|              3|
|author                | 47.4709524|  52.5290476| 253896|          46310|
|topic                 | 44.9239051|  55.0760949| 266207|          55944|
|author_name           | 44.6412907|  55.3587093| 267573|          42352|
|publisher             | 24.3998063|  75.6001937| 365409|         161987|
|latitude              | 13.9871396|  86.0128604| 415738|             16|
|longitude             | 13.9871396|  86.0128604| 415738|             16|
|paper.consumption.km2 |  7.5885911|  92.4114089| 446665|           5332|
|pagecount.orig        |  5.3556059|  94.6443941| 457458|           1138|
|country               |  4.3072843|  95.6927157| 462525|             35|
|obl                   |  3.6249545|  96.3750455| 465823|              3|
|width                 |  2.3314658|  97.6685342| 472075|             78|
|height                |  2.3314658|  97.6685342| 472075|             96|
|area                  |  2.3314658|  97.6685342| 472075|            636|
|publication_place     |  1.8378215|  98.1621785| 474461|            477|
|publication_year_from |  0.6666060|  99.3333940| 480122|            392|
|volcount              |  0.4228872|  99.5771128| 481300|            152|
|document.items        |  0.4228872|  99.5771128| 481300|            152|
|publication_year      |  0.3022692|  99.6977308| 481883|            392|
|publication_decade    |  0.3022692|  99.6977308| 481883|             68|
|pagecount             |  0.0525506|  99.9474494| 483090|           1264|
|title                 |  0.0004138|  99.9995862| 483342|         362288|
|row.index             |  0.0000000| 100.0000000| 483344|         483344|
|language.finnish      |  0.0000000| 100.0000000| 483344|              1|
|language.swedish      |  0.0000000| 100.0000000| 483344|              2|
|language.latin        |  0.0000000| 100.0000000| 483344|              2|
|language.german       |  0.0000000| 100.0000000| 483344|              2|
|language.english      |  0.0000000| 100.0000000| 483344|              2|
|language.french       |  0.0000000| 100.0000000| 483344|              2|
|language.russian      |  0.0000000| 100.0000000| 483344|              2|
|language.greek        |  0.0000000| 100.0000000| 483344|              2|
|language.danish       |  0.0000000| 100.0000000| 483344|              2|
|language.italian      |  0.0000000| 100.0000000| 483344|              2|
|language.hebrew       |  0.0000000| 100.0000000| 483344|              2|
|language.dutch        |  0.0000000| 100.0000000| 483344|              2|
|language.spanish      |  0.0000000| 100.0000000| 483344|              2|
|language.sami         |  0.0000000| 100.0000000| 483344|              1|
|language.modern_greek |  0.0000000| 100.0000000| 483344|              2|
|language.icelandic    |  0.0000000| 100.0000000| 483344|              2|
|language.arabic       |  0.0000000| 100.0000000| 483344|              2|
|language.portuguese   |  0.0000000| 100.0000000| 483344|              2|
|language.finnougrian  |  0.0000000| 100.0000000| 483344|              1|
|language.multiple     |  0.0000000| 100.0000000| 483344|              2|
|language.undetermined |  0.0000000| 100.0000000| 483344|              1|
|original_row          |  0.0000000| 100.0000000| 483344|         483344|
|gatherings.original   |  0.0000000| 100.0000000| 483344|             18|
|obl.original          |  0.0000000| 100.0000000| 483344|              2|
|gatherings            |  0.0000000| 100.0000000| 483344|             18|
|unity                 |  0.0000000| 100.0000000| 483344|              1|


## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />

## Histograms of the top entries for factor variables

<img src="figure/summary-bars-1.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-2.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-3.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-4.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-5.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-6.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-7.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-8.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-9.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-10.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-11.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" />



