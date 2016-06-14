---
title: "Publication year summaries"
author: "Leo Lahti"
date: "2016-06-14"
output: markdown_document
---


### Publication year

[Publication year conversions](output.tables/publication_year_conversion.csv)

[Publication year discarded](output.tables/publication_year_discarded.csv)

Publication year is available for 45647 documents (100%). The publication years span 1462-1802.

![plot of chunk summarypublicationyear](figure/summarypublicationyear-1.png)

### Publication frequency

Publication frequency is available for 0 documents (NaN%). 

[Publication frequency accepted](output.tables/publication_frequency_discarded.csv)

[Publication frequency conversions](output.tables/publication_frequency_conversion.csv)

[Publication frequency discarded](output.tables/publication_frequency_discarded.csv)


### Publication interval

Publication interval is available for 0 documents (NaN%). 

[Publication interval accepted](output.tables/publication_interval_discarded.csv)

[Publication interval conversions](output.tables/publication_interval_conversion.csv)

[Publication interval discarded](output.tables/publication_interval_discarded.csv)


### Editions

Automated detection of potential first editions (first_edition field)
identifies unique author-title pairs, and proposes the first
occcurrence (earliest publication_year) as the first edition. If there
are multiple instances from the same earliest year, they are all
marked as potential first editions. Later need to check if this
information is readily available in MARC.

In this data we have 2
unique documents with an identical title and author. Out of these,
3862
have multiple occurrences, sometimes with different publication years.
Where multiple publication years are seen, the earliest occurrence is
suggested as the first edition.







