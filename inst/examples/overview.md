---
title: "Preprocessing overview"
author: "Leo Lahti / Computational History Group"
date: "2018-01-10"
output: markdown_document
---

# Preprocessing summary

The data spanning years 1473-1800 has been included and contains 480208 documents (also other filter may apply depending on the data collection, see the source code for details.



## Specific fields

  * [Author info](author.md)
  * [Gender info](gender.md)
  * [Publisher info](publisher.md)
  * [Publication geography](publicationplace.md)
  * [Publication year info](publicationyear.md)
  * [Titles](title.md)  
  * [Page counts](pagecount.md)
  * [Physical dimension](dimension.md)    
  * [Document and subject topics](topic.md)
  * [Languages](language.md)


## Annotated documents

  * 483344 documents in the original raw data
  * 480208 documents in the final preprocessed data (99.35%)

Fraction of documents with data:

![plot of chunk summaryannotations](figure/summaryannotations-1.png)

Same in exact numbers: documents with available/missing entries, and number of unique entries for each field. Sorted by missing data:


|field name                           | missing (%)| available (%)| available (n)| unique (n)|
|:------------------------------------|-----------:|-------------:|-------------:|----------:|
|parts                                |       100.0|           0.0|           239|         57|
|volnumber                            |        99.8|           0.2|           930|         31|
|publication_frequency_annual         |        99.4|           0.6|          3117|         23|
|publication_frequency_text           |        99.3|           0.7|          3251|         20|
|publication_interval_from            |        99.3|           0.7|          3471|        357|
|publication_interval_till            |        99.3|           0.7|          3485|        315|
|width.original                       |        99.2|           0.8|          3729|         72|
|height.original                      |        98.3|           1.7|          8149|         88|
|publication_year_till                |        97.6|           2.4|         11678|        367|
|publication_topic                    |        81.7|          18.3|         87727|       5052|
|author_age                           |        71.7|          28.3|        135846|        365|
|publication_geography                |        71.6|          28.4|        136243|      12671|
|author_gender                        |        70.4|          29.6|        142194|          5|
|first_edition                        |        67.6|          32.4|        155742|          3|
|author_birth                         |        58.3|          41.7|        200334|        493|
|author_death                         |        55.8|          44.2|        212205|        532|
|subject_topic                        |        44.9|          55.1|        264549|      55618|
|self_published                       |        40.1|          59.9|        287795|          2|
|author_name                          |        40.0|          60.0|        288062|      47884|
|author                               |        40.0|          60.0|        288108|      54974|
|publisher                            |        23.1|          76.9|        369502|     218423|
|latitude                             |         8.6|          91.4|        438986|        189|
|longitude                            |         8.6|          91.4|        438986|        189|
|pagecount.orig                       |         4.0|          96.0|        460916|       1487|
|obl                                  |         2.8|          97.2|        466677|          3|
|paper                                |         2.4|          97.6|        468570|       6615|
|width                                |         2.3|          97.7|        469277|         77|
|height                               |         2.3|          97.7|        469277|         94|
|area                                 |         2.3|          97.7|        469277|        625|
|country                              |         0.6|          99.4|        477488|         54|
|publication_place                    |         0.6|          99.4|        477489|       1023|
|publication_year_from                |         0.6|          99.4|        477495|        329|
|volcount                             |         0.3|          99.7|        478803|        151|
|document.items                       |         0.3|          99.7|        478803|        155|
|pagecount                            |         0.1|          99.9|        479670|       2781|
|language                             |         0.0|         100.0|        480142|         50|
|system_control_number                |         0.0|         100.0|        480192|     480183|
|id                                   |         0.0|         100.0|        480192|     480183|
|title                                |         0.0|         100.0|        480206|     359803|
|control_number                       |         0.0|         100.0|        480208|     480208|
|language.English                     |         0.0|         100.0|        480208|          2|
|language.French                      |         0.0|         100.0|        480208|          2|
|language.Latin                       |         0.0|         100.0|        480208|          2|
|language.German                      |         0.0|         100.0|        480208|          2|
|language.Scottish Gaelic             |         0.0|         100.0|        480208|          2|
|language.Italian                     |         0.0|         100.0|        480208|          2|
|language.Greek Ancient to 1453       |         0.0|         100.0|        480208|          2|
|language.Welsh                       |         0.0|         100.0|        480208|          2|
|language.Portuguese                  |         0.0|         100.0|        480208|          2|
|language.Dutch                       |         0.0|         100.0|        480208|          2|
|language.Greek Modern 1453-          |         0.0|         100.0|        480208|          2|
|language.Hebrew                      |         0.0|         100.0|        480208|          2|
|language.Spanish                     |         0.0|         100.0|        480208|          2|
|language.Pahlavi                     |         0.0|         100.0|        480208|          2|
|language.Swedish                     |         0.0|         100.0|        480208|          2|
|language.Irish                       |         0.0|         100.0|        480208|          2|
|language.Manx                        |         0.0|         100.0|        480208|          2|
|language.Romance Other               |         0.0|         100.0|        480208|          2|
|language.Algonquian Other            |         0.0|         100.0|        480208|          2|
|language.Lithuanian                  |         0.0|         100.0|        480208|          2|
|language.Turkish                     |         0.0|         100.0|        480208|          2|
|language.English Old ca. 450-1100    |         0.0|         100.0|        480208|          2|
|language.Scots                       |         0.0|         100.0|        480208|          2|
|language.Arabic                      |         0.0|         100.0|        480208|          2|
|language.North American Indian Other |         0.0|         100.0|        480208|          2|
|language.Persian                     |         0.0|         100.0|        480208|          2|
|language.French Middle ca. 1300-1600 |         0.0|         100.0|        480208|          2|
|language.Newari                      |         0.0|         100.0|        480208|          2|
|language.Armenian                    |         0.0|         100.0|        480208|          2|
|language.Tamil                       |         0.0|         100.0|        480208|          2|
|language.Icelandic                   |         0.0|         100.0|        480208|          2|
|language.Bengali                     |         0.0|         100.0|        480208|          2|
|language.Russian                     |         0.0|         100.0|        480208|          2|
|language.Malayalam                   |         0.0|         100.0|        480208|          2|
|language.Danish                      |         0.0|         100.0|        480208|          2|
|language.English Middle 1100-1500    |         0.0|         100.0|        480208|          2|
|language.Coptic                      |         0.0|         100.0|        480208|          2|
|language.Mongolian                   |         0.0|         100.0|        480208|          2|
|language.Gujarati                    |         0.0|         100.0|        480208|          2|
|language.Malay                       |         0.0|         100.0|        480208|          2|
|language.Sanskrit                    |         0.0|         100.0|        480208|          2|
|language.Gothic                      |         0.0|         100.0|        480208|          2|
|language.Mohawk                      |         0.0|         100.0|        480208|          2|
|language.Delaware                    |         0.0|         100.0|        480208|          2|
|language.Iroquoian Other             |         0.0|         100.0|        480208|          2|
|language.Palauan                     |         0.0|         100.0|        480208|          2|
|language.Arawak                      |         0.0|         100.0|        480208|          2|
|language.Scottish Gaelix             |         0.0|         100.0|        480208|          2|
|multilingual                         |         0.0|         100.0|        480208|          2|
|pagecount.multiplier                 |         0.0|         100.0|        480208|          2|
|pagecount.squarebracket              |         0.0|         100.0|        480208|        886|
|pagecount.plate                      |         0.0|         100.0|        480208|        148|
|pagecount.arabic                     |         0.0|         100.0|        480208|       1390|
|pagecount.roman                      |         0.0|         100.0|        480208|        313|
|pagecount.sheet                      |         0.0|         100.0|        480208|        629|
|gatherings.original                  |         0.0|         100.0|        480208|         18|
|obl.original                         |         0.0|         100.0|        480208|          2|
|original_row                         |         0.0|         100.0|        480208|     480208|
|pagecount_from                       |         0.0|         100.0|        480208|          6|
|author_pseudonyme                    |         0.0|         100.0|        480208|          2|
|publication_year                     |         0.0|         100.0|        480208|        328|
|publication_decade                   |         0.0|         100.0|        480208|         34|
|gatherings                           |         0.0|         100.0|        480208|         19|
|singlevol                            |         0.0|         100.0|        480208|          2|
|multivol                             |         0.0|         100.0|        480208|          2|
|issue                                |         0.0|         100.0|        480208|          2|

```
##             used  (Mb) gc trigger   (Mb)  max used   (Mb)
## Ncells   3968892 212.0    9968622  532.4   9968622  532.4
## Vcells 123947488 945.7  305561828 2331.3 305474769 2330.6
```


## Field conversions

This documents the conversions from raw data to the final preprocessed version (accepted, discarded, conversions). Only some of the key tables are explicitly linked below. The complete list of all summary tables is [here](output.tables/).

Brief description of the fields:

 * [Description of the original MARC fields](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/fieldnames.csv)

 * [Description of the preprocessed fields](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/fieldnames_polished.csv)


## Histograms of all entries for numeric variables


```
## Error in freq && !equidist: invalid 'x' type in 'x && y'
```


## Histograms of the top entries for factor variables

Non-trivial factors with at least 2 levels are shown.




