---
title: "Author preprocessing summary"
author: "Leo Lahti"
date: "2016-03-05"
output: markdown_document
---

## Authors

[Accepted author names](output.tables/author_accepted.csv)

[Discarded author names](output.tables/author_discarded.csv)

Top-20 uniquely identified authors and number of documents for each (duplicate docs not checked yet). In total, there are 6482 unique authors and 18509 documents with unambiguous author information (44%).

<img src="figure/summaryauthors-1.png" title="plot of chunk summaryauthors" alt="plot of chunk summaryauthors" width="430px" /><img src="figure/summaryauthors-2.png" title="plot of chunk summaryauthors" alt="plot of chunk summaryauthors" width="430px" />

All conversions from the original to final names:

[Author name conversions](output.tables/author_conversion_nontrivial.csv)


### Author productivity

Title count versus paper consumption (all authors):

![plot of chunk authortitlespapers](figure/authortitlespapers-1.png)

### Life span of uniquely identified top authors

Ordered by productivity (number of documents))

![plot of chunk summaryauthorslife](figure/summaryauthorslife-1.png)

### Ambiguous authors

Authors with ambiguous living year information - can we spot here
cases where these are clearly known identical or distinct authors?
Should also add living year information from supporting sources later.

[Authors with ambiguous life years](output.tables/author_life_ambiguous.csv)

[Authors with missing life years](output.tables/authors_missing_lifeyears.csv)


### Publication timeline for top authors

![plot of chunk summaryTop10authorstimeline](figure/summaryTop10authorstimeline-1.png)




