---
title: "Publisher preprocessing summary"
author: "Leo Lahti"
date: "2018-01-09"
output: markdown_document
---


### Publishers

 * 218423 [unique publishers](output.tables/publisher_accepted.csv)

 * 369502 documents have unambiguous publisher information (76.9%). This includes documents identified as self-published; the author name is used as the publisher in those cases (if known).

 * 0 documents are identified as self-published (0%). 

 * [Discarded publisher entries](output.tables/publisher_discarded.csv)

 * [Conversions from original to final names](output.tables/publisher_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common publishers are shown with the number of documents. 

![plot of chunk summarypublisher2](figure/summarypublisher2-1.png)

### Publication timeline for top publishers

Title count

![plot of chunk summaryTop10pubtimeline](figure/summaryTop10pubtimeline-1.png)



Title count versus paper consumption (top publishers):

![plot of chunk publishertitlespapers](figure/publishertitlespapers-1.png)

|publisher                                                                                | titles|    paper|
|:----------------------------------------------------------------------------------------|------:|--------:|
|printed by Charles Eyre and Andrew Strahan                                               |    918|  8500292|
|printed by Charles Eyre and William Strahan                                              |   1566| 11313322|
|printed by George Eyre and Andrew Strahan                                                |    940|  4363924|
|printed by John Baskett                                                                  |    707|  3249584|
|printed by John Baskett, and by the assigns of Thomas Newcomb, and Henry Hills, deceas'd |    538|  1915186|
|printed by Thomas Baskett; and by the assigns of Robert Baskett                          |   1047|  6207252|
|printed for T. Cadell, in the Strand                                                     |    517|  2062802|
|printed for the author                                                                   |   1286|  4780073|
|printed in the year                                                                      |   2950|  5465342|
|Printed in the year                                                                      |   1778|  4525905|


### Corporates

Summaries of the corporate field.

 * 0 [unique corporates](output.tables/corporate_accepted.csv)

 * 0 documents have unambiguous corporate information (NaN%). 

 * [Discarded corporate entries](output.tables/corporate_discarded.csv)

 * [Conversions from original to final names](output.tables/corporate_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common corporates are shown with the number of documents. 

![plot of chunk summarycorporate2](figure/summarycorporate2-1.png)



