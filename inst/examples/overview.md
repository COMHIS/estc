---
title: "Preprocessing overview"
author: "Leo Lahti"
date: "2016-04-05"
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
|volnumber             |        99.6|           0.4|          2041|         24|
|width.original        |        99.2|           0.8|          3799|         72|
|height.original       |        98.2|           1.8|          8477|         89|
|publication_year_till |        97.8|           2.2|         10552|        354|
|publication_topic     |        81.7|          18.3|         88528|       5111|
|publication_geography |        71.6|          28.4|        137337|      12812|
|author_birth          |        59.1|          40.9|        197658|        470|
|self_published        |        56.6|          43.4|        209576|          3|
|author_death          |        55.9|          44.1|        213311|        519|
|author_gender         |        51.2|          48.8|        235729|          3|
|author                |        47.5|          52.5|        253846|      46425|
|subject_topic         |        44.9|          55.1|        266125|      55928|
|author_name           |        44.8|          55.2|        266809|      42201|
|publisher             |        24.4|          75.6|        365298|     162900|
|latitude              |        15.8|          84.2|        406909|         17|
|longitude             |        15.8|          84.2|        406909|         17|
|paper.consumption.km2 |         7.6|          92.4|        446609|       5333|
|pagecount.orig        |         5.4|          94.6|        457335|       1138|
|obl                   |         3.6|          96.4|        465764|          3|
|width                 |         2.3|          97.7|        472005|         78|
|height                |         2.3|          97.7|        472005|         96|
|area                  |         2.3|          97.7|        472005|        636|
|country               |         1.2|          98.8|        477364|         56|
|publication_place     |         0.8|          99.2|        479519|       1244|
|publication_year_from |         0.6|          99.4|        480080|        348|
|volcount              |         0.4|          99.6|        481171|        152|
|document.items        |         0.4|          99.6|        481171|        152|
|pagecount             |         0.1|          99.9|        482961|       1271|
|title                 |         0.0|         100.0|        483210|     362187|
|control_number        |         0.0|         100.0|        483212|     483212|
|language.finnish      |         0.0|         100.0|        483212|          1|
|language.swedish      |         0.0|         100.0|        483212|          2|
|language.latin        |         0.0|         100.0|        483212|          2|
|language.german       |         0.0|         100.0|        483212|          2|
|language.english      |         0.0|         100.0|        483212|          2|
|language.french       |         0.0|         100.0|        483212|          2|
|language.russian      |         0.0|         100.0|        483212|          2|
|language.greek        |         0.0|         100.0|        483212|          2|
|language.danish       |         0.0|         100.0|        483212|          2|
|language.italian      |         0.0|         100.0|        483212|          2|
|language.hebrew       |         0.0|         100.0|        483212|          2|
|language.dutch        |         0.0|         100.0|        483212|          2|
|language.spanish      |         0.0|         100.0|        483212|          2|
|language.sami         |         0.0|         100.0|        483212|          1|
|language.modern_greek |         0.0|         100.0|        483212|          2|
|language.icelandic    |         0.0|         100.0|        483212|          2|
|language.arabic       |         0.0|         100.0|        483212|          2|
|language.portuguese   |         0.0|         100.0|        483212|          2|
|language.finnougrian  |         0.0|         100.0|        483212|          1|
|language.multiple     |         0.0|         100.0|        483212|          2|
|language.undetermined |         0.0|         100.0|        483212|          1|
|gatherings.original   |         0.0|         100.0|        483212|         18|
|obl.original          |         0.0|         100.0|        483212|          2|
|original_row          |         0.0|         100.0|        483212|     483212|
|gatherings            |         0.0|         100.0|        483212|         18|
|publication_year      |         0.0|         100.0|        483212|        348|
|publication_decade    |         0.0|         100.0|        483212|         37|
|author_pseudonyme     |         0.0|         100.0|        483212|          2|



## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />

## Histograms of the top entries for factor variables

<img src="figure/summary-bars-1.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-2.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-3.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-4.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-5.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-6.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-7.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-8.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-9.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-10.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-11.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" />



