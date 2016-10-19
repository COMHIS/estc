Analysis of British Library ESTC Data Collection
============================================

This is an algorithmic toolkit for [R](http://r-project.org), designed for transparent quantitative analysis of the British Library [English Short Title Catalogue (ESTC) data collection](http://estc.bl.uk/F/?func=file&file_name=login-bl-estc). The package is under active, open development; the tools, analysis, and documentation are preliminary and constantly updated. Your [contributions](http://ropengov.github.com/contact.html), [bug reports and feedback](https://github.com/ropengov/estc) are welcome (but please, don't ask us if we know who is Livy if he is temporarily on discarded author list. Serious data science takes time)!


### ESTC data overview

An overview of knowledge production between 1477-1800 based on the ESTC metadata on almost half million documents is provided in the following automatically generated files. This is work in progress. The analyses may contain errors but we provide the complete source code and results already at this preliminary stage to improve the transparency of our work. 

 * [Overall summary of the ESTC catalogue](https://github.com/rOpenGov/estc/blob/master/inst/examples/overview.md)
 * [Document sizes across time](https://github.com/rOpenGov/estc/blob/master/inst/examples/pagecounts.md)
 * [Edinburgh summaries](https://github.com/rOpenGov/estc/blob/master/inst/examples/Edinburgh.md)
 * [North America summaries](https://github.com/rOpenGov/estc/blob/master/inst/examples/NorthAmerica.md)
 * [Princeton summaries](https://github.com/rOpenGov/estc/blob/master/inst/examples/Princeton.md)
 * [Scotland summaries](https://github.com/rOpenGov/estc/blob/master/inst/examples/Scotland.md)
 * [Page count summaries](https://github.com/rOpenGov/estc/blob/master/inst/examples/pagecounts.md)
 * Various [summary tables](https://github.com/rOpenGov/estc/tree/master/inst/examples/output.tables) of the data. 

The steps to reproduce these summaries from the raw data are fully
described at the [tutorial
page](https://github.com/rOpenGov/estc/blob/master/vignettes/tutorial.md). This
includes several steps from raw data extraction to harmonizing the
textual annotation fields, preprocessing the information, and carrying
out statistical analysis and visualization. Whereas this package
focuses on the ESTC data, it utilizes additional tools from the more
generic [bibliographica](https://github.com/rOpenGov/bibliographica)
and many other R packages listed in the
[DESCRIPTION](https://github.com/rOpenGov/estc/blob/master/DESCRIPTION)
file. The ESTC raw data is confidential and available only on a
separate agreement, so we can only publish statistical summaries and
our own analysis source code at this site. The process is fully
automated, and can be easily repeated with different subsets of the
data.


### Reproducible analysis 

We have frozen the analysis for already published material:

 * [Figures for Lahti, Ilomaki, Tolonen (2015). Liber Quarterly 25(2), pp.87–116](https://github.com/rOpenGov/estc/blob/master/inst/examples/20151023-LIBER.md)



### Acknowledgements

Authors: [Leo Lahti](https://github.com/antagomir/), [Niko Ilomaki](https://github.com/NVI/), [Mikko Tolonen](http://375humanistia.helsinki.fi/en/humanists/mikko-tolonen). Part of [rOpenGov](http://ropengov.github.io/).


You are welcome to:
  * [submit suggestions and bug reports](https://github.com/ropengov/estc/issues)
  * [send a pull request](https://github.com/ropengov/estc/) (we will acknowledge contributions)
  * join IRC at !ropengov@Freenode
  * [contact or follow us](http://ropengov.github.io/contribute/)


### Project activity

[![Throughput Graph](https://graphs.waffle.io/rOpenGov/estc/throughput.svg)](https://waffle.io/rOpenGov/estc/metrics/throughput)

