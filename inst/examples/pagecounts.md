---
title: "Page count summary"
author: "Leo Lahti"
date: "2016-12-25"
output: markdown_document
---


## ESTC/ECCO comparison



There are 157643 ECCO documents (99.7%) with a direct match in ESTC in our data based on the system control number. The total page count for the matched ESTC documents is 90.7% of the total page count over the same ECCO documents.

Comparison between the page counts available in ESTC and ECCO can be used to validate our automated page count cleaning and estimation procedure.

<img src="figure/ecco2-1.png" title="plot of chunk ecco2" alt="plot of chunk ecco2" width="500px" />


## Page counts

Page count: distribution of document sizes

![plot of chunk pagecountstat](figure/pagecountstat-1.png)


## Documents with missing pages over years 

![plot of chunk missingpages](figure/missingpages-1.png)![plot of chunk missingpages](figure/missingpages-2.png)


## Estimated paper consumption

Note: there are 0 documents that have some dimensions information but sheet area information could not be calculated for some reason. 

![plot of chunk paperconsumption](figure/paperconsumption-1.png)![plot of chunk paperconsumption](figure/paperconsumption-2.png)

![plot of chunk paperconsumption2b](figure/paperconsumption2b-1.png)![plot of chunk paperconsumption2b](figure/paperconsumption2b-2.png)
![plot of chunk pagecounts-gatherings-relab](figure/pagecounts-gatherings-relab-1.png)![plot of chunk pagecounts-gatherings-relab](figure/pagecounts-gatherings-relab-2.png)![plot of chunk pagecounts-gatherings-relab](figure/pagecounts-gatherings-relab-3.png)

![plot of chunk paperconsumption2](figure/paperconsumption2-1.png)



## Pamphlets vs. Books

![plot of chunk doctypes](figure/doctypes-1.png)![plot of chunk doctypes](figure/doctypes-2.png)


![plot of chunk doctypes2](figure/doctypes2-1.png)![plot of chunk doctypes2](figure/doctypes2-2.png)


## Top authors

![plot of chunk topauth](figure/topauth-1.png)![plot of chunk topauth](figure/topauth-2.png)




## Nature of the documents over time

Estimated paper consumption by document size

![plot of chunk 20150611paris-paper6](figure/20150611paris-paper6-1.png)


Gatherings height: does it change over time (1600's)? How increased printing activity is related to book size trends? Alternatively, we could use area (height x width), or median over time. Note that only original (not augmented) dimension info is being used here.

![plot of chunk pagecounts-gatsize](figure/pagecounts-gatsize-1.png)![plot of chunk pagecounts-gatsize](figure/pagecounts-gatsize-2.png)![plot of chunk pagecounts-gatsize](figure/pagecounts-gatsize-3.png)![plot of chunk pagecounts-gatsize](figure/pagecounts-gatsize-4.png)


Page counts: does it change over time (1600's)? Also suggested we could calculate some kind of factor for each time period based on this ? In principle, we could calculate this separately for any given publication place as well but leẗ́s discuss this later. Would help to specify some specific places of interest.

![plot of chunk pagecounts-gatsize2](figure/pagecounts-gatsize2-1.png)![plot of chunk pagecounts-gatsize2](figure/pagecounts-gatsize2-2.png)![plot of chunk pagecounts-gatsize2](figure/pagecounts-gatsize2-3.png)![plot of chunk pagecounts-gatsize2](figure/pagecounts-gatsize2-4.png)


Same for documents that have a sufficient number of pages:

![plot of chunk pagecounts-gatsize3](figure/pagecounts-gatsize3-1.png)![plot of chunk pagecounts-gatsize3](figure/pagecounts-gatsize3-2.png)![plot of chunk pagecounts-gatsize3](figure/pagecounts-gatsize3-3.png)![plot of chunk pagecounts-gatsize3](figure/pagecounts-gatsize3-4.png)
