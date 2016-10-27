---
title: "Publication year summaries"
author: "Leo Lahti"
date: "2016-10-27"
output: markdown_document
---


### Publication year

[Publication year conversions](output.tables/publication_year_conversion.csv)

[Publication year discarded](output.tables/publication_year_discarded.csv)

Publication year is available for 481463 documents (100%). The publication years span 1462-1826.

![plot of chunk summarypublicationyear](figure/summarypublicationyear-1.png)

### Publication frequency

Publication frequency information is available for 105 documents (0%). The links are invalid if the lists are empty. The (estimated annual) frequencies are converted to plain text according to their closest match in [this table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/frequency_conversions.csv).

[Publication frequency accepted](output.tables/publication_frequency_accepted.csv)

[Publication frequency conversions](output.tables/publication_frequency_conversion.csv)

[Publication frequency discarded](output.tables/publication_frequency_discarded.csv)


### Publication interval

Publication interval is available for 3508 documents (1%). 

[Publication interval accepted](output.tables/publication_interval_accepted.csv)

[Publication interval conversions](output.tables/publication_interval_conversion_nontrivial.csv)

[Publication interval discarded](output.tables/publication_interval_discarded.csv)


### Editions

Automated detection of potential first editions (first_edition field)
identifies unique author-title pairs, and proposes the first
occcurrence (earliest publication_year) as the first edition. If there
are multiple instances from the same earliest year, they are all
marked as potential first editions. Later need to check if this
information is readily available in MARC.

There are 369870 unique
documents with an identical title and author and
44472
of those have multiple occurrences, sometimes with different publication
years.  The earliest occurrence is suggested as the first edition.

This figure shows the number of first editions per decade.

![plot of chunk firsteditions](figure/firsteditions-1.png)


