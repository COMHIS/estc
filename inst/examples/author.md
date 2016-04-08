---
title: "Author preprocessing summary"
author: "Leo Lahti"
date: "2016-04-08"
output: markdown_document
---

## Authors

[Accepted author names](output.tables/author_accepted.csv)

[Discarded author names](output.tables/author_discarded.csv)

[Author names classified as pseudonymes](output.tables/author_pseudonymes.csv)

[Conversions from original to final names](output.tables/author_conversion_nontrivial.csv)


This auxiliary information was used to enrich the data:

  * [Author synonyme list for harmonization](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/ambiguous-authors.csv) (the first term is selected for the final data)

  * [Known pseudonymes list](https://github.com/rOpenGov/bibliographica/tree/master/inst/extdata/names/pseudonymes)
 

Top-20 uniquely identified authors and their productivity (title count). In total, there are 46365 unique authors and 253193 documents with unambiguous author information (55%).

<img src="figure/summaryauthors-1.png" title="plot of chunk summaryauthors" alt="plot of chunk summaryauthors" width="430px" /><img src="figure/summaryauthors-2.png" title="plot of chunk summaryauthors" alt="plot of chunk summaryauthors" width="430px" />

### Ambiguous authors

Authors with ambiguous living year information - can we spot here
cases where these are clearly known identical or distinct authors?
Should also add living year information from supporting sources later.

[Authors with missing life years](output.tables/authors_missing_lifeyears.csv) (Life year info can be augmented [here](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/author_info.csv)



[Authors with ambiguous life years](output.tables/author_life_ambiguous.csv)


### Life span of uniquely identified top authors

Ordered by productivity (number of documents))

![plot of chunk summaryauthorslife](figure/summaryauthorslife-1.png)


### Author productivity

Title count versus paper consumption (all authors):

![plot of chunk authortitlespapers](figure/authortitlespapers-1.png)

Publication timeline for top authors

![plot of chunk summaryTop10authorstimeline](figure/summaryTop10authorstimeline-1.png)




