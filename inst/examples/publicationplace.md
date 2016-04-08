---
title: "Publication place preprocessing summary"
author: "Leo Lahti"
date: "2016-04-08"
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

[Places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``11.16``% of the documents have missing geocoordinates.



Top-20 publication places are shown together with the number of documents. This info is available for 478851 documents (100%). There are 1103 unique publication places. Overall 88.8% of the places could be matched to geographic coordinates (from the [Geonames](http://download.geonames.org/export/dump/) database).


<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />



|name      |      n|  fraction|
|:---------|------:|---------:|
|England   | 354147| 73.595869|
|Scotland  |  40242|  8.362756|
|USA       |  31794|  6.607163|
|Ireland   |  26823|  5.574132|
|Ambiguous |  13863|  2.880893|
|France    |   3727|  0.774514|
