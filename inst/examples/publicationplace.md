---
title: "Publication place preprocessing summary"
author: "Leo Lahti"
date: "2016-05-02"
output: markdown_document
---

### Publication places

 * 1030 [unique accepted publication places](output.tables/publication_place_accepted.csv)
 * Publication place is identified for 478663 documents (99%). 
 * Publication country is identified for 478656 documents (99%). [List of places with unknown publication country](output.tables/publication_place_missingcountry.csv) (add to [country mappings](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/reg2country.csv))
 * We have 55 [unique accepted publication countries](output.tables/country_accepted.csv)
 * 88.9% of the documents could be matched to geographic coordinates (based on the [Geonames](http://download.geonames.org/export/dump/) database). See the [list of places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``11.13``% of the documents have missing geocoordinates.
 * [Non-trivial conversions from the original to final place names](output.tables/publication_place_conversion_nontrivial.csv)
 * [Ambiguous publication places](output.tables/publication_place_ambiguous.csv)
 * [Potentially ambiguous region-country mappings](output.tables/publication_country_ambiguous.csv) (the default country is listed first)
 * [Discarded publication places](output.tables/publication_place_discarded.csv) (add to [synonyme list](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv) to accept; or add to [publication place stopwords](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/stopwords_for_place.csv) to completely discard the term)

Top-20 publication places are shown together with the number of documents.

<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />



|name        |      n|   fraction|
|:-----------|------:|----------:|
|England     | 358319| 74.4628589|
|USA         |  41340|  8.5909332|
|Scotland    |  40244|  8.3631716|
|Ireland     |  27546|  5.7243794|
|France      |   3724|  0.7738905|
|Netherlands |   2024|  0.4206108|
