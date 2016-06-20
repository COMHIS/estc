---
title: "Publication place preprocessing summary"
author: "Leo Lahti"
date: "2016-06-20"
output: markdown_document
---

### Publication places

 * 1028 [publication places](output.tables/publication_place_accepted.csv)
 * 55 [publication countries](output.tables/country_accepted.csv) 
 * Publication place is identified for 478663 documents (99%). 
 * Publication country is identified for 478663 documents (99%).
 * 88.9% of the documents could be matched to geographic coordinates (based on the [Geonames](http://download.geonames.org/export/dump/) database). See the [list of places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``11.13``% of the documents have missing geocoordinates.
 * [Places with unknown publication country](output.tables/publication_place_missingcountry.csv) (can be added to [country mappings](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/reg2country.csv))
 * [Ambiguous publication places](output.tables/publication_place_ambiguous.csv)
 * [Potentially ambiguous region-country mappings](output.tables/publication_country_ambiguous.csv) (these may occur in the data in various synonymes and the country is not always clear when multiple countries have a similar place name; the default country is listed first)
 * [Discarded publication places](output.tables/publication_place_discarded.csv) (add to [synonyme list](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv) to accept; or add to [publication place stopwords](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/stopwords_for_place.csv) to completely discard the term)
 * [Conversions from the original to the accepted place names](output.tables/publication_place_conversion_nontrivial.csv)

Top-20 publication places are shown together with the number of documents.

<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />


### Top publication countries


|Country     |Documents (n) | Fraction (%)|NA |         NA|
|:-----------|:-------------|------------:|:--|----------:|
|England     |A             |       358322|A  | 74.4634823|
|USA         |B             |        41238|B  |  8.5697364|
|Scotland    |C             |        40244|C  |  8.3631716|
|Ireland     |D             |        27546|D  |  5.7243794|
|France      |E             |         3724|E  |  0.7738905|
|Netherlands |F             |         2024|F  |  0.4206108|

