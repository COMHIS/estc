---
title: "Publication place preprocessing summary"
author: "Leo Lahti / Computational History Group"
date: "2018-01-10"
output: markdown_document
---

### Publication places

 * 1023 [unique publication places](output.tables/publication_place_accepted.csv); available for 477489 documents (99%). 
 * 54 [unique publication countries](output.tables/country_accepted.csv); available for 477488 documents (99%).
 * 91.4% of the documents were matched to geographic coordinates (based on [Geonames](http://download.geonames.org/export/dump/)).
 * 834 unique places (81.5% of all unique places and 8.58% of all documents) are missing geocoordinates. See [list of places missing geocoordinate information](output.tables/absentgeocoordinates.csv).
 * 1 [places with unknown publication country](output.tables/publication_place_missingcountry.csv) (can be added to [country mappings](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/reg2country.csv))
 * 0 [ambiguous publication places](output.tables/publication_place_ambiguous.csv); some of these can be possibly resolved by checking that the the [synonyme list](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv) does not contain multiple versions of the final name (case sensitive). 
 * 34 [potentially ambiguous region-country mappings](output.tables/publication_country_ambiguous.csv) (these may occur in the data in various synonymes and the country is not always clear when multiple countries have a similar place name; the default country is listed first). NOTE: possible improvements should not be done in this output summary but instead in the [country mapping file](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/reg2country.csv).
 * [Conversions from the original to the accepted place names](output.tables/publication_place_conversion_nontrivial.csv)
 * -1 [unknown place names](output.tables/publication_place_todo.csv) These terms do not map to any known place on the [synonyme list](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv); either because they require further cleaning or have not yet been encountered in the analyses. Terms that are clearly not place names can be added to [stopwords](inst/extdata/stopwords_for_place.csv); borderline cases that are not accepted as place names can be added as NA on the [synonyme list](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv).
 * 0 [discarded place names](output.tables/publication_place_discarded.csv) These terms are potential place names but with a closer check have been explicitly rejected on the [synonyme list](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv)
 * [Unit tests for place names](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/tests_place.csv) are automatically checked during package build

Top-20 publication places are shown together with the number of documents.

<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />


### Top publication countries	

The complete list is available [here](output.tables/country_accepted.csv).


|Country     | Documents (n)| Fraction (%)|
|:-----------|-------------:|------------:|
|England     |        357303|         74.4|
|USA         |         41246|          8.6|
|Scotland    |         40124|          8.4|
|Ireland     |         27525|          5.7|
|France      |          3718|          0.8|
|Netherlands |          2035|          0.4|

