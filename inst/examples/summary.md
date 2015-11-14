---
title: "Preprocessing Summary"
author: "Leo Lahti"
date: "16/05/2015"
output: markdown_document
---

# Summary of the preprocessed ESTC data

## Field conversions

This document links to files that summarize the conversions from raw data to the final preprocessed version (accepted, discarded, conversions). Only some of the key tables are explicitly linked below. The complete list of those summary tables is available [here](output.tables/).




```
## Error in `$<-.data.frame`(`*tmp*`, "gatherings.original", value = structure(integer(0), .Label = c("1to", : replacement has 0 rows, data has 50295
```





## Annotated documents

Fraction of documents with entries for each annotation field (final preprocessed data).

![plot of chunk summaryannotations](figure/summaryannotations-1.png) 

Number of documents with NA entries and number of unique entries for each field:


|                      | available| unique|
|:---------------------|---------:|------:|
|parts                 |         0|      1|
|volnumber             |       156|     15|
|author_birth          |     15335|    348|
|author_death          |     15950|    370|
|author_gender         |     16903|      3|
|author_name           |     18236|   6098|
|topic                 |     21973|   7067|
|latitude              |     47485|    137|
|longitude             |     47485|    137|
|publication_decade    |     48032|     39|
|paper.consumption.km2 |     48074|   2817|
|width                 |     48108|     52|
|height                |     48108|     47|
|area                  |     48108|    299|
|pages_per_part        |     48118|    888|
|pagecount.orig        |     48691|    941|
|publication_year      |     48776|    305|
|publication_place     |     49805|    416|
|publication_country   |     49805|     34|
|volcount              |     50139|    109|
|pagecount             |     50251|   1000|
|language              |     50288|     21|
|row.index             |     50295|  50295|
|original_row          |     50295|  50295|
|title                 |     50295|  41302|
|gatherings            |     50295|     16|
|obl                   |     50295|      2|
|unity                 |     50295|      1|
|author_unique         |     50295|   6754|


## Topics




Top-20 topics and number of documents for each. In total, there are 0 unique topics and 0 documents assigned to one or more topics (NaN).


```
## Error in dfs[1:ntop, ]: incorrect number of dimensions
```

![plot of chunk summarytopics22](figure/summarytopics22-1.png) 


## Authors

Top-20 uniquely identified authors and number of documents for each (duplicate docs not checked yet). In total, there are 0 unique authors and 0 documents with unambiguous author information (NaN%).

![plot of chunk summaryauthors](figure/summaryauthors-1.png) 

[Discarded author names](output.tables/author_name_discarded.csv)

[Discarded author first names](output.tables/author_name_discarded_first.csv)

[Discarded author last names](output.tables/author_name_discarded_last.csv)


### Gender

Gender distribution for authors over time. Note that the name-gender mappings change over time. This has not been taken into account yet.

[Author genders](output.tables/author_gender_accepted.csv)

[Full name-gender mappings](output.tables/gender_known.csv)

[Names with missing gender](output.tables/gender_unknown.csv)



```
## 
## female   male 
##  0.028  0.972
```


```
## Error in eval(expr, envir, enclos): unknown column 'publication.decade'
```

```
## Error in regression_plot(p.female ~ publication.decade, dfd, main = "Female authors proportion"): object 'dfd' not found
```

![plot of chunk summarygendertime](figure/summarygendertime-1.png) 



### Ambiguous authors

Authors with ambiguous living year information - can we spot here
cases where these are clearly known identical or distinct authors?
Should also add living year information from supporting sources later.

[Authors with ambiguous life years](output.tables/author_life_ambiguous.csv)

[Authors with discarded life years](output.tables/author_life_discarded.csv)


```
## Error in eval(expr, envir, enclos): object 'author.unique' not found
```

```
## Error in split.default(dfs$author.birth, dfs$author.name): first argument must be a vector
```

```
## Error in split.default(dfs$author.death, dfs$author.name): first argument must be a vector
```

```
## Error in lapply(deaths[names(which(sapply(deaths, function(x) {: object 'deaths' not found
```

```
## Error in match(x, table, nomatch = 0L): object 'author.name' not found
```

