---
title: "Author preprocessing summary"
author: "Leo Lahti"
date: "2016-04-09"
output: markdown_document
---

## Authors

[Accepted author names](output.tables/author_accepted.csv) All OK?

[Discarded author last names](output.tables/author_lastnames_discarded.csv) The most common ones are listed first. Pseudonymes from here can be added to the list of [known pseudonymes](https://github.com/rOpenGov/bibliographica/tree/master/inst/extdata/names/pseudonymes). Otherwise, those last names that should be accepted can be added to the [custom list](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/names/lastnames/custom.csv)

[Discarded author first names](output.tables/author_firstnames_discarded.csv). The most common ones are listed first. Pseudonymes from here can be added to the list of [known pseudonymes](https://github.com/rOpenGov/bibliographica/tree/master/inst/extdata/names/pseudonymes). Otherwise, those first names that should be accepted can be added to the [custom list](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/names/firstnames/custom.csv)

[Discarded author full names](output.tables/author_discarded.csv) Do not do anything for this before the next round. Handling the first and last names first.

[Author names classified as pseudonymes](output.tables/author_pseudonymes.csv) All OK ?

[Conversions from original to final names](output.tables/author_conversion_nontrivial.csv) FYI


Top-20 uniquely identified authors and their productivity (title count). In total, there are 46365 unique authors and 253193 documents with unambiguous author information (55%).

<img src="figure/summaryauthors-1.png" title="plot of chunk summaryauthors" alt="plot of chunk summaryauthors" width="430px" /><img src="figure/summaryauthors-2.png" title="plot of chunk summaryauthors" alt="plot of chunk summaryauthors" width="430px" />

### Ambiguous authors

Authors with ambiguous living year information - can we spot here
cases where these are clearly known identical or distinct authors?
Should also add living year information from supporting sources later.

[Authors with missing life years](output.tables/authors_missing_lifeyears.csv) (Life year info can be augmented [here](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/author_info.csv))

[Authors with ambiguous life years](output.tables/author_life_ambiguous.csv) Some of these might be synonymous and could be added to [author synonyme list](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/ambiguous-authors.csv) (the first term will be selected for the final data)


### Life span of uniquely identified top authors

Ordered by productivity (number of documents))

![plot of chunk summaryauthorslife](figure/summaryauthorslife-1.png)


### Author productivity

Title count versus paper consumption (all authors):

![plot of chunk authortitlespapers](figure/authortitlespapers-1.png)

Publication timeline for top authors

![plot of chunk summaryTop10authorstimeline](figure/summaryTop10authorstimeline-1.png)




