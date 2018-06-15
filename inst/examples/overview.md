---
title: "Preprocessing overview"
author: "Leo Lahti / Computational History Group"
date: "2018-06-15"
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


|field name                    | available (%)| available (n)| missing (%)| unique (n)|
|:-----------------------------|-------------:|-------------:|-----------:|----------:|
|parts                         |           0.0|           239|       100.0|         57|
|volnumber                     |           0.2|           930|        99.8|         31|
|publication_frequency_annual  |           0.6|          3117|        99.4|         23|
|publication_frequency_text    |           0.7|          3251|        99.3|         20|
|publication_interval_from     |           0.7|          3469|        99.3|        355|
|publication_interval_till     |           0.7|          3483|        99.3|        240|
|width.original                |           0.8|          3729|        99.2|         72|
|height.original               |           1.7|          8149|        98.3|         88|
|publication_year_till         |           2.4|         11678|        97.6|        367|
|publication_geography_country |           4.8|         22942|        95.2|         16|
|publication_topic             |          18.3|         87727|        81.7|       5052|
|author_age                    |          28.3|        135846|        71.7|        365|
|publication_geography         |          28.4|        136243|        71.6|      12671|
|publication_geography_place   |          28.4|        136243|        71.6|      12671|
|author_gender                 |          29.6|        142194|        70.4|          5|
|first_edition                 |          32.4|        155742|        67.6|          3|
|author_birth                  |          41.7|        200334|        58.3|        493|
|author_death                  |          44.2|        212205|        55.8|        532|
|subject_topic                 |          55.1|        264549|        44.9|      55618|
|author_name                   |          60.0|        288062|        40.0|      47884|
|author                        |          60.0|        288108|        40.0|      54974|
|self_published                |          62.7|        301325|        37.3|          2|
|publisher                     |          78.0|        374461|        22.0|     187447|
|pagecount.orig                |          96.0|        460912|         4.0|       1491|
|obl                           |          97.2|        466677|         2.8|          3|
|paper                         |          97.6|        468570|         2.4|       6624|
|width                         |          97.7|        469277|         2.3|         77|
|height                        |          97.7|        469277|         2.3|         94|
|area                          |          97.7|        469277|         2.3|        625|
|publication_country           |          99.4|        477488|         0.6|         54|
|publication_place             |          99.4|        477489|         0.6|       1023|
|publication_year_from         |          99.4|        477495|         0.6|        329|
|volcount                      |          99.7|        478803|         0.3|        151|
|document.items                |          99.7|        478803|         0.3|        155|
|pagecount                     |          99.9|        479670|         0.1|       2783|
|system_control_number         |         100.0|        480192|         0.0|     480183|
|id                            |         100.0|        480192|         0.0|     480183|
|title                         |         100.0|        480206|         0.0|     359803|
|original_row                  |         100.0|        480208|         0.0|     480208|
|control_number                |         100.0|        480208|         0.0|     480208|
|language_count                |         100.0|        480208|         0.0|          1|
|multilingual                  |         100.0|        480208|         0.0|          1|
|languages                     |         100.0|        480208|         0.0|         50|
|language_primary              |         100.0|        480208|         0.0|         50|
|pagecount.multiplier          |         100.0|        480208|         0.0|          2|
|pagecount.squarebracket       |         100.0|        480208|         0.0|        886|
|pagecount.plate               |         100.0|        480208|         0.0|        148|
|pagecount.arabic              |         100.0|        480208|         0.0|       1393|
|pagecount.roman               |         100.0|        480208|         0.0|        312|
|pagecount.sheet               |         100.0|        480208|         0.0|        629|
|gatherings.original           |         100.0|        480208|         0.0|         18|
|obl.original                  |         100.0|        480208|         0.0|          2|
|pagecount_from                |         100.0|        480208|         0.0|          6|
|author_pseudonyme             |         100.0|        480208|         0.0|          2|
|publication_year              |         100.0|        480208|         0.0|        328|
|publication_decade            |         100.0|        480208|         0.0|         34|
|gatherings                    |         100.0|        480208|         0.0|         19|
|singlevol                     |         100.0|        480208|         0.0|          2|
|multivol                      |         100.0|        480208|         0.0|          2|
|issue                         |         100.0|        480208|         0.0|          2|

```
##             used  (Mb) gc trigger   (Mb)  max used   (Mb)
## Ncells   4111303 219.6   12280706  655.9  19188604 1024.8
## Vcells 125490218 957.5  253115687 1931.2 253097320 1931.0
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




