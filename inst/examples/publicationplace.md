---
title: "Publication place preprocessing summary"
author: "Leo Lahti"
date: "2016-06-14"
output: markdown_document
---

### Publication places

 * 387 [publication places](output.tables/publication_place_accepted.csv)
 * 33 [publication countries](output.tables/country_accepted.csv) 
 * Publication place is identified for 44293 documents (97%). 
 * Publication country is identified for 44293 documents (97%).
 * 15.9% of the documents could be matched to geographic coordinates (based on the [Geonames](http://download.geonames.org/export/dump/) database). See the [list of places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``84.12``% of the documents have missing geocoordinates.
 * [Places with unknown publication country](output.tables/publication_place_missingcountry.csv) (can be added to [country mappings](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/reg2country.csv))
 * [Ambiguous publication places](output.tables/publication_place_ambiguous.csv)
 * [Potentially ambiguous region-country mappings](output.tables/publication_country_ambiguous.csv) (these may occur in the data in various synonymes and the country is not always clear when multiple countries have a similar place name; the default country is listed first)
 * [Discarded publication places](output.tables/publication_place_discarded.csv) (add to [synonyme list](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv) to accept; or add to [publication place stopwords](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/stopwords_for_place.csv) to completely discard the term)
 * [Conversions from the original to the accepted place names](output.tables/publication_place_conversion_nontrivial.csv)

Top-20 publication places are shown together with the number of documents.


```
## Error in (function (..., row.names = NULL, check.rows = FALSE, check.names = TRUE, : arguments imply differing number of rows: 20, 0
```

```
## Error in (function (..., row.names = NULL, check.rows = FALSE, check.names = TRUE, : arguments imply differing number of rows: 20, 0
```

<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />


### Top publication countries


|Country  |Documents (n) | Fraction (%)|NA |         NA|
|:--------|:-------------|------------:|:--|----------:|
|India    |A             |        28501|A  | 62.4378382|
|England  |B             |         8663|B  | 18.9782461|
|USA      |C             |         5027|C  | 11.0127719|
|Antiqua  |D             |          497|D  |  1.0887901|
|Scotland |E             |          265|E  |  0.5805420|
|France   |F             |          261|F  |  0.5717791|

