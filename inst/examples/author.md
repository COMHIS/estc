---
title: "Author preprocessing summary"
author: "Leo Lahti / Computational History Group"
date: "2018-01-10"
output: markdown_document
---

## Authors

 * 54974 [unique authors](output.tables/author_accepted.csv) These final names capture all name variants from the custom [author synonyme table](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/ambiguous-authors.csv), and exclude known pseudonymes (see below). If multiple names for the same author are still observed on this list, they should be added on the [author synonyme table](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/ambiguous-authors.csv).
 * 288108 documents have unambiguous author information (60%). 
 * 4603 [unique pseudonymes](output.tables/pseudonyme_accepted.csv) are recognized based on [custom pseudonyme lists](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/names/pseudonymes/custom_pseudonymes.csv).
 * 179 [discarded author names](output.tables/author_discarded.csv) This list should not include any real authors (if it does, please send a note to the admin). The stopword lists are considered when discarding names.
 * [Author name conversions](output.tables/author_conversion_nontrivial.csv) Non-trivial conversions from the original raw data to final names.


### Auxiliary files

 * [Author synonyme table](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/ambiguous-authors.csv)
 * [Stopwords for names](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/stopwords_for_names.csv)
 * [Stopwords for titles](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/stopwords_titles.csv)
 * [Custom pseudonyme lists](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/names/pseudonymes/custom_pseudonymes.csv)


Top-20 uniquely identified authors and their productivity (title count).

<img src="figure/summaryauthors-1.png" title="plot of chunk summaryauthors" alt="plot of chunk summaryauthors" width="430px" /><img src="figure/summaryauthors-2.png" title="plot of chunk summaryauthors" alt="plot of chunk summaryauthors" width="430px" />

### Ambiguous authors

Authors with ambiguous living year information - can we spot here
cases where these are clearly known identical or distinct authors?
Should also add living year information from supporting sources later.

3.368 &times; 10<sup>4</sup> [authors with missing life years](output.tables/authors_missing_lifeyears.csv) (Life year info can be augmented [here](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/author_info.csv))

8333 [authors with ambiguous life years](output.tables/author_life_ambiguous.csv) Some of these might be synonymous and could be added to [author synonyme list](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/ambiguous-authors.csv) (the first term will be selected for the final data)


### Life span of uniquely identified top authors

Ordered by productivity (number of documents))

![plot of chunk summaryauthorslife](figure_slides/summaryauthorslife-1.png)


### Author age

135846 documents (28%) have author age at the publication year. These have been calculated for documents where the publication year and author life years (birth and death) are available, and the document has been printed during the author's life time.



```
## $title
## [1] "Author age on the publication year"
## 
## $subtitle
## NULL
## 
## attr(,"class")
## [1] "labels"
```

![plot of chunk author_age](figure_slides/author_age-1.png)




### Author productivity

Title count versus paper consumption (all authors):

![plot of chunk authortitlespapers](figure_slides/authortitlespapers-1.png)


![plot of chunk summaryTop10authorstimeline](figure_slides/summaryTop10authorstimeline-1.png)


![plot of chunk topauth](figure_slides/topauth-1.png)![plot of chunk topauth](figure_slides/topauth-2.png)




