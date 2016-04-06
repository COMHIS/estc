---
title: "Publication place preprocessing summary"
author: "Leo Lahti"
date: "2016-04-07"
output: markdown_document
---

### Publication places

[Accepted publication countries](output.tables/country_accepted.csv)

[Publication country not identified](output.tables/publication_place_missingcountry.csv)

[Accepted publication places](output.tables/publication_place_accepted.csv)

[Ambiguous publication places](output.tables/publication_place_ambiguous.csv)

[Discarded publication places](output.tables/publication_place_discarded.csv)

[Publication place conversions](output.tables/publication_place_conversion_nontrivial.csv)

[Places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``15.8``% of the documents have missing geocoordinates.



Top-20 publication places are shown together with the number of documents. This info is available for 467697 documents (97%). There are 1080 unique publication places. Overall 84.2% of the places could be matched to geographic coordinates (from the [Geonames](http://download.geonames.org/export/dump/) database).


<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />



|name        |      n|   fraction|
|:-----------|------:|----------:|
|England     | 358810| 74.5648944|
|Scotland    |  40009|  8.3143359|
|USA         |  30416|  6.3207988|
|France      |  29622|  6.1557964|
|Netherlands |   1916|  0.3981671|
|Canada      |   1456|  0.3025737|
