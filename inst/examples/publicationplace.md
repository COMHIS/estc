---
title: "Publication place preprocessing summary"
author: "Leo Lahti"
date: "2016-04-09"
output: markdown_document
---

### Publication places

[Accepted publication countries](output.tables/country_accepted.csv)

[Publication country not identified](output.tables/publication_place_missingcountry.csv) (add to [country mappings](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/reg2country.csv))

[Accepted publication places](output.tables/publication_place_accepted.csv)

[Ambiguous publication places](output.tables/publication_place_ambiguous.csv)

[Ambiguous region-country mappings](output.tables/publication_country_ambiguous.csv)

[Discarded publication places](output.tables/publication_place_discarded.csv) (add to [synonyme list](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv) to accept)

[Publication place conversions](output.tables/publication_place_conversion_nontrivial.csv)

[Places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``14.06``% of the documents have missing geocoordinates.



Top-20 publication places are shown together with the number of documents. This info is available for 478553 documents (99%). There are 1266 unique publication places. Overall 85.9% of the places could be matched to geographic coordinates (from the [Geonames](http://download.geonames.org/export/dump/) database).


<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />



|name      |      n|   fraction|
|:---------|------:|----------:|
|England   | 351270| 72.9979946|
|Scotland  |  40220|  8.3581841|
|USA       |  31461|  6.5379620|
|Ireland   |  27543|  5.7237560|
|Ambiguous |  16113|  3.3484689|
|France    |   3721|  0.7732671|