```
## Error in `[.data.frame`(dfs, , c("author.name", "author.birth", "author.death")): undefined columns selected
```

```
## Error in order(dfs$author.name): argument 1 is not a vector
```



| Time| date| Edinburgh| varname|
|----:|----:|---------:|-------:|
| 1540| 1540|       0.2|     0.2|
| 1560| 1560|       0.8|     0.8|
| 1565| 1565|       0.2|     0.2|
| 1570| 1570|       1.6|     1.6|
| 1575| 1575|       1.8|     1.8|
| 1580| 1580|       0.8|     0.8|
| 1585| 1585|       0.4|     0.4|
| 1595| 1595|       1.8|     1.8|
| 1600| 1600|       1.2|     1.2|
| 1605| 1605|       1.2|     1.2|
| 1610| 1610|       0.6|     0.6|
| 1615| 1615|       0.2|     0.2|
| 1620| 1620|       0.2|     0.2|
| 1625| 1625|       1.2|     1.2|
| 1630| 1630|       1.8|     1.8|
| 1635| 1635|       1.2|     1.2|
| 1640| 1640|      17.8|    17.8|
| 1645| 1645|      22.6|    22.6|
| 1650| 1650|      27.2|    27.2|
| 1655| 1655|      13.8|    13.8|
| 1660| 1660|      20.2|    20.2|
| 1665| 1665|       9.4|     9.4|
| 1670| 1670|       5.6|     5.6|
| 1675| 1675|       6.8|     6.8|
| 1680| 1680|      20.8|    20.8|
| 1685| 1685|      22.0|    22.0|
| 1690| 1690|      58.2|    58.2|
| 1695| 1695|      26.0|    26.0|
| 1700| 1700|      23.8|    23.8|
| 1705| 1705|      33.4|    33.4|
| 1710| 1710|      10.6|    10.6|
| 1715| 1715|       8.4|     8.4|
| 1720| 1720|       4.6|     4.6|
| 1725| 1725|       4.2|     4.2|
| 1730| 1730|       3.2|     3.2|
| 1735| 1735|       6.6|     6.6|
| 1740| 1740|       7.2|     7.2|
| 1745| 1745|       8.0|     8.0|
| 1750| 1750|       9.6|     9.6|
| 1755| 1755|       6.0|     6.0|
| 1760| 1760|       9.4|     9.4|
| 1765| 1765|      10.4|    10.4|
| 1770| 1770|       8.0|     8.0|
| 1775| 1775|      12.4|    12.4|
| 1780| 1780|      11.2|    11.2|
| 1785| 1785|       8.0|     8.0|
| 1790| 1790|      12.4|    12.4|
| 1795| 1795|      12.6|    12.6|
| 1800| 1800|       4.6|     4.6|



### Life span of uniquely identified top authors

Ordered by productivity (number of documents))


