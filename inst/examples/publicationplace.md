---
title: "Publication place preprocessing summary"
author: "Leo Lahti"
date: "2016-04-11"
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

[Places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``14.03``% of the documents have missing geocoordinates.



Top-20 publication places are shown together with the number of documents. This info is available for 478676 documents (99%). There are 1097 unique publication places. Overall 86% of the places could be matched to geographic coordinates (from the [Geonames](http://download.geonames.org/export/dump/) database).


<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />



|name      |      n|   fraction|
|:---------|------:|----------:|
|England   | 351409| 73.0268804|
|Scotland  |  40237|  8.3617169|
|USA       |  31886|  6.6262819|
|Ireland   |  27545|  5.7241716|
|Ambiguous |  16112|  3.3482611|
|France    |   3726|  0.7743062|
