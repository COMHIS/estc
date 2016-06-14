---
title: "Preprocessing overview"
author: "Leo Lahti"
date: "2016-06-14"
output: markdown_document
---

# Preprocessing summary

## Specific fields

  * [Author info](author.md)
  * [Gender info](gender.md)
  * [Publisher info](publisher.md)
  * [Publication geography](publicationplace.md)
  * [Publication year info](publicationyear.md)
  * [Titles](title.md)  
  * [Document sizes](size.md)
  * [Document and subject topics](topic.md)
  * [Languages](language.md)

## Field conversions

This documents the conversions from raw data to the final preprocessed version (accepted, discarded, conversions). Only some of the key tables are explicitly linked below. The complete list of all summary tables is [here](output.tables/).

## Annotated documents

Fraction of documents with data:

![plot of chunk summaryannotations](figure/summaryannotations-1.png)

Same in exact numbers: documents with available/missing entries, and number of unique entries for each field. Sorted by missing data:


|field name                              | missing (%)| available (%)| available (n)| unique (n)|
|:---------------------------------------|-----------:|-------------:|-------------:|----------:|
|volnumber                               |        99.7|           0.3|           134|         14|
|width.original                          |        98.7|           1.3|           596|         50|
|height.original                         |        96.3|           3.7|          1669|         55|
|volcount                                |        95.0|           5.0|          2265|        106|
|document.items                          |        95.0|           5.0|          2265|        106|
|latitude                                |        84.1|          15.9|          7250|         19|
|longitude                               |        84.1|          15.9|          7250|         19|
|author_gender                           |        77.6|          22.4|         10212|          4|
|first_edition                           |        74.6|          25.4|         11605|          3|
|publication_year_till                   |        73.9|          26.1|         11908|        228|
|author_birth                            |        67.8|          32.2|         14710|        345|
|author_death                            |        67.1|          32.9|         15015|        361|
|self_published                          |        64.1|          35.9|         16394|          3|
|subject_topic                           |        57.1|          42.9|         19582|       6986|
|author_name                             |        55.5|          44.5|         20306|       6907|
|author                                  |        55.5|          44.5|         20306|       7249|
|publisher                               |        21.1|          78.9|         36010|      19903|
|publication_topic                       |        16.7|          83.3|         38035|       3876|
|publication_geography                   |         7.4|          92.6|         42276|       5447|
|obl                                     |         5.4|          94.6|         43175|          3|
|paper.consumption.km2                   |         4.8|          95.2|         43434|       2635|
|width                                   |         3.8|          96.2|         43894|         57|
|height                                  |         3.8|          96.2|         43894|         60|
|area                                    |         3.8|          96.2|         43894|        287|
|pagecount.orig                          |         3.3|          96.7|         44133|        893|
|publication_place                       |         3.0|          97.0|         44293|        387|
|country                                 |         3.0|          97.0|         44293|         33|
|publication_year_from                   |         2.4|          97.6|         44557|        309|
|pagecount                               |         1.0|          99.0|         45185|        953|
|language                                |         0.0|         100.0|         45641|         21|
|language.English                        |         0.0|         100.0|         45647|          2|
|language.French                         |         0.0|         100.0|         45647|          2|
|language.Latin                          |         0.0|         100.0|         45647|          2|
|language.Welsh                          |         0.0|         100.0|         45647|          2|
|language.Italian                        |         0.0|         100.0|         45647|          2|
|language.German                         |         0.0|         100.0|         45647|          2|
|language.Greek, Modern (1453-)          |         0.0|         100.0|         45647|          1|
|language.Greek, Ancient (to 1453)       |         0.0|         100.0|         45647|          1|
|language.Dutch                          |         0.0|         100.0|         45647|          2|
|language.Spanish                        |         0.0|         100.0|         45647|          2|
|language.French, Middle (ca. 1300-1600) |         0.0|         100.0|         45647|          1|
|language.Newari                         |         0.0|         100.0|         45647|          2|
|language.Scots                          |         0.0|         100.0|         45647|          2|
|language.Romance (Other)                |         0.0|         100.0|         45647|          1|
|language.Icelandic                      |         0.0|         100.0|         45647|          2|
|language.Portuguese                     |         0.0|         100.0|         45647|          2|
|language.Scottish Gaelic                |         0.0|         100.0|         45647|          2|
|language.Armenian                       |         0.0|         100.0|         45647|          2|
|language.Algonquian (Other)             |         0.0|         100.0|         45647|          1|
|language.Multiple languages             |         0.0|         100.0|         45647|          2|
|title                                   |         0.0|         100.0|         45647|      37641|
|gatherings.original                     |         0.0|         100.0|         45647|         16|
|obl.original                            |         0.0|         100.0|         45647|          2|
|original_row                            |         0.0|         100.0|         45647|      45647|
|author_pseudonyme                       |         0.0|         100.0|         45647|          2|
|publication_year                        |         0.0|         100.0|         45647|        308|
|publication_decade                      |         0.0|         100.0|         45647|         35|
|gatherings                              |         0.0|         100.0|         45647|         16|



## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-19.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-20.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />

## Histograms of the top entries for factor variables


```
## Error in (function (..., row.names = NULL, check.rows = FALSE, check.names = TRUE, : arguments imply differing number of rows: 20, 0
```

<img src="figure/summary-bars-1.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" />



