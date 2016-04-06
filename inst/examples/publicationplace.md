---
title: "Publication place preprocessing summary"
author: "Leo Lahti"
date: "2016-04-06"
output: markdown_document
---

### Publication places

[Accepted publication countries](output.tables/country_accepted.csv)

[Publication country not identified](output.tables/country_discarded.csv)

[Ambiguous publication places](output.tables/publication_place_ambiguous.csv)

[Discarded publication places](output.tables/publication_place_discarded.csv)

[Publication place conversions](output.tables/publication_place_conversion_nontrivial.csv)

[Places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``15.91``% of the documents have missing geocoordinates.



Top-20 publication places are shown together with the number of documents. This info is available for 480794 documents (99%). There are 1254 unique publication places. Overall 84.1% of the places could be matched to geographic coordinates (from the [Geonames](http://download.geonames.org/export/dump/) database).


<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />



|name        |      n|   fraction|
|:-----------|------:|----------:|
|England     | 359879| 74.4764203|
|Scotland    |  40090|  8.2965655|
|USA         |  38310|  7.9281971|
|France      |  29715|  6.1494748|
|Netherlands |   1925|  0.3983759|
|Ireland     |   1462|  0.3025587|
