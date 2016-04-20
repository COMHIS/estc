---
title: "Publication place preprocessing summary"
author: "Leo Lahti"
date: "2016-04-20"
output: markdown_document
---

### Publication places

[Accepted publication countries](output.tables/country_accepted.csv)

[Publication country not identified](output.tables/publication_place_missingcountry.csv) (add to [country mappings](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/reg2country.csv))

[Accepted publication places](output.tables/publication_place_accepted.csv)

[Ambiguous publication places](output.tables/publication_place_ambiguous.csv)

[Ambiguous region-country mappings](output.tables/publication_country_ambiguous.csv)

[Discarded publication places](output.tables/publication_place_discarded.csv) (add to [synonyme list](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv) to accept; or add to [publication place stopwords](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/stopwords_for_place.csv) to completely discard the term)

[Publication place conversions](output.tables/publication_place_conversion_nontrivial.csv)

[Places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``47.26``% of the documents have missing geocoordinates.



Top-20 publication places are shown together with the number of documents. This info is available for 481202 documents (100%). There are 9036 unique publication places. Overall 52.7% of the places could be matched to geographic coordinates (from the [Geonames](http://download.geonames.org/export/dump/) database).


<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />



|name             |      n|    fraction|
|:----------------|------:|-----------:|
|England          | 210826| 43.81209672|
|Ireland          |  21052|  4.37485064|
|Scotland         |  17523|  3.64148336|
|Ambiguous        |   6675|  1.38714269|
|Northern Ireland |    689|  0.14318222|
|Canada           |    384|  0.07979967|
