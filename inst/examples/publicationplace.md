---
title: "Publication place preprocessing summary"
author: "Leo Lahti / Computational History Group"
date: "2018-06-15"
output: markdown_document
---

### Publication places

 * 1038 [unique publication places](output.tables/publication_place_accepted.csv); available for 480569 documents (99%).
 * 0 [ambiguous publication places](output.tables/publication_place_ambiguous.csv); some of these can be possibly resolved by checking that the the [synonyme list](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv) does not contain multiple versions of the final name (case sensitive). 
 * 2 [unknown place names](output.tables/publication_place_todo.csv) These terms do not map to any known place on the [synonyme list](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv); either because they require further cleaning or have not yet been encountered in the analyses. Terms that are clearly not place names can be added to [stopwords](inst/extdata/stopwords_for_place.csv); borderline cases that are not accepted as place names can be added as NA on the [synonyme list](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv).
 * 0 [discarded place names](output.tables/publication_place_discarded.csv) These terms are potential place names but with a closer check have been explicitly rejected on the [synonyme list](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv)
 * [Conversions from the original to the accepted place names](output.tables/publication_place_conversion_nontrivial.csv) 
 * [Unit tests for place names](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/tests_place.csv) are automatically checked during package build

Top-20 publication places are shown together with the number of documents.

<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />



<<<<<<< HEAD
 * 54 [unique publication countries](output.tables/publication_country_accepted.csv); available for 480566 documents (99%).
 * 3 [places with unknown publication country](output.tables/publication_place_missingcountry.csv) (0.3% of the unique places; can be added to [country mappings](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/reg2country.csv))
 * 0 [potentially ambiguous region-country mappings](output.tables/publication_country_ambiguous.csv) (these may occur in the data in various synonymes and the country is not always clear when multiple countries have a similar place name; the default country is listed first). NOTE: possible improvements should not be done in this output summary but instead in the [country mapping file](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/reg2country.csv).


|Country     | Documents (n)| Fraction (%)|
|:-----------|-------------:|------------:|
|England     |        359450|         74.4|
|USA         |         41719|          8.6|
|Scotland    |         40336|          8.3|
|Ireland     |         27677|          5.7|
|France      |          3750|          0.8|
|Netherlands |          2044|          0.4|


### Geocoordinates

 * NaN% of the documents were matched to geographic coordinates (based on [Geonames](http://download.geonames.org/export/dump/)).
 * 0 unique places (0% of all unique places and NaN% of all documents) are missing geocoordinates. See [list of places missing geocoordinate information](output.tables/absentgeocoordinates.csv).
 

### Publication geography

 * 0 [unique countries](output.tables/publication_geography_country_accepted.csv) on geographical region considered in the publication; available for 0 documents (NaN%).
 * 0 [unique places](output.tables/publication_geography_place_accepted.csv) on geographical region considered in the publication; available for 0 documents (NaN%).



=======
>>>>>>> a5e39433a300987baf604343146516c1d289be20