```
## Error in `[.data.frame`(df, , c("author.unique", "author.birth", "author.death")): undefined columns selected
```

```
## Error in eval(expr, envir, enclos): object 'author.unique' not found
```

```
## Error in `$<-.data.frame`(`*tmp*`, "index", value = c(1L, 0L)): replacement has 2 rows, data has 0
```

```
## Error in eval(expr, envir, enclos): object 'author.birth' not found
```

[Authors with missing life years](output.tables/author_birth_unknown.csv)

### Publication timeline for top-10 authors

Title count


```
## Error in eval(expr, envir, enclos): object 'author.unique' not found
```

```
## Error in eval(expr, envir, enclos): unknown column 'author.unique'
```

```
## Error in layout_base(data, rows, drop = drop): At least one layer must contain all variables used for facetting
```


Paper consumption


```
## Error in eval(expr, envir, enclos): unknown column 'author.unique'
```

```
## Error in eval(expr, envir, enclos): object 'author.unique' not found
```

```
## Error in eval(expr, envir, enclos): unknown column 'author.unique'
```

```
## Error in layout_base(data, rows, drop = drop): At least one layer must contain all variables used for facetting
```


### Publication timeline for top-10 publishers

Title count


```
## Error in eval(expr, envir, enclos): object 'publication.publisher' not found
```

```
## Error in eval(expr, envir, enclos): unknown column 'publication.publisher'
```

```
## Error in layout_base(data, rows, drop = drop): At least one layer must contain all variables used for facetting
```


Paper consumption


```
## Error in eval(expr, envir, enclos): unknown column 'publication.publisher'
```

```
## Error in eval(expr, envir, enclos): object 'publication.publisher' not found
```

```
## Error in eval(expr, envir, enclos): unknown column 'publication.publisher'
```

```
## Error in layout_base(data, rows, drop = drop): At least one layer must contain all variables used for facetting
```




## Publication 

### Publication places

Top-20 publication places are shown together with the number of documents. This info is available for 0 documents (NaN%). There are 0 unique publication places. Overall 94.4% of the places could be matched to geographic coordinates (from the [Geonames](http://download.geonames.org/export/dump/) database).

[Publication countries](output.tables/country_accepted.csv)

[Publication country missing](output.tables/country_missing.csv)

[Discarded publication places](output.tables/publication_place_discarded.csv)

[Publication place conversions](output.tables/publication_place_conversions.csv)

[Places missing geocoordinate information](output.tables/absentgeocoordinates.csv)



```
## Error in dfs[1:ntop, ]: incorrect number of dimensions
```

```
## Error in layout_base(data, rows, drop = drop): At least one layer must contain all variables used for facetting
```



|  n|
|--:|


```
## Warning in min(ntop, nrow(dfs)): no non-missing arguments to min; returning
## Inf
```

```
## Error in 1:ntop: result would be too long a vector
```

```
## Error in layout_base(data, rows, drop = drop): At least one layer must contain all variables used for facetting
```

### Publishers



The 20 most common publishers are shown with the number of documents. Publisher information is available for 0 documents (NaN%). There are 0 unique publisher names (some may be synonymes, though).



```
## Error in dfs[1:ntop, ]: incorrect number of dimensions
```

```
## Error in layout_base(data, rows, drop = drop): At least one layer must contain all variables used for facetting
```


[Publishers accepted](output.tables/publisher_accepted.csv)

[Publishers discarded](output.tables/publisher_discarded.csv)





### Publication year

Publication year is available for 48776 documents (97%). The publication years span 4-1799

![plot of chunk summarypublicationyear](figure/summarypublicationyear-1.png) 

[Publication year conversions](output.tables/publication_year.csv)

[Publication year discarded](output.tables/publication_year_failed.csv)


### Titles

Top-20 titles are shown together with the number of documents. This info is available for 0 documents (NaN%). There are 0 unique titles.

[Publication titles](output.tables/title_accepted.csv)

[Publication titles discarded](output.tables/title_discarded.csv)

[Title harmonization table](output.tables/title_conversions.csv)


```
## Error in dfs[1:ntop, ]: incorrect number of dimensions
```

![plot of chunk summarytitle](figure/summarytitle-1.png) 


## Language

The 21 unique languages are shown together with the number of documents. This info is available for 50288 documents (100%). 

![plot of chunk summarylang](figure/summarylang-1.png) 



## Page counts

[Converted pages](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/pages_accepted.csv)

[Discarded page info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/documentpages-discarded.csv)



## Document size comparisons

[Discarded dimension info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/dimensions_discarded.csv)

[Dimension conversion table](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/dimension_conversions.csv)


Document size (area) info in cm2 is available for 0 documents (NaN%). Estimates of document size (area) info in gatherings system are available for 50295 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png) 

Compare gatherings and cm2 sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.


```
## Error in data.frame(indices, value = values): arguments imply differing number of rows: 4, 0
```

```
## Error in Math.factor(x, base): 'log' not meaningful for factors
```

Document dimension histogram (surface area). Few document sizes dominate publishing.


```
## stat_bin: binwidth defaulted to range/30. Use 'binwidth = x' to adjust this.
```

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png) 



Compare gatherings and page counts. Page count information is estimated for -1560 documents and updated (changed) for 1101 documents. 

![plot of chunk summarypagecomp](figure/summarypagecomp-1.png) 

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.


```
## Error in eval(expr, envir, enclos): object 'height.original' not found
```

```
## Error in eval(expr, envir, enclos): unknown column 'gatherings.original'
```

```
## Error in ggplot(df4, aes(x = gatherings.original, y = height.original)): object 'df4' not found
```

```
## Error in eval(expr, envir, enclos): object 'gatherings.original' not found
```

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|1to           |             2.482531|                      2|        4250|                  NA|                    NA|         NA|         10.43590|                  8|      39|
|2long         |             7.714286|                      5|           8|                  NA|                    NA|         NA|         23.00000|                 23|       1|
|2fo           |            61.802493|                      4|       11534|            724.6260|              716.0000|         46|         16.84774|                 12|    1944|
|4long         |             5.000000|                      5|           4|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|4to           |            43.791068|                     12|       16529|            411.6667|              439.0000|         27|         15.87012|                  8|   12188|
|8vo           |           143.460685|                     68|       11607|            406.3343|              413.3333|        181|         28.47323|                 28|    3810|
|12long        |            67.000000|                     50|          10|             24.0000|               24.0000|          1|         28.80000|                 24|       5|
|12mo          |           184.089753|                    162|        3026|            260.5657|              211.0000|         47|         26.31478|                 24|     521|
|16mo          |           163.645570|                    116|          81|                  NA|                    NA|         NA|         30.46154|                 24|      13|
|18mo          |           177.575758|                    158|          33|            172.0000|              172.0000|          1|         41.00000|                 41|       2|
|24long        |           244.000000|                    244|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|24mo          |           193.525000|                    181|          43|                  NA|                    NA|          2|         23.27273|                 24|      11|
|32mo          |           179.333333|                    193|           6|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|48mo          |           128.000000|                    128|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|64mo          |           197.000000|                    197|           2|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|NA            |            14.094726|                      2|        3004|                  NA|                    NA|         NA|         18.87097|                 15|     403|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png) 


