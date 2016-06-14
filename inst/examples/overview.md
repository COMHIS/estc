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
|volnumber                               |        99.7|           0.3|           136|         16|
|width.original                          |        98.7|           1.3|           674|         50|
|publication_year_till                   |        97.2|           2.8|          1403|        228|
|height.original                         |        96.6|           3.4|          1706|         55|
|volcount                                |        95.1|           4.9|          2465|        102|
|document.items                          |        95.1|           4.9|          2465|        102|
|author_gender                           |        77.8|          22.2|         11165|          4|
|first_edition                           |        74.1|          25.9|         13036|          3|
|author_birth                            |        68.4|          31.6|         15899|        356|
|author_death                            |        67.0|          33.0|         16593|        373|
|self_published                          |        63.6|          36.4|         18328|          3|
|subject_topic                           |        56.3|          43.7|         21970|       7639|
|author_name                             |        55.8|          44.2|         22221|       7384|
|author                                  |        55.8|          44.2|         22221|       7718|
|publisher                               |        19.8|          80.2|         40327|      21495|
|publication_topic                       |        17.0|          83.0|         41736|       4139|
|latitude                                |         8.7|          91.3|         45933|         19|
|longitude                               |         8.7|          91.3|         45933|         19|
|publication_geography                   |         7.5|          92.5|         46538|       5844|
|obl                                     |         5.9|          94.1|         47305|          3|
|paper.consumption.km2                   |         5.2|          94.8|         47654|       2776|
|width                                   |         4.3|          95.7|         48127|         57|
|height                                  |         4.3|          95.7|         48127|         60|
|area                                    |         4.3|          95.7|         48127|        306|
|pagecount.orig                          |         3.2|          96.8|         48675|        932|
|publication_place                       |         1.0|          99.0|         49803|        413|
|country                                 |         1.0|          99.0|         49803|         33|
|pagecount                               |         0.9|          99.1|         49814|        990|
|publication_year_from                   |         0.4|          99.6|         50080|        309|
|language                                |         0.0|         100.0|         50281|         21|
|language.English                        |         0.0|         100.0|         50288|          2|
|language.French                         |         0.0|         100.0|         50288|          2|
|language.Latin                          |         0.0|         100.0|         50288|          2|
|language.Welsh                          |         0.0|         100.0|         50288|          2|
|language.Italian                        |         0.0|         100.0|         50288|          2|
|language.German                         |         0.0|         100.0|         50288|          2|
|language.Greek, Modern (1453-)          |         0.0|         100.0|         50288|          1|
|language.Greek, Ancient (to 1453)       |         0.0|         100.0|         50288|          1|
|language.Dutch                          |         0.0|         100.0|         50288|          2|
|language.Spanish                        |         0.0|         100.0|         50288|          2|
|language.French, Middle (ca. 1300-1600) |         0.0|         100.0|         50288|          1|
|language.Newari                         |         0.0|         100.0|         50288|          2|
|language.Scots                          |         0.0|         100.0|         50288|          2|
|language.Romance (Other)                |         0.0|         100.0|         50288|          1|
|language.Icelandic                      |         0.0|         100.0|         50288|          2|
|language.Portuguese                     |         0.0|         100.0|         50288|          2|
|language.Scottish Gaelic                |         0.0|         100.0|         50288|          2|
|language.Armenian                       |         0.0|         100.0|         50288|          2|
|language.Algonquian (Other)             |         0.0|         100.0|         50288|          1|
|language.Multiple languages             |         0.0|         100.0|         50288|          2|
|title                                   |         0.0|         100.0|         50288|      41247|
|gatherings.original                     |         0.0|         100.0|         50288|         16|
|obl.original                            |         0.0|         100.0|         50288|          2|
|original_row                            |         0.0|         100.0|         50288|      50288|
|author_pseudonyme                       |         0.0|         100.0|         50288|          2|
|publication_year                        |         0.0|         100.0|         50288|        308|
|publication_decade                      |         0.0|         100.0|         50288|         35|
|gatherings                              |         0.0|         100.0|         50288|         16|



## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-19.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-20.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />

## Histograms of the top entries for factor variables

<img src="figure/summary-bars-1.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-2.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-3.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-4.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-5.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-6.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-7.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-8.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-9.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" />



