---
title: "Publication place preprocessing summary"
author: "Leo Lahti"
date: "2016-04-06"
output: markdown_document
---

### Publication places

[Accepted publication countries](output.tables/country_accepted.csv)

[Publication country not identified](output.tables/country_discarded.csv)

[Accepted publication places](output.tables/publication_place_accepted.csv)

[Ambiguous publication places](output.tables/publication_place_ambiguous.csv)

[Discarded publication places](output.tables/publication_place_discarded.csv)

[Publication place conversions](output.tables/publication_place_conversion_nontrivial.csv)

[Places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``15.9``% of the documents have missing geocoordinates.



Top-20 publication places are shown together with the number of documents. This info is available for 480785 documents (99%). There are 1206 unique publication places. Overall 84.1% of the places could be matched to geographic coordinates (from the [Geonames](http://download.geonames.org/export/dump/) database).


<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />



|name        |      n|   fraction|
|:-----------|------:|----------:|
|England     | 359826| 74.4654520|
|USA         |  41610|  8.6111272|
|Scotland    |  40087|  8.2959446|
|France      |  29716|  6.1496817|
|Netherlands |   1919|  0.3971342|
|Ireland     |   1456|  0.3013170|