## Average document dimensions 


```
## Error in eval(expr, envir, enclos): object 'gatherings.original' not found
```

```
## Error in eval(expr, envir, enclos): object 'publication.decade' not found
```



```
## Error in eval(expr, envir, enclos): object 'gatherings.original' not found
```



| publication_decade|gatherings | paper.consumption.km2|  n|
|------------------:|:----------|---------------------:|--:|

## Histograms of all entries for numeric variables

![plot of chunk summary-histograms](figure/summary-histograms-1.png) ![plot of chunk summary-histograms](figure/summary-histograms-2.png) ![plot of chunk summary-histograms](figure/summary-histograms-3.png) ![plot of chunk summary-histograms](figure/summary-histograms-4.png) ![plot of chunk summary-histograms](figure/summary-histograms-5.png) ![plot of chunk summary-histograms](figure/summary-histograms-6.png) ![plot of chunk summary-histograms](figure/summary-histograms-7.png) ![plot of chunk summary-histograms](figure/summary-histograms-8.png) ![plot of chunk summary-histograms](figure/summary-histograms-9.png) ![plot of chunk summary-histograms](figure/summary-histograms-10.png) ![plot of chunk summary-histograms](figure/summary-histograms-11.png) ![plot of chunk summary-histograms](figure/summary-histograms-12.png) ![plot of chunk summary-histograms](figure/summary-histograms-13.png) 

## Histograms of the top entries for factor variables

![plot of chunk summary-bars](figure/summary-bars-1.png) ![plot of chunk summary-bars](figure/summary-bars-2.png) ![plot of chunk summary-bars](figure/summary-bars-3.png) ![plot of chunk summary-bars](figure/summary-bars-4.png) 

```
## Error in dfs[1:ntop, ]: incorrect number of dimensions
```

![plot of chunk summary-bars](figure/summary-bars-5.png) 














