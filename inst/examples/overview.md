---
title: "Preprocessing overview"
author: "Leo Lahti"
date: "2016-04-08"
output: markdown_document
---

# Preprocessing summary

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

Fraction of documents with data:

![plot of chunk summaryannotations](figure/summaryannotations-1.png)

Same in exact numbers: documents with available/missing entries, and number of unique entries for each field. Sorted by missing data:


|field name            | missing (%)| available (%)| available (n)| unique (n)|
|:---------------------|-----------:|-------------:|-------------:|----------:|
|volnumber             |        99.6|           0.4|          2031|         24|
|width.original        |        99.2|           0.8|          3731|         72|
|height.original       |        98.3|           1.7|          8153|         88|
|publication_year_till |        97.8|           2.2|         10552|        354|
|publication_topic     |        81.7|          18.3|         87966|       5067|
|publication_geography |        71.6|          28.4|        136613|      12717|
|author_birth          |        59.0|          41.0|        197143|        470|
|self_published        |        56.6|          43.4|        209060|          3|
|author_death          |        55.8|          44.2|        212750|        518|
|author_gender         |        51.1|          48.9|        235122|          3|
|author                |        47.4|          52.6|        253193|      46365|
|subject_topic         |        44.9|          55.1|        265148|      55731|
|author_name           |        44.7|          55.3|        266124|      42150|
|publisher             |        24.4|          75.6|        363755|     162104|
|latitude              |        11.2|          88.8|        427526|         20|
|longitude             |        11.2|          88.8|        427526|         20|
|paper.consumption.km2 |         7.5|          92.5|        444936|       5317|
|pagecount.orig        |         5.4|          94.6|        455431|       1137|
|obl                   |         3.5|          96.5|        464209|          3|
|width                 |         2.3|          97.7|        470237|         78|
|height                |         2.3|          97.7|        470237|         95|
|area                  |         2.3|          97.7|        470237|        629|
|country               |         0.5|          99.5|        478668|         57|
|publication_place     |         0.5|          99.5|        478856|       1102|
|volcount              |         0.4|          99.6|        479174|        152|
|document.items        |         0.4|          99.6|        479174|        152|
|publication_year_from |         0.2|          99.8|        480080|        348|
|pagecount             |         0.1|          99.9|        480955|       1270|
|title                 |         0.0|         100.0|        481203|     360647|
|control_number        |         0.0|         100.0|        481205|     481205|
|language.finnish      |         0.0|         100.0|        481205|          1|
|language.swedish      |         0.0|         100.0|        481205|          2|
|language.latin        |         0.0|         100.0|        481205|          2|
|language.german       |         0.0|         100.0|        481205|          2|
|language.english      |         0.0|         100.0|        481205|          2|
|language.french       |         0.0|         100.0|        481205|          2|
|language.russian      |         0.0|         100.0|        481205|          2|
|language.greek        |         0.0|         100.0|        481205|          2|
|language.danish       |         0.0|         100.0|        481205|          2|
|language.italian      |         0.0|         100.0|        481205|          2|
|language.hebrew       |         0.0|         100.0|        481205|          2|
|language.dutch        |         0.0|         100.0|        481205|          2|
|language.spanish      |         0.0|         100.0|        481205|          2|
|language.sami         |         0.0|         100.0|        481205|          1|
|language.modern_greek |         0.0|         100.0|        481205|          2|
|language.icelandic    |         0.0|         100.0|        481205|          2|
|language.arabic       |         0.0|         100.0|        481205|          2|
|language.portuguese   |         0.0|         100.0|        481205|          2|
|language.finnougrian  |         0.0|         100.0|        481205|          1|
|language.multiple     |         0.0|         100.0|        481205|          2|
|language.undetermined |         0.0|         100.0|        481205|          1|
|gatherings.original   |         0.0|         100.0|        481205|         18|
|obl.original          |         0.0|         100.0|        481205|          2|
|original_row          |         0.0|         100.0|        481205|     481205|
|gatherings            |         0.0|         100.0|        481205|         18|
|publication_year      |         0.0|         100.0|        481205|        348|
|publication_decade    |         0.0|         100.0|        481205|         37|
|author_pseudonyme     |         0.0|         100.0|        481205|          2|



## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />

## Histograms of the top entries for factor variables

<img src="figure/summary-bars-1.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-2.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-3.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-4.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-5.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-6.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-7.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-8.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-9.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-10.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-11.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" />