<!--
### Testing rCharts example - perhaps only in HTML with knit2html
<iframe srcdoc=' &lt;!doctype HTML&gt;
&lt;meta charset = &#039;utf-8&#039;&gt;
&lt;html&gt;
  &lt;head&gt;
    
    &lt;link rel=&#039;stylesheet&#039; href=&#039;//cdnjs.cloudflare.com/ajax/libs/nvd3/1.1.15-beta/nv.d3.min.css&#039;&gt;
    
    
    
    &lt;script src=&#039;//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    
    &lt;script src=&#039;//d3js.org/d3.v3.min.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    
    &lt;script src=&#039;//cdnjs.cloudflare.com/ajax/libs/nvd3/1.1.15-beta/nv.d3.min.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    
    &lt;script src=&#039;//nvd3.org/assets/lib/fisheye.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    
    
    &lt;style&gt;
    .rChart {
      display: block;
      margin-left: auto; 
      margin-right: auto;
      width: 800px;
      height: 400px;
    }  
    &lt;/style&gt;
    
  &lt;/head&gt;
  &lt;body &gt;
    
    &lt;div id = &#039;chart4a393b8b5b21&#039; class = &#039;rChart nvd3&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
 $(document).ready(function(){
      drawchart4a393b8b5b21()
    });
    function drawchart4a393b8b5b21(){  
      var opts = {
 &quot;dom&quot;: &quot;chart4a393b8b5b21&quot;,
&quot;width&quot;:    800,
&quot;height&quot;:    400,
&quot;x&quot;: &quot;Hair&quot;,
&quot;y&quot;: &quot;Freq&quot;,
&quot;group&quot;: &quot;Eye&quot;,
&quot;type&quot;: &quot;multiBarChart&quot;,
&quot;id&quot;: &quot;chart4a393b8b5b21&quot; 
},
        data = [
 {
 &quot;Hair&quot;: &quot;Black&quot;,
&quot;Eye&quot;: &quot;Brown&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:             32 
},
{
 &quot;Hair&quot;: &quot;Brown&quot;,
&quot;Eye&quot;: &quot;Brown&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:             53 
},
{
 &quot;Hair&quot;: &quot;Red&quot;,
&quot;Eye&quot;: &quot;Brown&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:             10 
},
{
 &quot;Hair&quot;: &quot;Blond&quot;,
&quot;Eye&quot;: &quot;Brown&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:              3 
},
{
 &quot;Hair&quot;: &quot;Black&quot;,
&quot;Eye&quot;: &quot;Blue&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:             11 
},
{
 &quot;Hair&quot;: &quot;Brown&quot;,
&quot;Eye&quot;: &quot;Blue&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:             50 
},
{
 &quot;Hair&quot;: &quot;Red&quot;,
&quot;Eye&quot;: &quot;Blue&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:             10 
},
{
 &quot;Hair&quot;: &quot;Blond&quot;,
&quot;Eye&quot;: &quot;Blue&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:             30 
},
{
 &quot;Hair&quot;: &quot;Black&quot;,
&quot;Eye&quot;: &quot;Hazel&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:             10 
},
{
 &quot;Hair&quot;: &quot;Brown&quot;,
&quot;Eye&quot;: &quot;Hazel&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:             25 
},
{
 &quot;Hair&quot;: &quot;Red&quot;,
&quot;Eye&quot;: &quot;Hazel&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:              7 
},
{
 &quot;Hair&quot;: &quot;Blond&quot;,
&quot;Eye&quot;: &quot;Hazel&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:              5 
},
{
 &quot;Hair&quot;: &quot;Black&quot;,
&quot;Eye&quot;: &quot;Green&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:              3 
},
{
 &quot;Hair&quot;: &quot;Brown&quot;,
&quot;Eye&quot;: &quot;Green&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:             15 
},
{
 &quot;Hair&quot;: &quot;Red&quot;,
&quot;Eye&quot;: &quot;Green&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:              7 
},
{
 &quot;Hair&quot;: &quot;Blond&quot;,
&quot;Eye&quot;: &quot;Green&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:              8 
} 
]
  
      if(!(opts.type===&quot;pieChart&quot; || opts.type===&quot;sparklinePlus&quot; || opts.type===&quot;bulletChart&quot;)) {
        var data = d3.nest()
          .key(function(d){
            //return opts.group === undefined ? &#039;main&#039; : d[opts.group]
            //instead of main would think a better default is opts.x
            return opts.group === undefined ? opts.y : d[opts.group];
          })
          .entries(data);
      }
      
      if (opts.disabled != undefined){
        data.map(function(d, i){
          d.disabled = opts.disabled[i]
        })
      }
      
      nv.addGraph(function() {
        var chart = nv.models[opts.type]()
          .width(opts.width)
          .height(opts.height)
          
        if (opts.type != &quot;bulletChart&quot;){
          chart
            .x(function(d) { return d[opts.x] })
            .y(function(d) { return d[opts.y] })
        }
          
         
        
          
        

        
        
        
      
       d3.select(&quot;#&quot; + opts.id)
        .append(&#039;svg&#039;)
        .datum(data)
        .transition().duration(500)
        .call(chart);

       nv.utils.windowResize(chart.update);
       return chart;
      });
    };
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  nvd3  ' id='iframe-chart4a393b8b5b21'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 400px;}</style>
-->

