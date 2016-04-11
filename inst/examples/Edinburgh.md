---
title: "Edinburgh publishing timelines: alternative versions"
author: "Leo Lahti"
output: markdown_document
---







```
## Error in tapply(df$unity, list(df$publication_decade, df$publication_place), : arguments must have same length
```

```
## Error in publications[is.na(publications)] <- 0: object 'publications' not found
```

```
## Error in eval(expr, envir, enclos): object 'publications' not found
```

```
## Error in melt(publications): object 'publications' not found
```

```
## Error in names(dfm) <- c("Time", "Place", "Documents"): object 'dfm' not found
```

```
## Error in filter_(.data, .dots = lazyeval::lazy_dots(...)): object 'dfm' not found
```

```
## Error in transform(dfm, date = as.character(Time)): object 'dfm' not found
```

```
## Error: Key column 'Place' does not exist in input.
```

```
## Error in eval(expr, envir, enclos): object 'dfs' not found
```

```
## Error in eval(expr, envir, enclos): object 'dfs' not found
```

```
## Error in ggplot(dfs, aes(x = date, y = varname)): object 'dfs' not found
```

```
## Error in p + geom_bar(stat = "identity", fill = "darkgray", col = "black"): non-numeric argument to binary operator
```

```
## Error in seq(min(dfm$Time), max(dfm$Time), 20): object 'dfm' not found
```

```
## Error in p + ggtitle(paste("Documents published in ", varname)): non-numeric argument to binary operator
```

```
## Error in p + ylab("Documents / Year"): non-numeric argument to binary operator
```

```
##     [1]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##    [14]   NA   NA    4    2   NA   NA   NA    2   NA    2    4    4   NA
##    [27]   NA   NA   NA   NA    4    2   NA   NA   NA   NA   NA   NA   NA
##    [40]    4    4   NA   NA   NA    2   NA   NA   NA   NA   NA   NA   NA
##    [53]    4    4   NA   NA   NA   NA   NA    2   NA   NA   NA   NA   NA
##    [66]   NA   NA    4   NA   NA   NA    4   NA    4    4   NA   NA   NA
##    [79]   NA   NA   NA   NA   NA   NA   NA   NA    4   NA    4   NA   NA
##    [92]   NA    4    4   NA    4   NA    4    4   NA   NA   NA   NA   NA
##   [105]   NA   NA    4   NA   NA   NA   NA    2   NA   NA   NA   NA    4
##   [118]   NA    4    4   NA   NA    4   NA    2   NA   NA   NA    4   NA
##   [131]   NA    4    4   NA   NA   NA   NA   NA   NA   NA   NA    4   NA
##   [144]    4    4    4    4    4   NA   NA   NA    2   NA    4    4    4
##   [157]    4    4    4    4    4    4    2   NA    4    2   NA   NA   NA
##   [170]   NA    4   NA    4    2   NA   NA    4    4   NA    4    4   NA
##   [183]   NA    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##   [196]   NA   NA   NA   NA   NA   NA    2    4   NA   NA   NA   NA   NA
##   [209]   NA   NA   NA    4    4   NA   NA    4    4   NA   NA   NA   NA
##   [222]   NA    2    4    8   NA   NA   NA   NA   NA   NA   NA   NA   NA
##   [235]   NA   NA    2   NA   NA   NA   NA   NA   NA   NA    4   NA   NA
##   [248]    4   NA   NA   NA   NA   NA    2    4    4    2    4    4   NA
##   [261]   NA   NA   NA    4   NA    2    4   NA   NA    4   NA   NA    2
##   [274]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##   [287]   NA   NA   NA    2   NA   NA   NA   NA   NA   NA   NA   NA   NA
##   [300]   NA   NA   NA   NA   NA   NA   NA   NA   NA    4    2    4   NA
##   [313]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    2   NA   NA
##   [326]   NA   NA    4    2    4    4    4   NA   NA    2    4   NA   NA
##   [339]   NA   NA    4   NA   NA   NA   NA   NA   NA   NA   NA    4    4
##   [352]    4   NA   NA   NA   NA    4    4    4    4   NA   NA   NA   NA
##   [365]    4    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##   [378]    4   NA    4   NA   NA   NA   NA   NA   NA   NA   NA   NA    4
##   [391]    4    4   NA   NA   NA    2    4    2   NA   NA    4    4   NA
##   [404]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4   NA
##   [417]   NA    2   NA   NA   NA   NA   NA   NA    4    4   NA   NA    4
##   [430]    4    4   NA   NA   NA    4   NA   NA   NA   NA    2    2   NA
##   [443]   NA   NA   NA   NA    2   NA   NA   NA   NA   NA    4   NA   NA
##   [456]   NA   NA   NA   NA   NA   NA   NA    4    4   NA   NA   NA   NA
##   [469]    4   NA    4   NA   NA    4    4    4   NA    4   NA   NA   NA
##   [482]   NA   NA   NA    2    2   NA    4    4   NA   NA   NA    2   NA
##   [495]    2    4   NA    4   NA   NA    4    4   NA   NA   NA    4   NA
##   [508]   NA   NA    4    4   NA   NA    2   NA   NA   NA   NA   NA   NA
##   [521]    4   NA   NA    2   NA   NA    2   NA   NA   NA   NA   NA   NA
##   [534]    4    2   NA    4   NA   NA    8    4    4   NA    4    4   NA
##   [547]   NA   NA    4    5   NA   NA   NA    4    2   NA   NA   NA   NA
##   [560]    4   NA    4   NA   NA   NA    4   NA   NA   NA    4   NA    2
##   [573]    2   NA    4   NA   NA   NA    4   NA   NA   NA   NA    4   NA
##   [586]    2   NA    4    2   NA    4   NA    4    4    2   NA   NA   NA
##   [599]   NA   NA   NA   NA   NA    4   NA   NA   NA   NA   NA   NA   NA
##   [612]   NA   NA   NA   NA    4   NA   NA   NA    2    2    4   NA    2
##   [625]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##   [638]   NA   NA   NA    2   NA   NA    4    2   NA    4   NA   NA   NA
##   [651]   NA   NA    4   NA    2    2   NA   NA   NA   NA   NA   NA   NA
##   [664]   NA   NA   NA    4   NA   NA    4    4    2   NA   NA   NA    4
##   [677]    4    4    4    4   NA   NA   NA   NA   NA    4    4    4   NA
##   [690]    2    4    4   NA    2   NA   NA    4    4    2   NA    4   NA
##   [703]   NA   NA    2    2    4   NA    2   NA   NA    4   NA   NA   NA
##   [716]   NA    4    4   NA   NA   NA   NA   NA   NA   NA   NA    4    4
##   [729]   NA    4   NA   NA   NA   NA   NA    4   NA   NA   NA   NA    4
##   [742]    4    4    4   NA    2   NA    4   NA    2    4    4    4    4
##   [755]    4    2   NA    4   NA    2    2   NA   NA   NA   NA   NA   NA
##   [768]   NA    4    2   NA   NA    4   NA   NA   NA   NA   NA    4   NA
##   [781]    2    8    4    4   NA   NA   NA    4   NA    2    2   NA   NA
##   [794]   NA   NA   NA   NA    4    4    4   NA    2   NA   NA   NA   NA
##   [807]    2   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##   [820]   NA   NA    2   NA   NA    4    4    2   NA   NA   NA   NA   NA
##   [833]   NA   NA   NA   NA    2   NA    4    4   NA    4   NA   NA   NA
##   [846]   NA   NA   NA   NA   NA   NA   NA    4    4   NA    4   NA   NA
##   [859]   NA   NA   NA   NA   NA    2   NA   NA   NA   NA   NA   NA   NA
##   [872]    2    4   NA    2    2    4    2    4   NA   NA   NA   NA   NA
##   [885]   NA    4    4   NA   NA   NA    4    4   NA   NA    2    4   NA
##   [898]   NA    2    4    2   NA   NA   NA   NA    2    2    2   NA   NA
##   [911]    2    4    2   NA    2   NA   NA   NA   NA   NA   NA    4   NA
##   [924]    6    2   NA   NA   NA   NA    2   NA   NA   NA   NA   NA   NA
##   [937]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##   [950]   NA   NA    4   NA    4   NA   NA   NA   NA   NA   NA   NA   NA
##   [963]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    8   NA   NA
##   [976]   NA   NA   NA   NA   NA   NA    4    2    2   NA   NA   NA   NA
##   [989]   NA   NA    4    4    4    4    4    4    7    4   NA   NA    2
##  [1002]    2   NA    2   NA    2   NA   NA   NA   NA    2    2    2    2
##  [1015]    4    2   NA   NA   NA   NA    2   NA    4   NA   NA   NA   NA
##  [1028]   NA   NA   NA    4   NA    2   NA    4   NA    4   NA    4   NA
##  [1041]   NA    4   NA   NA   NA    4    4    8    4   NA   NA   NA   NA
##  [1054]   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA   NA    2
##  [1067]   NA   NA    2   NA    2    2   NA   NA   NA   NA   NA   NA   NA
##  [1080]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    2   NA   NA
##  [1093]   NA   NA   NA   NA   NA   NA   NA   NA   NA    4    4   NA   NA
##  [1106]    2   NA   NA   NA   NA   NA   NA    4    4   NA    4   NA   NA
##  [1119]   NA   NA   NA   NA    4   NA   NA   NA    4   NA    2    4    4
##  [1132]   NA   NA   NA   NA   NA   NA   NA   NA    4    4   NA    4   NA
##  [1145]    4    4    4    4    4    4    2   NA    2   NA   NA    4    2
##  [1158]    4   NA    4    2    2    2    4   NA    4    2    2   NA   NA
##  [1171]   NA    2    2   NA    4   NA   NA   NA   NA    4    2   NA   NA
##  [1184]    4    4    4   NA    4    2    2   NA   NA    4    4    4   NA
##  [1197]   NA   NA   NA    2    4    4   NA   NA   NA   NA   NA   NA   NA
##  [1210]   NA    2   NA   NA   NA    2   NA   NA    2   NA   NA   NA    2
##  [1223]    2    4   NA   NA    4   NA   NA    4   NA   NA    4    2    4
##  [1236]    4    2   NA   NA   NA   NA   NA    8   NA    4    4   NA   NA
##  [1249]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [1262]    2   NA   NA    4   NA   NA   NA   NA    2    2    4    2    4
##  [1275]   NA    4    4   NA   NA   NA   NA   NA   NA    4   NA    4    4
##  [1288]    4    4   NA   NA    2    4    4   NA   NA   NA   NA    4   NA
##  [1301]    4   NA   NA    2   NA   NA   NA    4    4   NA   NA   NA    2
##  [1314]   NA   NA   NA   NA   NA    2    2    2   NA   NA    4    4   NA
##  [1327]   NA    2   NA   NA   NA    4    4    2    2   NA   NA    4   NA
##  [1340]    4   NA   NA   NA    2    4    4   NA   NA    2   NA    4    4
##  [1353]    4    4    4   NA   NA   NA   NA    4   NA    4   NA   NA    4
##  [1366]   NA   NA   NA    4    4   NA   NA    4   NA   NA    4   NA    6
##  [1379]    2   NA   NA   NA   NA   NA   NA    2   NA   NA   NA    2   NA
##  [1392]   NA   NA    2   NA   NA   NA   NA    4   NA   NA    4    4   NA
##  [1405]   NA   NA   NA   NA    4   NA   NA    2   NA    4    4   NA   NA
##  [1418]   NA    2   NA   NA   NA   NA   NA    4   NA   NA    4   NA   NA
##  [1431]   NA   NA    2   NA   NA   NA   NA    4    4    4   NA    4   NA
##  [1444]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    2
##  [1457]    4   NA   NA   NA   NA   NA   NA   NA    4   NA    4    4    4
##  [1470]    4    4   NA   NA   NA   NA   NA    4   NA   NA   NA   NA   NA
##  [1483]   NA   NA   NA   NA   NA   NA   NA    4   NA   NA    4   NA    2
##  [1496]   NA    2   NA   NA   NA    4   NA    4    4   NA    4   NA   NA
##  [1509]   NA   NA   NA   NA   NA    8   NA   NA    4    4    4    4   NA
##  [1522]   NA   NA   NA   NA   NA    4    4   NA    4   NA   NA   NA    4
##  [1535]    2   NA   NA    4    4   NA   NA   NA    4    4    4   NA   NA
##  [1548]   NA   NA    2   NA   NA    4   NA   NA    2   NA   NA   NA    2
##  [1561]   NA   NA    4   NA   NA   NA   NA    4   NA   NA   NA   NA   NA
##  [1574]   NA    4   NA    2   NA    4   NA   NA   NA   NA   NA   NA   NA
##  [1587]   NA   NA   NA   NA   NA    2    2   NA   NA   NA   NA   NA   NA
##  [1600]   NA   NA    4   NA   NA   NA   NA   NA   NA   NA    4   NA   NA
##  [1613]    4    4   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA
##  [1626]   NA   NA   NA   NA   NA   NA   NA   NA    2   NA   NA   NA    2
##  [1639]   NA   NA    2   NA   NA   NA   NA    4   NA   NA   NA    4   NA
##  [1652]   NA    2   NA   NA   NA   NA    4   NA    4    4    4   NA   NA
##  [1665]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    2
##  [1678]   NA   NA   NA   NA    4    4   NA   NA   NA   NA   NA    4   NA
##  [1691]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [1704]   NA   NA   NA   NA   NA    2    4    2   NA   NA   NA   NA   NA
##  [1717]   NA   NA   NA   NA   NA   NA   NA   NA   NA    2   NA    4   NA
##  [1730]   NA   NA   NA   NA   NA    4   NA    4    4   NA   NA   NA   NA
##  [1743]   NA   NA    2    2   NA   NA   NA   NA    2   NA   NA   NA   NA
##  [1756]   NA    4    4   NA   NA   NA    4   NA   NA    4   NA    4   NA
##  [1769]   NA   NA   NA   NA   NA    4   NA   NA    4    4   NA   NA    4
##  [1782]    4   NA   NA   NA   NA    2    2   NA   NA    2    4    2    2
##  [1795]   NA   NA   NA   NA   NA   NA    4    2   NA    4   NA    4   NA
##  [1808]   NA   NA   NA    4   NA   NA    4   NA   NA   NA   NA   NA   NA
##  [1821]   NA   NA   NA   NA   NA   NA   NA    2   NA   NA    4   NA   NA
##  [1834]    4   NA   NA    2   NA   NA   NA   NA   NA   NA   NA   NA    4
##  [1847]    2   NA   NA   NA   NA   NA    2   NA   NA   NA   NA   NA   NA
##  [1860]   NA   NA   NA   NA   NA   NA    2   NA   NA    4    4    2    2
##  [1873]   NA   NA   NA    4   NA   NA    4   NA   NA    2   NA    4   NA
##  [1886]   NA   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA    4
##  [1899]    4   NA    4    4   NA   NA   NA   NA   NA    4   NA   NA   NA
##  [1912]   NA   NA   NA    2   NA   NA   NA   NA    6    4   NA    4    4
##  [1925]   NA    4    4   NA   NA   NA   NA   NA   NA   NA    4    4    2
##  [1938]   NA   NA   NA    4    4    4    4   NA    4   NA   NA    4   NA
##  [1951]    2   NA   NA   NA   NA    4   NA    2   NA   NA   NA   NA   NA
##  [1964]    2   NA    2    4   NA   NA    4   NA   NA   NA   NA   NA   NA
##  [1977]    2   NA   NA   NA   NA   NA   NA   NA    4    4   NA   NA   NA
##  [1990]   NA    4   NA   NA   NA   NA    4   NA   NA   NA   NA   NA   NA
##  [2003]    6   NA   NA   NA   NA   NA   NA   NA   NA    9   NA   NA   NA
##  [2016]   NA    2   NA    2   NA   NA    2    2   NA    2   NA    2   NA
##  [2029]   NA   NA   NA   NA   NA    2    2   NA   NA   NA   NA   NA   NA
##  [2042]   NA    2   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [2055]   NA   NA   NA   NA   NA   NA   NA   NA   NA    4   NA   NA    2
##  [2068]   NA   NA    4   NA   NA   NA   NA   NA    2   NA   NA   NA    4
##  [2081]   NA    4   NA   NA    2   NA    4   NA   NA   NA   NA   NA    2
##  [2094]   NA    6    4   NA   NA   NA    2   NA   NA   NA   NA    4   NA
##  [2107]    2   NA    4   NA    4   NA   NA   NA    4   NA    2    4   NA
##  [2120]    2   NA    4    2   NA   NA    2   NA    4   NA   NA   NA   NA
##  [2133]   NA    2    4    4    4   NA   NA   NA   NA   NA   NA   NA   NA
##  [2146]   NA    2   NA   NA   NA   NA   NA    2   NA   NA   NA   NA   NA
##  [2159]    4    4    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [2172]   NA   NA   NA   NA    2   NA    2    4    2   NA   NA   NA    4
##  [2185]    2   NA   NA   NA   NA    4   NA    4   NA    4    4    2   NA
##  [2198]    4    6    4   NA   NA    4    4   NA   NA    2    2   NA    2
##  [2211]   NA   NA    2    2    2   NA    4   NA   NA   NA   NA   NA   NA
##  [2224]   NA   NA   NA    2    4    2    4   NA    2   NA   NA   NA   NA
##  [2237]    4   NA   NA   NA   NA   NA    4   NA    4    4   NA   NA   NA
##  [2250]    2    2    4   NA   NA   NA   NA   NA    2    4    4    4   NA
##  [2263]    4    4    4    4   NA   NA    4   NA   NA   NA   NA   NA   NA
##  [2276]    4   NA   NA    4   NA   NA    4   NA   NA   NA   NA   NA   NA
##  [2289]   NA   NA   NA   NA   NA   NA    4    4   NA    4   NA   NA   NA
##  [2302]   NA   NA   NA   NA   NA   NA   10   NA   NA   NA   NA   NA   NA
##  [2315]   NA   NA    4   NA    4   NA   NA   NA   NA   NA    4   NA   NA
##  [2328]   NA   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA   NA
##  [2341]   NA   NA   NA   NA   NA   NA    4   NA   NA   NA    4    4   NA
##  [2354]   NA   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA    2
##  [2367]    2   NA   NA   NA   NA   NA    4   NA    2    4   NA    4    4
##  [2380]    2   NA   NA   NA   NA   NA   NA   NA    4   NA   NA    4    2
##  [2393]   NA   NA   NA   NA    2   NA   NA   NA   NA   NA   NA   NA   NA
##  [2406]    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [2419]    2    4   NA   NA   NA    4    2   NA   NA   NA   NA   NA   NA
##  [2432]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [2445]    4   NA    8    4   NA    4   NA    2   NA   NA   NA   NA   NA
##  [2458]   NA   NA   NA   NA   NA   NA   NA   NA    4    4    4    4   NA
##  [2471]   NA    2    4    2   NA   NA   NA    2   NA   NA   NA    4   NA
##  [2484]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4   NA
##  [2497]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    2   NA   NA
##  [2510]   NA   NA   NA    2   NA    2   NA    4   NA   NA    2   NA   NA
##  [2523]   NA   NA   NA    4   NA    2    4   NA   NA   NA   NA   NA   NA
##  [2536]   NA   NA   NA   NA   NA   NA    4   NA   NA   NA    4   NA    4
##  [2549]   NA   NA    4   NA   NA   NA   NA   NA    4   NA   NA   NA   NA
##  [2562]   NA    2   NA   NA   NA   NA    4   NA   NA    4   NA   NA   NA
##  [2575]   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA   NA    2
##  [2588]   NA   NA    2   NA    2   NA    2   NA   NA   NA   NA   NA   NA
##  [2601]   NA   NA   NA   NA   NA   NA    4    4   NA    4   NA   NA   NA
##  [2614]    4   NA   NA   NA   NA    2   NA   NA   NA    4   NA   NA   NA
##  [2627]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4
##  [2640]   NA   NA    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [2653]   NA   NA   NA    4   NA    4   NA    4    4    2    4   NA   NA
##  [2666]   NA   NA   NA   NA    4   NA    2    4   NA   NA    4   NA    4
##  [2679]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [2692]   NA   NA   NA    4   NA   NA   NA    4   NA    4    4   NA   NA
##  [2705]    4   NA   NA    4   NA    2    2   NA   NA   NA   NA   NA   NA
##  [2718]   NA   NA   NA   NA   NA   NA   NA    4   NA   NA   NA    4   NA
##  [2731]   NA    4    4   NA   NA   NA   NA   NA   NA   NA    4    4   NA
##  [2744]   NA    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [2757]   NA   NA   NA   NA   NA    4   NA   NA   NA   NA   NA   NA   NA
##  [2770]   NA   NA    4   NA   NA   NA    2   NA   NA    4   NA    4   NA
##  [2783]   NA   NA    4    4    4    4   NA    4   NA   NA   NA    4   NA
##  [2796]   NA   NA   NA   NA    2   NA    4    2   NA   NA   NA    4    4
##  [2809]   NA    4   NA   NA    4    4   NA    6   NA   NA   NA   NA   NA
##  [2822]    4   NA   NA   NA    8   NA   NA   NA   NA   NA    2   NA    4
##  [2835]   NA    4   NA   NA   NA   NA   NA    4    8   NA   NA    4   NA
##  [2848]   NA   NA   NA   NA    4   NA   NA    2   NA   NA    2   NA   NA
##  [2861]   NA   NA    4   NA   NA   NA    4   NA   NA   NA   NA    4    4
##  [2874]   NA   NA    4   NA    2   NA   NA   NA   NA   NA   NA   NA   NA
##  [2887]   NA    4    4   NA   NA    4   NA   NA   NA    2   NA    4   NA
##  [2900]    4   NA   NA    4    4    4    4    4   NA   NA   NA   NA   NA
##  [2913]   NA   NA   NA    2    4   NA   NA   NA   NA   NA   NA    4   NA
##  [2926]   NA   NA    4    4    4    2    4   NA    4   NA   NA   NA   NA
##  [2939]   NA    4   NA   NA   NA   NA   NA   NA    7   NA   NA   NA    2
##  [2952]   NA   NA   NA   NA    4   NA   NA   NA    4    2    2   NA    2
##  [2965]   NA   NA    6    2   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [2978]    4    2   NA    4   NA   NA   NA   NA    2   NA    2   NA   NA
##  [2991]   NA   NA   NA   NA    4   NA   NA   NA   NA   NA   NA    4   NA
##  [3004]   NA   NA    4   NA   NA    4   NA   NA   NA   NA   NA    2    4
##  [3017]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4   NA   NA
##  [3030]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [3043]   NA   NA   NA   NA   NA   NA    2    4    2   NA    4   NA   NA
##  [3056]   NA   NA   NA   NA   NA   NA   NA   NA    2    8    4   NA   NA
##  [3069]   NA   NA   NA    2   NA   NA   NA    4    2   NA    4   NA   NA
##  [3082]    4   NA   NA   NA    2   NA   NA   NA   NA   NA   NA   NA   NA
##  [3095]   NA    6   NA   NA   NA    6   NA   NA   NA   NA   NA   NA   NA
##  [3108]   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA    4   NA
##  [3121]   NA    2    2   NA   NA    4    2   NA   NA   NA   NA   NA   NA
##  [3134]   NA   NA   NA   NA   NA    4   NA   NA    2   NA   NA   NA    4
##  [3147]   NA   NA   NA   NA   NA    4    4    2    4   NA   NA   NA    4
##  [3160]    4   NA   NA    4   NA   NA    4   NA   NA    4   NA   NA   NA
##  [3173]   NA   NA   NA   NA   NA    4   NA   NA   NA    4   NA   NA    2
##  [3186]    4   NA   NA    4   NA   NA   NA   NA   NA   NA   NA   NA    2
##  [3199]   NA    2   NA   NA    4    4   NA   NA   NA   NA   NA    4    2
##  [3212]    4    4   NA   NA   NA   NA   NA   NA   NA    4    4   NA   NA
##  [3225]   NA   NA    4    2    4    4    4    4   NA    4   NA   NA   NA
##  [3238]   NA    4    4   NA   NA   NA   NA    4   NA    4   NA    2   NA
##  [3251]   NA   NA    4    4   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [3264]   NA   NA   NA   NA    2   NA   NA    4   NA   NA    8   NA   NA
##  [3277]    2   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [3290]   NA   NA    4   NA   NA   NA    4   NA   NA    4    4    4   NA
##  [3303]   NA    4   NA   NA   NA    2   NA    4   NA   NA   NA    4   NA
##  [3316]   NA    4   NA   NA   NA    4   NA   NA    4    4   NA    2    4
##  [3329]   NA    4    4    4   NA   NA   NA   NA   NA    2    2   NA   NA
##  [3342]   NA   NA   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA
##  [3355]   NA   NA   NA    4   NA   NA   NA   NA   NA   NA   NA    4   NA
##  [3368]    4   NA   NA    4   NA    4   NA    6    5    4   NA   NA    4
##  [3381]    4   NA    4   NA   NA   NA    4   NA   NA    4   NA    4   NA
##  [3394]   NA    2    4    4   NA    2    4   NA   NA    4   NA   NA    4
##  [3407]   NA   NA    4   NA   NA   NA   NA   NA   NA    2   NA    4    4
##  [3420]    4    4    4   NA   NA    4   NA    2   NA   NA    4   NA   NA
##  [3433]   NA   NA   NA    2    4    4   NA   NA   NA   NA   NA   NA   NA
##  [3446]    4   NA    2    4   NA   NA   NA   NA   NA    4   NA    6   NA
##  [3459]   NA   NA    4   NA    4    4    2    2    4   NA   NA   NA   NA
##  [3472]    4   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA    4
##  [3485]    2   NA   NA   NA   NA   NA    4   NA   NA   NA   NA   NA   NA
##  [3498]   NA   NA   NA   NA   NA   NA   NA   10   NA   NA   10    6    6
##  [3511]   NA   NA    7   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [3524]   NA   NA   NA    7   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [3537]   NA   NA   NA   NA   NA   10   NA   NA   NA   10   NA   NA   10
##  [3550]    9   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [3563]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [3576]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [3589]   NA   NA   NA    6   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [3602]   NA   NA   NA   NA   NA    7   NA   NA   NA   NA   NA    6   10
##  [3615]   NA    6    7   NA    6   NA    7   NA   NA   NA   NA   NA   NA
##  [3628]   10   NA   NA   NA   NA   NA   NA   NA   NA   NA    7   NA    9
##  [3641]    8   NA    9    8   NA   NA    8    6   NA    7   NA   NA   NA
##  [3654]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    7    6
##  [3667]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    7   NA
##  [3680]   NA   NA   NA   NA   NA    9   NA   NA   NA    7   NA   NA   NA
##  [3693]   NA    8   NA   NA   NA   NA   NA   NA   NA   NA    9   NA   NA
##  [3706]   NA    6    7   NA    9    8   NA   NA   NA    9   NA   NA   NA
##  [3719]   NA   NA    9   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [3732]   NA   NA    6   NA   NA    7    9   NA   NA   NA   NA   NA   NA
##  [3745]   NA   NA   NA   NA    9    7   10   NA   NA   NA   NA    8    7
##  [3758]    7   NA   NA   NA    6   NA    6   NA   NA   NA   NA    2   NA
##  [3771]   NA   NA    8    8   NA   NA   NA   NA   NA   10   NA   NA   NA
##  [3784]   NA    8   NA   NA   NA    8   NA   NA   NA   NA   NA   NA   NA
##  [3797]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    7   NA
##  [3810]   10    7   NA   NA   NA    7    6    6   NA   NA   NA   NA   NA
##  [3823]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    6
##  [3836]   10   NA   NA   NA   NA   NA   NA    8   NA   NA   NA   10   NA
##  [3849]   NA   NA   NA   NA    7   NA   NA   NA   NA   NA   NA   NA   NA
##  [3862]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [3875]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [3888]    9    8    6   NA   NA    7   NA   NA   NA   NA   NA   NA   NA
##  [3901]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [3914]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [3927]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [3940]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [3953]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [3966]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [3979]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [3992]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [4005]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [4018]   NA   NA   NA   NA   NA   NA   NA    7   NA   NA   NA   NA   NA
##  [4031]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    8    6
##  [4044]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [4057]   NA   NA   NA   NA   NA   NA   NA   NA   NA    1   NA   10   NA
##  [4070]   NA   NA   NA   10   NA   NA   NA   NA   NA   NA   NA    3   NA
##  [4083]   NA   NA   NA   NA   NA   NA   NA   NA   NA    8   NA   NA    3
##  [4096]   NA   NA   NA   NA   NA   NA   10   NA   NA   NA   NA   NA   NA
##  [4109]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [4122]   NA    7   NA   NA    4   NA   NA   NA   NA   NA   NA   NA   NA
##  [4135]   NA   NA   NA   NA   NA   NA   NA    4   NA   NA   NA    4   NA
##  [4148]   NA    2    4    2    4   NA    4   NA   NA   NA   NA   NA    4
##  [4161]    4    4   NA   NA   NA   NA   NA    4    4    4    4   NA   NA
##  [4174]    4    4    4   NA   NA   NA    2    4    4    4    2    4    4
##  [4187]    4   NA    4   NA   NA    4   NA    4   NA   NA   NA    4   NA
##  [4200]    2   NA    2   NA   NA    2    2   NA    4    4    2    2   NA
##  [4213]    4   NA   NA    4    2   NA    2   NA   NA   NA    4   NA    2
##  [4226]    4   NA   NA   NA   NA   NA   NA    4    4   NA   NA    2   NA
##  [4239]   NA    4   NA    4   NA    2   NA   NA    2    4    4   NA    2
##  [4252]   NA   NA    2    4    4    4   NA    2   NA    2   NA    2    2
##  [4265]    2    2    4    2   NA   NA   NA    4   NA    4   NA    2    4
##  [4278]   NA    4   NA    4    4   NA   NA   NA    4   NA   NA   NA   NA
##  [4291]   NA    4   NA   NA    6   NA   NA    4   NA   NA   NA   NA   NA
##  [4304]   NA   NA    2   NA    2   NA   NA    4   NA    2   NA   NA   NA
##  [4317]    4    4   NA   NA   NA   NA    4   NA   NA   NA   NA   NA   NA
##  [4330]   NA    4    4   NA    2   NA    4   NA    4    4   NA    9    4
##  [4343]    4    4    4    4   NA   NA   NA    4    4    4    4    4    4
##  [4356]    4    4   NA    4   NA    2   NA   NA    2    4   NA    4    2
##  [4369]    4    4    4    4   NA   NA   NA    2    2    4   NA   NA   NA
##  [4382]   NA    2    4   NA    2   NA    2    4    4    4   NA    4    4
##  [4395]    4   NA    4   NA   NA    4   NA    4   NA    4   NA    4    4
##  [4408]   NA   NA   NA   NA    2   NA    4    4    4    4   NA    4    4
##  [4421]   NA   NA   NA   NA   NA   NA   NA   NA   NA    4   NA    2   NA
##  [4434]   NA   NA   NA   NA   NA   NA    4    4    4   NA   NA   NA    2
##  [4447]   NA   NA   NA    4    4    2    4   NA   NA    4    4   NA    2
##  [4460]   NA   NA   NA   NA   NA   NA    2   NA   NA   NA   NA   NA   NA
##  [4473]   NA   NA   NA   NA   NA   NA   NA   NA    4   NA    4   NA    4
##  [4486]   NA   NA   NA   NA   NA   NA    4    4    4    4   NA   NA    4
##  [4499]   NA    2    4    2    2    4   NA   NA   NA   NA   NA   NA   NA
##  [4512]    4    4   NA   NA    2    4    4   NA   NA    4    2   NA   NA
##  [4525]    8    4   NA   NA   NA   NA   NA   NA   NA    4   NA   NA   NA
##  [4538]    4    4    4    4   NA   NA   NA   NA   NA   NA    4   NA    4
##  [4551]   NA   NA   NA    2    6    4    4    4   NA    2   NA   NA   NA
##  [4564]   NA   NA   NA    4    4    4    4   NA    2   NA    2   NA   NA
##  [4577]   NA    4    4   NA   NA   NA   NA    2   NA   NA   NA    2    2
##  [4590]   NA    4    4   NA   NA    2    2    2   NA    4    4    4    4
##  [4603]    2   NA    4    4    4    4    4    4    4    4    4    4    2
##  [4616]    4    4    4   NA    4   NA    4   NA    4    4   NA    4    4
##  [4629]    4    4    4   NA   NA   NA   NA   NA   NA    4   NA   NA   NA
##  [4642]   NA   NA   NA    2    2    2    2    8   NA   NA    4    4   NA
##  [4655]    4    4    4   NA   NA   NA    2   NA   NA   NA   NA    4   NA
##  [4668]   NA   NA    2    2   NA   NA    4   NA   NA   NA    4   NA    2
##  [4681]   NA    4    4   NA   NA    4   NA   NA    4   NA   NA   NA   NA
##  [4694]   NA   NA    4   NA   NA   NA   NA   NA   NA    4    2   NA    4
##  [4707]   NA   NA    2   NA    2   NA    4   NA   NA    2   NA   NA   NA
##  [4720]   NA   NA    8   NA   NA    4   NA    4    4   NA    4   NA    8
##  [4733]   NA   NA   NA   NA   NA   NA    4   NA    4    4    4   NA    4
##  [4746]    4    2    2   NA    4    4   NA   NA   NA   NA   NA    4    4
##  [4759]    4   NA   NA   NA   NA    2   NA   NA   NA   NA    4   NA   NA
##  [4772]   NA   NA   NA    6   NA    4    4   NA   NA   NA   NA    4   NA
##  [4785]    4   NA   NA    4   NA   NA   NA    4   NA    4   NA   NA    2
##  [4798]   NA   NA    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [4811]   NA   NA   NA   NA    4   NA   NA   NA    6    2   NA   NA   NA
##  [4824]    4   NA   NA   NA   NA   NA   NA   NA   NA    4    4   NA   NA
##  [4837]    4   NA   NA   NA   NA   NA   NA   NA    2    2   NA   NA   NA
##  [4850]   NA   NA    2   NA    8   NA    4   NA   NA    4    4    4   NA
##  [4863]   NA    4    4    4    4   NA   NA    4    4   NA   NA   NA   NA
##  [4876]   NA   NA   NA   NA    4   NA   NA   NA   NA    4   NA   NA    4
##  [4889]   NA   NA   NA   NA   NA   NA    4    2    2    2   NA   NA   NA
##  [4902]    2   NA   NA   NA   NA    2   NA    4    4   NA   NA    4   NA
##  [4915]   NA   NA    4    4    4   NA    4    4   NA    2    2   NA    4
##  [4928]    4   NA   NA   NA   NA   NA    4    2    4   NA   NA    2   NA
##  [4941]   NA    4    4    2    4   NA   NA    8   NA    6    4   NA   NA
##  [4954]   NA    2    4   NA   NA   NA   NA    2    4    4    4   NA   NA
##  [4967]   NA    4   NA   NA   NA    4   NA    4    4    4   NA    4   NA
##  [4980]   NA    2    2    2    4   NA   NA   NA   NA   NA   NA    2    8
##  [4993]   NA    4   NA   NA   NA   NA   NA   NA    2   NA   NA   NA    4
##  [5006]   NA    2   NA    2   NA   NA    4   NA   NA   NA    2    2    2
##  [5019]   NA   NA   NA   NA   NA    4   NA   NA    4   NA   NA    2   NA
##  [5032]    4   NA    4   NA   NA   NA   NA    2    2   NA    4   NA   NA
##  [5045]    4   NA   NA    2    2   NA   NA    2    2   NA   NA   NA   NA
##  [5058]   NA    4    4   NA    2    4   NA   NA   NA   NA   NA   NA   NA
##  [5071]   NA   NA    4    4    4   NA   NA   NA   NA   NA   NA    4   NA
##  [5084]   NA    2   NA   NA    4    4   NA   NA   NA   NA   NA   NA    4
##  [5097]   NA    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [5110]    4   NA   NA    4    4   NA   NA   NA   NA    2    2    6   NA
##  [5123]   NA   NA   NA   NA    4   NA   NA   NA   NA   NA   NA   NA    4
##  [5136]   NA    4   NA    4    4   NA   NA    4   NA    4    2   NA    4
##  [5149]   NA   NA   NA   NA    2    2    2   NA   NA   NA    2   NA    2
##  [5162]    2   NA   NA    2   NA   NA   NA    4    2    2    4   NA   NA
##  [5175]   NA   NA    2   NA   NA   NA   NA    2    2   NA   NA   NA   NA
##  [5188]   NA   NA   NA    4   NA   NA   NA    4    2   NA    4   NA   NA
##  [5201]   NA   NA   NA   NA   NA   NA   NA   NA    2    4    4    4   NA
##  [5214]   NA   NA    4    4   NA    4   NA    4   NA   NA   NA   NA   NA
##  [5227]   NA   NA    2    4    4   NA    2    2   NA    2    2    4    4
##  [5240]   NA   NA    4    4    4   NA   NA   NA   NA   NA   NA   NA    4
##  [5253]   NA    2    4   NA   NA   NA   NA   NA    2   NA   NA   NA   NA
##  [5266]   NA   NA   NA    4   NA   NA   NA    4   NA   NA   NA    2    4
##  [5279]    2   NA    4   NA    4    2    2   NA   NA   NA   NA   NA   NA
##  [5292]   NA   NA   NA    4   NA   NA   NA    4    4   NA    4    4    4
##  [5305]    2   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [5318]   NA   NA   NA    2   NA   NA    4   NA   NA   NA   NA   NA   NA
##  [5331]   NA   NA    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [5344]    4   NA   NA    2   NA   NA    2   NA   NA   NA   NA   NA    4
##  [5357]   NA    4   NA   NA    2   NA   NA   NA   NA   NA   NA    2   NA
##  [5370]    2    4    2   NA   NA    2    4    4   NA   NA   NA   NA   NA
##  [5383]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    2   NA   NA
##  [5396]   NA   NA   NA   NA   NA   NA   NA   NA   NA    4    2   NA   NA
##  [5409]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [5422]   NA    4    4   NA    2   NA   NA   NA   NA   NA   NA   NA   NA
##  [5435]   NA   NA   NA    4    4   NA   NA   NA   NA   NA   NA   NA   NA
##  [5448]   NA   NA   NA   NA    4   NA   NA    4    4   NA    4    4   NA
##  [5461]   NA    4    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [5474]   NA    2    2   NA   NA    4   NA   NA    2   NA   NA   NA   NA
##  [5487]    4   NA   NA   NA    4    2   NA   NA    2    4   NA   NA   NA
##  [5500]    4    4   NA   NA    4   NA    4   NA   NA   NA    4   NA   NA
##  [5513]   NA    2    4    4    4   NA   NA    4    4    4   NA   NA   NA
##  [5526]    2   NA   NA    4    4   NA    2   NA    2   NA   NA   NA    2
##  [5539]   NA   NA   NA    2    2    4    2   NA    4   NA   NA    4   NA
##  [5552]    4   NA   NA   NA   NA   NA   NA   NA   NA    4   NA    2   NA
##  [5565]   NA   NA   NA   NA   NA   NA    4    4   NA   NA   NA   NA   NA
##  [5578]   NA   NA    2   NA   NA   NA    4    4   NA   NA   NA   NA   NA
##  [5591]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [5604]    4   NA   NA    4   NA    4   NA    4   NA   NA   NA   NA   NA
##  [5617]   NA    4    4    4   NA   NA   NA   NA    4   NA   NA   NA    4
##  [5630]   NA    4   NA   NA   NA   NA   NA   NA -Inf   NA   NA    2   NA
##  [5643]   NA   NA   NA   NA   NA   NA   NA    4   NA   NA    4   NA   NA
##  [5656]    2   NA   NA   NA    4   NA   NA   NA   NA   NA   NA   NA   NA
##  [5669]    2    2    4    2   NA    2   NA    4    2   NA   NA   NA    4
##  [5682]   NA   NA    4   NA    2   NA   NA   NA   NA   NA   NA   NA   NA
##  [5695]   NA   NA   NA   NA   NA    4   NA   NA   NA   NA   NA   NA   NA
##  [5708]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4
##  [5721]   NA   NA    4    4   NA   NA    4   NA   NA   NA   NA   NA    4
##  [5734]   NA   NA   NA   NA   NA   NA   NA   NA   NA    4    4   NA   NA
##  [5747]   NA   NA   NA    4   NA   NA   NA   NA    2   NA    4   NA   NA
##  [5760]   NA    2   NA   NA    2    4    4    2    2    2   NA    4   NA
##  [5773]    2   NA   NA   NA   NA    2   NA   NA   NA   NA   NA    4   NA
##  [5786]   NA   NA    4   NA   NA    2   NA   NA   NA    4   NA    4   NA
##  [5799]   NA   NA   NA    4   NA   NA    4   NA   NA   NA   NA   NA   NA
##  [5812]   NA   NA   NA   NA   NA    4   NA   NA    4   NA    4    4    4
##  [5825]   NA    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4
##  [5838]   NA   NA    4   NA   NA   NA   NA   NA    2   NA    2    2   NA
##  [5851]   NA    2   NA   NA    2   NA   NA   NA    2   NA   NA   NA    4
##  [5864]   NA    4    4   NA    4    4   NA    2    4   NA   NA   NA   NA
##  [5877]   NA   NA   NA   NA   NA   NA   NA   NA    4   NA   NA    4   NA
##  [5890]   NA   NA    4    2   NA    2   NA   NA   NA   NA   NA   NA   NA
##  [5903]   NA    6   NA   NA   NA    2    2    2   NA    2   NA   NA   NA
##  [5916]    2   NA    2   NA    2   NA    4   NA   NA    4    2    4   NA
##  [5929]   NA   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA   NA
##  [5942]   NA   NA   NA   NA   NA    4   NA   NA    4   NA   NA    4   NA
##  [5955]   NA   NA   NA   NA   NA   NA   NA   NA   NA    4    4    4    4
##  [5968]   NA   NA   NA   NA    2   NA    4    4    4   NA   NA   NA   NA
##  [5981]   NA   NA    4    6   NA    4    4   NA    2    4   NA   NA    2
##  [5994]    4    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4
##  [6007]   NA    4   NA   NA    4    2   NA    4    2    4   NA    4    2
##  [6020]    2    2    2   NA   NA   NA   NA   NA   NA   NA    4   NA   NA
##  [6033]   NA   NA   NA   NA   NA    4    4   NA    8    4   NA   NA    4
##  [6046]   NA   NA    4   NA   NA    4   NA   NA    4   NA   NA   NA   NA
##  [6059]    4   NA   NA   NA   NA   NA   NA   NA   NA   NA    4   NA    4
##  [6072]   NA   NA   NA    4    4   NA   NA   NA   NA    2    2   NA   NA
##  [6085]   NA   NA   NA    2   NA   NA   NA   NA    4    4   NA   NA   NA
##  [6098]   NA   NA   NA   NA    4   NA   NA   NA   NA   NA   NA    4   NA
##  [6111]    4    2   NA    2    2   NA    2    2    2   NA    2    2   NA
##  [6124]    4    2   NA    4   NA   NA   NA   NA    4    2   NA   NA   NA
##  [6137]    4   NA    2   NA   NA    4   NA   NA   NA   NA    4   NA    4
##  [6150]    4   NA    4   NA   NA    2   NA   NA   NA   NA    4    4   NA
##  [6163]   NA   NA    4   NA   NA   NA   NA   NA   NA   NA   NA   NA    4
##  [6176]   NA   NA   NA   NA   NA    4   NA   NA   NA   NA   NA   NA   NA
##  [6189]   NA   NA   NA   NA   NA   NA    2   NA   NA    2    2   NA   NA
##  [6202]   NA   NA    4    4   NA   NA   NA   NA   NA   NA   NA    2    4
##  [6215]   NA    2   NA   NA   NA   NA   NA    2   NA   NA    2   NA    4
##  [6228]   NA   NA   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA
##  [6241]   NA   NA   NA   NA   NA   NA   NA   NA    4    4    4   NA    4
##  [6254]    4   NA   NA   NA   NA    2   NA   NA   NA    2   NA    4   NA
##  [6267]    4   NA   NA   NA   NA   NA   NA   NA   NA    4    4   NA   NA
##  [6280]   NA    4   NA   NA    6   NA    4   NA   NA   NA    2    4   NA
##  [6293]    4   NA   NA   NA   NA   NA   NA    4    4   NA    2   NA   NA
##  [6306]    4    4    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [6319]   NA   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA   NA
##  [6332]   NA   NA   NA    4   NA   NA   NA   NA    2   NA   NA    4   NA
##  [6345]    2   NA   NA    4   NA   NA    4    6    2   NA   NA   NA   NA
##  [6358]   NA    2    4    4   NA   NA   NA    2   NA   NA   NA    4   NA
##  [6371]   NA   NA   NA    4   NA    4    4   NA   NA   NA   NA   NA   NA
##  [6384]    4    2    4   NA    4   NA    2    4    4   NA   NA   NA   NA
##  [6397]   NA   NA    4   NA    2   NA   NA   NA    4   NA   NA   NA   NA
##  [6410]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [6423]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4
##  [6436]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [6449]    4    4   NA    2   NA   NA    4   NA   NA   NA   NA   NA    4
##  [6462]    4   NA   NA   NA   NA   NA    4   NA   NA   NA   NA   NA    2
##  [6475]   NA    4   NA   NA    2   NA    4    4   NA   NA   NA    2    4
##  [6488]   NA   NA    6   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [6501]   NA    2   NA   NA   NA   NA    2   NA   NA   NA   NA   NA    4
##  [6514]   NA    4    4    4    4   NA   NA   NA   NA   NA    4    4    4
##  [6527]   NA   NA   NA   NA   NA   NA   NA    4    4   NA    4   NA   NA
##  [6540]   NA   NA    4   NA    2    4    4    4   NA   NA    4   NA   NA
##  [6553]   NA   NA   NA   NA   NA    4   NA    4   NA   NA   NA    4   NA
##  [6566]   NA   NA    4    4   NA   NA   NA    6   NA   NA   NA    4   NA
##  [6579]   NA    2   NA   NA   NA   NA   NA   NA    4   NA   NA    4   NA
##  [6592]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4   NA   NA
##  [6605]    4   NA    2   NA   NA   NA   NA   NA   NA    4    2   NA   NA
##  [6618]    4   NA   NA   NA   NA   NA   NA   NA    4   NA    4   NA   NA
##  [6631]   NA   NA   NA    2    4   NA   NA    2   NA    4   NA   NA   NA
##  [6644]   NA   NA   NA   NA    4   NA   NA   NA   NA    2   NA   NA   NA
##  [6657]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4
##  [6670]    4   NA   NA   NA    2    4   NA   NA   NA   NA    4   NA   NA
##  [6683]   NA   NA   NA   NA   NA   NA    4   NA    2   NA    2   NA    2
##  [6696]   NA   NA   NA   NA   NA    4   NA   NA    4   NA   NA    4   NA
##  [6709]    4   NA   NA   NA    4   NA    4    4   NA   NA   NA   NA   NA
##  [6722]    4    4   NA   NA   NA    4    4   NA   NA   NA   NA   NA    4
##  [6735]    2   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [6748]   NA   NA    2    2   NA   NA    4   NA   NA    2   NA -Inf   NA
##  [6761]   NA    4    2   NA   NA   NA   NA    2    4   NA    4   NA   NA
##  [6774]   NA   NA   NA    4   NA   NA    4    4   NA   NA   NA   NA   NA
##  [6787]    4    4   NA    4   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [6800]   NA   NA   NA   NA    2   NA   NA   NA   NA    4   NA    4   NA
##  [6813]   NA    8    8   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [6826]   NA   NA   NA   NA    4   NA    4   NA    4   NA    4    4   NA
##  [6839]   NA   NA   NA   NA   NA   NA   NA   NA    4   NA   NA   NA    4
##  [6852]   NA    2   NA   NA   NA   NA   NA   NA    4   NA   NA   NA    4
##  [6865]   NA    4   NA    4   NA   NA   NA    4    4   NA   NA   NA   NA
##  [6878]   NA    2   NA   NA    4   NA    4   NA    2   NA    4   NA   NA
##  [6891]   NA    2    4    4   NA    4    4    4    4    4   NA   NA   NA
##  [6904]   NA    4   NA    4   NA   NA   NA   NA   NA   NA    4   NA   NA
##  [6917]   NA   NA   NA    4    4    4    4    4    4    4   NA   NA   NA
##  [6930]   NA   NA   NA    4   NA   NA   NA   NA    4    4   NA   NA   NA
##  [6943]   NA    4   NA    4    4    4   NA   NA    4   NA   NA   NA    4
##  [6956]    4    4    4    4   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [6969]   NA   NA    4   NA   NA    4   NA    4    4   NA   NA   NA   NA
##  [6982]   NA    4    4    4    4    4    4    4    4    4    4    4   NA
##  [6995]    4    4    4    4    4    4    4   NA    4    4   NA   NA    4
##  [7008]    4   NA   NA   NA    4    4   NA   NA   NA   NA   NA   NA   NA
##  [7021]    4   10    4    4   NA   NA   NA    2   NA   NA   NA    2   NA
##  [7034]   NA   NA   NA   NA   NA    2   NA   NA   NA   NA   NA    4   NA
##  [7047]    2   NA    2    4    8    4    4   NA   NA    2   NA    2    4
##  [7060]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4    2
##  [7073]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    2
##  [7086]   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA   NA   NA
##  [7099]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    2
##  [7112]    2   NA    2    4    4    4    4    4   NA   NA   NA   NA   NA
##  [7125]   NA   NA   NA   NA   NA   NA    4    4    6    4    4    4   NA
##  [7138]   NA   NA    4   NA   NA    2    4    2    2    4    2   NA    2
##  [7151]    2    4    2    4   NA    2    4    2   NA   NA    4    4   NA
##  [7164]    4    4   NA    4   NA    4   NA    2    4    4    4    4    4
##  [7177]    4    4    4    4    4    4    4    4    4    4    4   NA    4
##  [7190]    4    4   NA    4    4    4    4    4    4    4    4    4    4
##  [7203]   NA   NA    4    4    4   NA   NA    2   NA    4    4    4    4
##  [7216]    4   NA   NA   NA   NA   NA    4    2   NA    4    2    4   NA
##  [7229]   NA    2   NA    4   NA    4   NA   NA   NA   NA    4   NA   NA
##  [7242]   NA   NA    4   NA   NA   NA   NA   NA    2   NA   NA   NA   NA
##  [7255]    4    4    4   NA   NA    4   NA   NA   NA   NA    4   NA   NA
##  [7268]    4    2   NA    4   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [7281]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [7294]    4    4    4    4    2    4    2    2   NA   NA   NA    2    4
##  [7307]   NA    6    2   NA   NA   NA    2   NA   NA   NA    6    2   NA
##  [7320]    4   NA    2    4    4    4   NA   NA   NA    4   NA    4   NA
##  [7333]   NA   NA    2   NA    4   NA   NA    4   NA    2   NA   NA   NA
##  [7346]   NA   NA    2    2    2    2   NA    2    2    2    2   NA   NA
##  [7359]    2    2   NA   NA   NA    2   NA   NA   NA   NA   NA   NA   NA
##  [7372]   NA    2   NA   NA   NA   NA   NA   NA   NA    4    4    4   NA
##  [7385]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [7398]   NA   NA    2   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [7411]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4    2
##  [7424]    4   NA   NA   NA   NA   NA    4    4   NA   NA   NA   NA   NA
##  [7437]   NA   NA    4   NA   NA    2   NA    2    4    4   NA   NA   NA
##  [7450]   NA    2    2   NA    2   NA   NA    2    2   NA   NA   NA   NA
##  [7463]   NA   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA   NA
##  [7476]   NA   NA   NA    4   NA   NA    2    2    2   NA    2   NA   NA
##  [7489]   NA   NA    2   NA    4   NA   NA   NA   NA   NA   NA   NA   NA
##  [7502]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [7515]   NA   NA   NA    4   NA   NA   NA   NA   NA   NA   NA    4   NA
##  [7528]    4   NA    2   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [7541]   NA   NA   NA   NA    2   NA   NA    4    2    4   NA   NA    4
##  [7554]   NA   NA    4    2   NA   NA   NA   NA   NA    2   NA   NA   NA
##  [7567]   NA   NA   NA   NA   NA   NA   NA   NA   NA    2   NA   NA   NA
##  [7580]   NA   NA    2    4    4   NA   NA   NA   NA   NA   NA   NA   NA
##  [7593]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4
##  [7606]    2   NA    2   NA   NA   NA   NA    4    4   NA   NA   NA   NA
##  [7619]   NA    4   NA    2   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [7632]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [7645]   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA   NA   NA
##  [7658]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4
##  [7671]   NA   NA   NA   NA   NA   NA    2   NA   NA   NA   NA   NA   NA
##  [7684]   NA    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [7697]   NA   NA   NA   NA   NA   NA   NA    4   NA    4    4   NA    2
##  [7710]    2   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [7723]    4    4    4    2   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [7736]   NA    2   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [7749]   NA   NA   NA   NA   NA    4   NA   NA   NA    2   NA   NA   NA
##  [7762]   NA   NA   NA    2    2   NA    2    2    2    4    4   NA    4
##  [7775]    4    4   NA   NA   NA    2    4   NA   NA   NA   NA   NA   NA
##  [7788]   NA   NA    4    4    4   NA   NA   NA   NA   NA   NA   NA   NA
##  [7801]   NA   NA   NA    4    4   NA   NA   NA   NA   NA   NA   NA    4
##  [7814]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4   NA
##  [7827]   NA   NA    2   NA   NA   NA   NA   NA    4   NA   NA   NA    2
##  [7840]    2    2   NA   NA    4   NA   NA   NA   NA   NA   NA   NA   NA
##  [7853]   NA   NA   NA   NA    2   NA   NA    4   NA    4   NA   NA   NA
##  [7866]    4    4    4   NA    4    4    4    4   NA    4    4    4    4
##  [7879]    2    4    4    4    4    4    4    4   NA   NA   NA   NA   NA
##  [7892]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4   NA
##  [7905]   NA    4    4    2   NA    4   NA   NA    2    4    4   NA   NA
##  [7918]    4    4   NA    4    4    4   NA    4    2   NA   NA    2   NA
##  [7931]    4    4    4   NA   NA   NA    7    4    4    2   NA   NA    4
##  [7944]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    2   NA
##  [7957]   NA   NA   NA   NA   NA   NA   NA    2    2   NA   NA   NA   NA
##  [7970]   NA    4    2    2    4   NA   NA   NA    2   NA    2    2   NA
##  [7983]   NA   NA   NA   NA    2    2   NA    4   NA   NA   NA   NA   NA
##  [7996]   NA   NA   NA   NA    4    2   NA    4    4   NA   NA   NA   NA
##  [8009]   NA   NA   NA   NA   NA   NA   NA   10    4   NA   NA   NA   NA
##  [8022]   NA   NA   NA   NA   NA   NA   NA    2    2    2   NA    4   NA
##  [8035]   NA   NA    2    2   NA   NA    2    2   NA   NA   NA   NA   NA
##  [8048]   NA   NA   NA   NA   NA    4    4   NA   NA    4    4    4   NA
##  [8061]   NA    4   NA   NA   NA   NA   NA    2   NA    6    4   NA   NA
##  [8074]   NA    2   NA    2   NA    2   NA   NA   NA   NA    4    4    4
##  [8087]   NA   NA   NA   NA    4    4   NA   NA   NA    4   NA    2   NA
##  [8100]    4    2   NA   NA   NA   NA   NA   NA   NA   NA   NA    2    2
##  [8113]   NA   NA   NA   NA    4   NA   NA    4   NA   NA   NA   NA   NA
##  [8126]   NA   NA    4   NA    2   NA   NA    8   NA   NA    2    2   NA
##  [8139]   NA   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA   NA
##  [8152]   NA   NA   NA   NA   NA    4   NA    2   NA   NA   NA   NA    4
##  [8165]   NA    2    8   NA   NA   NA   NA   NA   NA    2    2    2   NA
##  [8178]   NA   NA   NA    4    4    4   NA    4    4    2    2   NA   NA
##  [8191]   NA    2    2   NA    2    6   NA   NA   NA   NA   NA   NA   NA
##  [8204]   NA    2    2    6    2    8    4    4    4    4    4    4    4
##  [8217]    2    4   NA    4   NA   NA   NA    4   NA   NA    4    4    4
##  [8230]    4    4    4    4   NA   NA   NA    2    2    4   NA   NA    2
##  [8243]   NA    4    4    4    4   NA   NA   NA   NA   NA    2    4   NA
##  [8256]    4   NA   NA   NA    4    4    2   NA   NA   NA   NA   NA   NA
##  [8269]    4    4   NA   NA    4    4   NA   NA   NA   NA   NA   NA   NA
##  [8282]   NA   NA    2   NA   NA   NA   NA   NA   NA    4    8    2   NA
##  [8295]    2    2   NA   NA    2   NA   NA    2    4    4    4    4    4
##  [8308]   NA    4   NA   NA    4    4   NA    4    4    4   NA   NA   NA
##  [8321]   NA    4    4   NA   NA   NA    4   NA   NA    2   NA   NA   NA
##  [8334]    2   NA   NA    2   NA    2   NA   NA    4   NA   NA   NA    4
##  [8347]   NA    2   NA    4    4    4    4    4    4   NA    4   NA   NA
##  [8360]   NA   NA   NA    4    4   NA   NA   NA    4   NA    2   NA    2
##  [8373]   NA   NA   NA   NA   NA   NA    2   NA   NA   NA    4   NA    4
##  [8386]   NA    2    2   NA   NA    4   NA    4   NA    4   NA   NA   NA
##  [8399]   NA   NA    2   NA   NA   NA   NA    8    2    4   NA    4    4
##  [8412]   NA   NA    2    4   NA   NA   NA    4   NA   NA    4    4    4
##  [8425]   NA   NA    4   NA   NA   NA    4   NA   NA   NA   NA   NA   NA
##  [8438]    4    4    4    4   NA   NA   NA   NA    8    2    8   NA   NA
##  [8451]   NA   NA    4   NA   NA   NA   NA   NA    2   NA    6   NA   NA
##  [8464]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [8477]   NA   NA   NA   NA   NA   NA    4    2   NA   NA    4   NA    4
##  [8490]   NA    4   NA   NA   NA    4    4   NA   NA   NA   NA   NA   NA
##  [8503]    4    4    4   NA   NA   NA   NA   NA   NA   NA    4   NA   NA
##  [8516]    4    4   NA    2   NA    2   NA   NA   NA   NA   NA   NA    2
##  [8529]   NA   NA   NA   NA   NA   NA   NA    2   NA    4   NA   NA   NA
##  [8542]   NA    4    4   NA   NA   NA   NA   NA   NA    4   NA   NA   NA
##  [8555]   NA   NA   NA   NA    2    4   NA   NA   NA   NA   NA    4   NA
##  [8568]    4   NA    4   NA   NA   NA   NA   NA    4   NA   NA   NA    4
##  [8581]    4   NA   NA   NA   NA   NA    4    4    4    4   NA    4    4
##  [8594]    4   NA   NA   NA    2    2    4    2   NA    2   NA   NA   NA
##  [8607]   NA   NA   NA    4    2   NA   NA    4   NA   NA   NA   NA   NA
##  [8620]   NA    4   NA    4    8    4   NA   NA   NA    4    4    4   NA
##  [8633]   NA   NA   NA    4    4    4   NA   NA    2    4    4    4    4
##  [8646]    4    4   NA    4   NA    4    4   NA    4   NA   NA   NA    2
##  [8659]    2   NA    4   NA    4    4   NA    2   NA    2    4   NA   NA
##  [8672]   NA   NA    4    6    4   NA   NA   NA   NA   NA   NA    4    4
##  [8685]    4   NA    6   NA    2    2   NA   NA    6    2   NA   NA   NA
##  [8698]   NA   NA   NA   NA   NA   NA    4   NA    4    4    4   NA   NA
##  [8711]   NA    4   NA   NA    4    2   NA   NA   NA   NA   NA   NA   NA
##  [8724]    4   NA   NA    2   NA   NA   NA    2   NA   NA   NA   NA   NA
##  [8737]   NA   NA   NA    4   NA   NA   NA   NA   NA    2   NA   NA   NA
##  [8750]   NA   NA    2    2    4   NA   NA   NA    4   NA   NA    4    4
##  [8763]    4    4    4   NA    4    4   NA    4    4   NA   NA    4   NA
##  [8776]    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [8789]   NA   NA    4   NA    4   NA   NA    2   NA   NA    4    2   NA
##  [8802]   NA   NA    2    4   NA    2   NA    4    2   NA   NA    4   NA
##  [8815]    2   NA    3   NA   NA   NA    4   NA   NA   NA   NA   NA   NA
##  [8828]   NA   NA   NA    4    4    2    4    4    2   NA   NA   NA    4
##  [8841]   NA   NA   NA    4    2    4   NA   NA   NA   NA    4   NA   NA
##  [8854]    4   NA   NA    2   NA    4   NA    4   NA   NA   NA    2    4
##  [8867]    4   NA   NA   NA    4    4    4   NA    4    4   NA    4   NA
##  [8880]   NA   NA   NA    4    2    4   NA    4    2    4    4    2   NA
##  [8893]   NA   NA    4    4    4   NA    4   NA    4   NA   NA   NA    4
##  [8906]   NA    2   NA   NA   NA   NA   NA   NA   NA    2   NA    2    2
##  [8919]    2   NA   NA    2   NA   NA   NA   NA   NA   NA   NA    2    4
##  [8932]    4    4   NA    2   NA   NA    4    4    4   NA   NA   NA   NA
##  [8945]   NA   NA   NA   NA   NA   NA   NA    4   NA    2    2   NA   NA
##  [8958]    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [8971]    4    2    4    4    2   NA    2    2    4   NA   NA   NA    4
##  [8984]    2   NA   NA   NA    2   NA   NA   NA    2   NA   NA    4    4
##  [8997]   NA    2    4    4    4   NA   NA   NA   NA   NA    4   NA    4
##  [9010]   NA   NA   NA   NA   NA   NA   NA    4   NA    4    2    2   NA
##  [9023]    2    2    2   NA    4   NA   NA   NA   NA    4    4    4    4
##  [9036]    4    4   NA   NA    2   NA   NA   NA   NA   NA   NA   NA   NA
##  [9049]   NA   NA    2   NA    2    4    4   NA   NA   NA    4   NA    2
##  [9062]    4   NA    2   NA   NA   NA   NA   NA    2   NA    4    4   NA
##  [9075]   NA   NA   NA   NA   NA   NA   NA    2    4   NA   NA   NA    4
##  [9088]    2    2    4    2    2   NA   NA   NA   NA    2   NA   NA   NA
##  [9101]   NA   NA   NA    2    4    2    2   NA   NA   NA   NA   NA   NA
##  [9114]    2   NA   NA   NA   NA   NA   NA   NA   NA   NA    2   NA   NA
##  [9127]    4    4    4   NA   NA   NA   NA    2    4   NA    4    2   NA
##  [9140]    4    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [9153]   NA   NA    4   NA   NA   NA    4   NA   NA   NA   NA    2    4
##  [9166]    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    2
##  [9179]   NA   NA    4   NA    2    4   NA    6    4   NA   NA   NA   NA
##  [9192]   NA   NA   NA   NA   NA   NA   NA   NA   NA    2   NA    2   NA
##  [9205]   NA   NA   NA    4   NA    4    4    4    2    4   NA   NA    4
##  [9218]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4   NA    4
##  [9231]   NA    2   NA   NA   NA   NA   NA    2    4   NA   NA   NA   NA
##  [9244]   NA   NA   NA   NA   NA   NA   NA   NA    4    4   NA   NA   NA
##  [9257]    6    2   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4
##  [9270]   NA   NA   NA    2   NA   NA   NA   NA    4   NA   NA   NA    4
##  [9283]    4    4    2    2    4    2    2   NA   NA   NA   NA   NA   NA
##  [9296]    4    4    4   NA   NA   NA   NA   NA    2   NA   NA   NA   NA
##  [9309]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4   NA
##  [9322]   NA   NA    4    4   NA   NA    4    4   NA   NA   NA   NA   NA
##  [9335]   NA   NA   NA   NA    4    4    4    4    4   NA    4   NA   NA
##  [9348]   NA   NA   NA    4    4   NA   NA   NA   NA   NA   NA   NA    4
##  [9361]    4   NA    4   NA   NA    4   NA   NA   NA   NA   NA   NA   NA
##  [9374]   NA   NA   NA   NA    4    4    4    4   NA    4   NA   NA   NA
##  [9387]    4   NA    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [9400]    2    2   NA   NA    4   NA   NA   NA   NA    4    4   NA    2
##  [9413]   NA   NA   NA   NA    2   NA   NA    2    4   NA    5   NA   NA
##  [9426]   NA    2    4   NA   NA   NA   NA    4   NA    4   NA    2   NA
##  [9439]    4   NA   NA   NA   NA   NA   NA   NA   NA   NA    4    4   NA
##  [9452]    2   NA   NA    4    4   NA   NA   NA   NA    4   NA   NA   NA
##  [9465]   NA   NA   NA   NA   NA   NA   NA   NA    4   NA    2    4    8
##  [9478]   NA   NA   NA   NA   NA   NA    2   NA    4    4   NA    4    4
##  [9491]    4    4    4    4    2    4   NA    2    4   NA   NA   NA   NA
##  [9504]    2    2   NA   NA   NA   NA   NA    7    4   NA   NA   NA   NA
##  [9517]   NA    4    4   NA   NA   NA   NA   NA   NA   NA    4    5    4
##  [9530]   NA   NA    4    2   NA    4   NA   NA    2    2    4    4   NA
##  [9543]   NA   NA   NA   NA   NA   NA   NA   NA   NA    2   NA    4    4
##  [9556]   NA    4   NA    4   NA   NA    2   NA   NA   NA   NA    4   NA
##  [9569]    2   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [9582]   NA    2    2   NA   NA   NA    4   NA   NA    2   NA    4   NA
##  [9595]   NA    4   NA   NA    4   NA   NA   NA    4   NA    4    2    2
##  [9608]    4   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA    4
##  [9621]   NA   NA    4   NA    4   NA   NA   NA   NA   NA    4   NA   NA
##  [9634]    4    4    4    4    2   NA   NA   NA    4   NA    4   NA   NA
##  [9647]   NA    2   NA   NA   NA   NA    4   NA   NA    4   NA   NA    4
##  [9660]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [9673]    4   NA   NA   NA    4   NA   NA    7   NA   NA   NA    4   NA
##  [9686]   NA   NA   NA    4   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [9699]    4   NA   NA   NA   NA   NA    2    2    4    4   NA    2   NA
##  [9712]   NA   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA   NA
##  [9725]   NA   NA    4   NA   NA   NA   NA    4   NA   NA   NA    2   NA
##  [9738]    2    4   NA   NA   NA   NA   NA   NA   NA   NA    2    4    2
##  [9751]    4   NA   NA   NA   NA    4   NA   NA   NA   NA   NA    4    4
##  [9764]    2   NA   NA   NA   NA   NA   NA   NA    2    2    2    2   NA
##  [9777]   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA    2   NA
##  [9790]   NA   NA    4    4   NA   NA   NA   NA   NA    2   NA   NA   NA
##  [9803]   NA   NA   NA   NA   NA   NA   NA    2   NA   NA   NA   NA   NA
##  [9816]    2   NA    2   NA   NA   NA   NA    4    4    2   NA   NA   NA
##  [9829]   NA   NA   NA   NA    2   NA   NA   NA   NA   NA   NA   NA   NA
##  [9842]   NA   NA   NA   NA    4   NA   NA    2    2   NA    4    4    4
##  [9855]    4    4    4   NA   NA   NA    4    2   NA   NA   NA    8   NA
##  [9868]   NA    4   NA    2   NA    4    4   NA   NA    2    2    2    4
##  [9881]   NA   NA   NA   NA    4    4   NA    4    2    4   NA    4   NA
##  [9894]    4   NA    4    2   NA   NA    4    4   NA    2    4    4   NA
##  [9907]   NA    4   NA    2   NA   NA    2    2   NA   NA    2   NA   NA
##  [9920]    4    4    4   NA   NA    4   NA   NA    2    2   NA    2   NA
##  [9933]   NA   NA    4    4   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [9946]   NA   NA   NA   NA   NA   NA   NA   NA    2   NA   NA   NA    2
##  [9959]    4   NA   NA   NA   NA   NA    4    4    2    4   NA    4    4
##  [9972]    4   NA   NA   NA    4   NA   NA   NA   NA    4   NA   NA   NA
##  [9985]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
##  [9998]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [10011]   NA   NA    4    4   NA    4    4    2   NA   NA    4    4   NA
## [10024]   NA   NA   NA   NA   NA   NA    4    4   NA   NA   NA   NA   NA
## [10037]   NA    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    2
## [10050]   NA    4    4   NA   NA    2    4    4   NA   NA   NA   NA   NA
## [10063]   NA   NA    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [10076]   NA    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [10089]   NA   NA   NA   NA    4   NA   NA   NA   NA   NA   NA    4   NA
## [10102]   NA   NA   NA   NA    2   NA   NA   NA    2    4   NA   NA   NA
## [10115]   NA   NA   NA   NA   NA   NA   NA   NA    4   NA   NA    2   NA
## [10128]   NA   NA   NA   NA   NA    2    4   NA   NA   NA   NA   NA   NA
## [10141]   NA   NA   NA   NA    4    4   NA   NA   NA   NA    2   NA   NA
## [10154]    4   NA   NA   NA   NA   NA    4   NA   NA   NA   NA   NA   NA
## [10167]    2    2   NA    4   NA    4    4   NA   NA   NA   NA    2   NA
## [10180]   NA   NA   NA    4   NA   NA   NA   NA   NA    4    2    2    4
## [10193]   NA   NA   NA    2    4    4   NA    4   NA   NA    4    2    4
## [10206]   NA   NA   NA   NA   NA   NA    4   NA    4    4   NA   NA   NA
## [10219]   NA   NA   NA   NA   NA   NA   NA   NA   NA    2   NA    2   NA
## [10232]   NA   NA   NA    4   NA    4    4    4    4   NA    2   NA   NA
## [10245]   NA   NA   NA   NA   NA   NA   NA   NA   NA    4   NA    2   NA
## [10258]    4    4   NA    7    4   NA   NA   NA   NA   NA   NA   NA   NA
## [10271]    4   NA    4   NA    2   NA   NA   NA    2   NA   NA    2    4
## [10284]   NA   NA    4   NA   NA    2   NA   NA    2   NA   NA   NA   NA
## [10297]   NA   NA   NA   NA   NA   NA    2    4   NA   NA   NA    4   NA
## [10310]   NA   NA    4   NA   NA   NA    4    2   NA    4   NA   NA    4
## [10323]    4   NA    4   NA   NA   NA    4   NA    4   NA    4   NA   NA
## [10336]    2   NA   NA   NA    4   NA   NA    4   NA    2   NA   NA   NA
## [10349]    2    4   NA   NA    4    4   NA   NA   NA   NA    4   NA   NA
## [10362]   NA   NA   NA    2   NA   NA   NA   NA   NA    2    4   NA   NA
## [10375]   NA   NA   NA    2    4   NA   NA   NA    2   NA   NA   NA   NA
## [10388]    4    4   NA   NA   NA   NA    4   NA   NA   NA   NA   NA    2
## [10401]   NA    2    4    4    4    4   NA   NA    4   NA   NA   NA   NA
## [10414]   NA    2   NA   NA    4    2    4   NA   NA    2    4   NA    2
## [10427]   NA   NA   NA    4   NA    4   NA   NA   NA   NA    6   NA    4
## [10440]    4   NA   NA    4    2    2    4    2   NA   NA   NA   NA   NA
## [10453]    4   NA   NA   NA   NA   NA   NA   NA    2    4   NA   NA   NA
## [10466]   NA   NA    4   NA   NA   NA   NA   NA   NA   NA   NA   NA    4
## [10479]   NA   NA   NA    2   NA   NA   NA   NA   NA   NA    4   NA   NA
## [10492]   NA   NA   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA
## [10505]   NA   NA   NA    4    2   NA    4   NA    4    4   NA   NA   NA
## [10518]    2    4   NA    2    2    2   NA   NA   NA   NA   NA   NA   NA
## [10531]   NA   NA   NA   NA   NA    2   NA   NA    4    2   NA   NA   NA
## [10544]   NA   NA    4   NA   NA   NA    4   NA   NA   NA    4   NA   NA
## [10557]   NA    4   NA    2   NA   NA   NA    4   NA   NA   NA   NA   NA
## [10570]   NA   NA   NA    4   NA   NA    2    2   NA   NA   NA   NA   NA
## [10583]   NA   NA    4    4    2   NA   NA   NA   NA   NA   NA    2    2
## [10596]   NA   NA   NA    4   NA   NA    4   NA   NA   NA   NA   NA   NA
## [10609]    4   NA   NA   NA   NA    2    4   NA   NA   NA   NA   NA    4
## [10622]    4   NA   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA
## [10635]   NA   NA    2   NA    2   NA   NA   NA   NA   NA   NA   NA   NA
## [10648]   NA   NA    2    2   NA    4   NA    4   NA   NA   NA   NA   NA
## [10661]    4   NA   NA    6   NA   NA   NA   NA   NA    4    4   NA   NA
## [10674]    2   NA   NA   NA   NA    4   NA   NA   NA   NA    4    4   NA
## [10687]    4    4   NA   NA   NA   NA    2   NA   NA    4    4   NA   NA
## [10700]   NA   NA    2   NA   NA   NA    4   NA   NA   NA    4    4    4
## [10713]   NA   NA    4   NA   NA   NA   NA   NA   NA   NA    4   NA   NA
## [10726]   NA   NA   NA   NA   NA   NA   NA    2    4   NA   NA   NA   NA
## [10739]   NA   NA   NA   NA   NA    2   NA   NA    2    4   NA   NA   NA
## [10752]    4    2   NA   NA   NA   NA   NA   NA   NA   NA    4   NA   NA
## [10765]   NA    2   NA   NA   NA   NA   NA   NA    4   NA    2   NA   NA
## [10778]   NA    2   NA    4   NA   NA    2   NA   NA   NA    4   NA   NA
## [10791]   NA    2   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [10804]   NA   NA   NA   NA   NA    4   NA   NA    2   NA   NA   NA    2
## [10817]    4   NA   NA   NA   NA   NA   NA   NA    4    4    2   NA   NA
## [10830]    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [10843]   NA   NA   NA   NA   NA   NA   NA    4   NA    4    4   NA    4
## [10856]   NA   NA   NA   NA   NA    4   NA   NA   NA   NA    2   NA    4
## [10869]   NA   NA   NA   NA   NA    2    4   NA   NA   NA   NA    4   NA
## [10882]    2   NA   NA   NA    2   NA   NA    2   NA   NA   NA   NA   NA
## [10895]   NA   NA    2    4   NA    2    4   NA   NA   NA   NA   NA   NA
## [10908]    2   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    8   NA
## [10921]    2    2    4    4   NA   NA   NA   NA   NA   NA   NA    2    4
## [10934]   NA    4    4    4    2    4    4   NA   NA    4    2   NA    2
## [10947]   NA   NA    4   NA   NA   NA   NA   NA    4   NA    4    2    2
## [10960]    4    4   NA   NA   NA   NA    2   NA    4    4   NA    4   NA
## [10973]   NA   NA   NA   NA    4   NA    2    2   NA   NA    2   NA   NA
## [10986]   NA   NA   NA   NA    4   NA   NA    4   NA   NA   NA   NA   NA
## [10999]   NA    4   NA   NA    4    2   NA    4    2   NA   NA   NA   NA
## [11012]   NA   NA    4   NA    2   NA   NA   NA   NA    2   NA   NA   NA
## [11025]   NA    2   NA   NA    4    2    4    2    4    2    4   NA   10
## [11038]   NA   NA   NA    4   NA   NA   NA   NA    4    2   NA   NA   NA
## [11051]   NA    4    4   NA   NA   NA   NA   NA   NA   NA   NA   NA    4
## [11064]   NA   NA    4   NA   NA    4    4    4   NA   NA    2   NA   NA
## [11077]    4    4   NA   NA    6   NA   NA   NA   NA   NA   NA   NA   NA
## [11090]    4   NA   NA   NA   NA   NA    2   NA   NA    2   NA   NA   NA
## [11103]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4    4   NA
## [11116]    4    4   NA   NA    4    4   NA   NA   NA   NA   NA    6   NA
## [11129]   NA   NA   NA   NA   NA   NA    4   NA   NA    2    4    2    4
## [11142]   NA   NA    2   NA    2    2    4   NA   NA    4   NA    4   NA
## [11155]    4   NA   NA   NA   NA   NA    2   NA   NA   NA   NA   NA   NA
## [11168]   NA    4   NA    4    4   NA   NA   NA   NA    4   NA   NA   NA
## [11181]   NA    4    4   NA    2   NA   NA   NA   NA    2    2    8   NA
## [11194]   NA    4    2    4    4    4    4    2    4    4   NA   NA   NA
## [11207]   NA   NA   NA    4   NA   NA   NA    4   NA    4   NA   NA   NA
## [11220]   NA   NA    4   NA   NA   NA    4   NA   NA   NA   NA    4    8
## [11233]    8   NA    4   NA   NA   NA   NA   NA   NA    4    4   NA    4
## [11246]   NA   NA    4   NA    4   NA   NA    4   NA   NA   NA    4   NA
## [11259]    4    4    2   NA    4   NA    4    2   NA   NA   NA   NA   NA
## [11272]    4   NA    2   NA    4    4   NA   NA   NA   NA    4   NA   NA
## [11285]    2    4    9   NA   NA   NA    4   NA    2   NA   NA    2    4
## [11298]   NA   NA   NA   NA   NA    4    4    4   NA   NA    4   NA   NA
## [11311]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [11324]    4    4   NA    4    4   NA   NA    2    4    4    4   NA   NA
## [11337]   NA    4   NA   NA   NA    4    2   NA   NA    2    6    4   NA
## [11350]    2   NA   NA   NA   NA   NA   NA    2    4   NA   NA    8    4
## [11363]   NA   NA   NA   NA    4   NA   NA   NA   NA   NA   NA   NA   NA
## [11376]   NA   NA   NA   NA   NA    2   NA   NA   NA    4   NA    4    4
## [11389]    4   NA   NA    4   NA   NA   NA   NA   NA    4   NA   NA   NA
## [11402]    4   NA   NA    4    4   NA    4   NA    4    4   NA    4   NA
## [11415]   NA   NA   NA   NA    8   NA   NA   NA   NA   NA   NA   NA   NA
## [11428]    4   NA    4    4    4    4    4   NA   NA   NA    4    4   NA
## [11441]   NA    4    4    2   NA   NA    2    4   NA   NA   NA   NA   NA
## [11454]   NA   NA    2   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [11467]    4   NA   NA   NA   NA   NA   NA   NA   NA   NA    4   NA    2
## [11480]   NA    4   NA   NA   NA   NA   NA    4   NA   NA   NA   NA    2
## [11493]   NA    2   NA   NA   NA    4   NA    2   NA    4   NA   NA   NA
## [11506]   NA    4   NA   NA   NA   NA   NA   NA   NA   NA   NA    4    4
## [11519]   NA   NA    2   NA    4    4   NA   NA   NA   NA   NA   NA   NA
## [11532]   NA   NA    4   NA   NA   NA   NA   NA   NA   NA   NA    4   NA
## [11545]    4    4   NA   NA    4   NA    4   NA    4   NA   NA    2   NA
## [11558]   NA   NA   NA   NA    4    4   NA    4   NA   NA   NA   NA   NA
## [11571]   NA   NA   NA   NA   NA    4    4    4   NA   NA   NA   NA   NA
## [11584]   NA    4    4   NA    4   NA   NA   NA    4    4    2   NA   NA
## [11597]   NA    2   NA   NA    4    4    4    4    4    4    4    2   NA
## [11610]   NA   NA    4    4   NA   NA    4    4   NA    4    4    4   NA
## [11623]    4    2   NA   NA    2   NA   NA    6   NA   NA    4    2    4
## [11636]   NA   NA   NA    4   NA   NA    4    4    6    6    6   NA   NA
## [11649]    4    4    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [11662]   NA   NA   NA   NA   NA   NA   NA   NA   NA    4   NA   NA   NA
## [11675]    4   NA    4   NA   NA   NA   NA   NA   NA    8   NA    4   NA
## [11688]   NA   NA   NA   NA   NA    4   NA    4    4   NA   NA   NA   NA
## [11701]   NA   NA   NA   NA   NA   NA    4   NA   NA   NA   NA   NA   NA
## [11714]   NA   NA    4    6    6   NA    2   NA   NA   NA   NA   NA   NA
## [11727]    4    4    4   NA   NA   NA    2    4    4    4   NA   NA    4
## [11740]   NA   NA   NA   NA   NA   NA    4   NA    4   NA   NA    4   NA
## [11753]   NA   NA   NA   NA   NA    4    2   NA    2   NA    2   NA   NA
## [11766]   NA   NA    4    2   NA   NA    4   NA    4    4    2    2   NA
## [11779]    2    4   NA    4    4   NA   NA    4    4   NA    4   NA   NA
## [11792]   NA    2   NA   NA   NA   NA   NA    4   NA    4   NA   NA    2
## [11805]   NA   NA   NA   NA   NA   NA   NA   NA    4   NA   NA    4   NA
## [11818]    4   NA   NA    2   NA   NA   NA    4    4   NA   NA    2   NA
## [11831]   NA   NA    4    4    4    2    2   NA    4    2    4   NA   NA
## [11844]   NA   NA   NA    2   NA   NA    4   NA   NA   NA    4   NA   NA
## [11857]   NA   NA   NA   NA    4    4   NA   NA   NA   NA    6    4    4
## [11870]    4    8   NA    6    4    4    4   NA   NA    4   NA   NA   NA
## [11883]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4    4
## [11896]   NA   NA   NA    2    4    2    2   NA   NA   NA   NA    4   NA
## [11909]   NA   NA   NA    2    4    8    2   NA   NA    4   NA   NA    4
## [11922]    4   NA   NA   NA   NA    4    4   NA    4    4   NA    2    2
## [11935]   NA    4   NA   NA   NA   NA   NA   NA   NA   NA    4   NA    4
## [11948]   NA   NA    2    2    4    4    2   NA   NA   NA   NA    2   NA
## [11961]   NA    4    4   NA    4    4    4    8    8   NA   NA   NA   NA
## [11974]   NA    2   NA   NA   NA    4   NA   NA   NA    8    4   NA    2
## [11987]   NA   NA   NA   NA    4   NA   NA   NA   NA   NA   NA   NA   NA
## [12000]    6   NA   NA   NA   NA    4    4   NA    4    4   NA   NA    4
## [12013]    2   NA   NA   NA    2    4    4    4    4    4   NA   NA    4
## [12026]   NA    4   NA   NA    4   NA   NA   NA   NA    4    4    2    4
## [12039]   NA   NA    4    4   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [12052]   NA   NA    4    4    4   NA   NA   NA   NA    4   NA   NA   NA
## [12065]   NA    2    2    4   NA   NA   NA    4    4    4    4    2   NA
## [12078]   NA    4   NA   NA    4    4   NA   NA    4   NA   NA    4   NA
## [12091]    4    4    4   NA    4    4    4    4    4   NA   NA    4   NA
## [12104]   NA    4   NA    4    4    2    6    4    4   NA   NA   NA   NA
## [12117]   NA   NA    2    4    4    4    4    4    2    4    4    4    4
## [12130]   NA   NA    2   NA    4    2    2    2   NA   NA    4    4   NA
## [12143]    4    4    4    4    4    4    4   NA   NA    4   NA   NA   NA
## [12156]    4   NA   NA   NA    4    4    4    4   NA   NA   NA   NA    2
## [12169]   NA   NA   NA   NA   NA    2    4    4    2   NA    2    4   NA
## [12182]    2   NA   NA   NA    2   NA   NA   NA   NA    4    4   NA    6
## [12195]    2    2    2   NA    2    2   NA   NA   NA   NA   NA   NA   NA
## [12208]    2    6   NA    4    4    4    6   NA   NA   NA   NA   NA    4
## [12221]   NA   NA   NA   NA   NA   NA   NA    2   NA    4   NA   NA   NA
## [12234]   NA   NA   NA   NA   NA    2   NA    4   NA   NA   NA   NA   NA
## [12247]   NA   NA    4   NA   NA   NA   NA    2   NA   NA    4    2   NA
## [12260]   NA    4   NA   NA   NA    2    4   NA    4    4    4    4    4
## [12273]   NA    2   NA    2   NA   NA   NA   NA   NA    4   NA    4    4
## [12286]    2    4   NA   NA    4   NA    2    4   NA   NA   NA   NA    2
## [12299]   NA    4    4   NA    4   NA   NA   NA   NA    4   NA    4    4
## [12312]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4
## [12325]    2    4   NA    4   NA   NA    2   NA   NA   NA   NA   NA   NA
## [12338]    4   NA   NA    2    4    4    4    4   NA   NA   NA    4   NA
## [12351]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    4    4    4
## [12364]   NA   NA   NA   NA    6   NA   NA   NA   NA    4    2   NA   NA
## [12377]    4    4   NA    4   NA   NA   NA   NA   NA   NA   NA    2   NA
## [12390]   NA   NA   NA    4    4    4    4    4    4   NA    2   NA    2
## [12403]    2    4    4   NA   NA   NA   NA   NA    4   NA   NA   NA   NA
## [12416]   NA   NA   NA   NA    4   NA    4    4   NA    4    4    4    4
## [12429]   NA    2    4    2   NA    4    2   NA   NA   NA   NA    4   NA
## [12442]   NA   NA   NA   NA   NA   NA   NA   NA -Inf    4    2   NA    4
## [12455]    4    4    4    4   NA    2    4   NA    4   NA    4   NA    2
## [12468]   NA   NA   NA   NA   NA   NA   NA    2   NA   NA   NA   NA   NA
## [12481]    4    4   NA    2   NA    4    2   NA   NA   NA   NA   NA   NA
## [12494]   NA    4    4   NA   NA    2    4   NA   NA    2   NA   NA   NA
## [12507]   NA   NA    4    4    4    4    4   NA    4    4   NA    4    4
## [12520]   NA    4    4    4    4    4    4    4   NA   NA   NA   NA   NA
## [12533]   NA    2   NA   NA    2    4   NA   NA   NA   NA   NA    4   NA
## [12546]   NA   NA   NA   NA   NA   NA    4    4    4    4   NA   NA   NA
## [12559]   NA    4    4    6    4    4    4    4    4    4    4    4    4
## [12572]    4    4    4    4   NA    2   NA    2   NA   NA   NA   NA   NA
## [12585]    2   NA   NA    2   NA    4   NA   NA   NA   NA    4    4   NA
## [12598]   NA    2   NA   NA   NA   NA   NA   NA   NA   NA    4    4   NA
## [12611]   NA   NA   NA   NA   NA    4   NA   NA   NA   NA    4   NA    4
## [12624]    4    4    2    2   NA   NA   NA   NA    2   NA   NA   NA   NA
## [12637]   NA    2   NA   NA   NA   NA    4    8    8    4    4   NA   NA
## [12650]    4   NA   NA    2   NA   NA   NA   NA   NA   NA   NA    4    4
## [12663]    2    2   NA    4   NA    2    2    2   NA   NA    4   NA   NA
## [12676]    2    2    4   NA    4    4    2   NA   NA   NA    4    2   NA
## [12689]   NA    2   NA    2    2   NA    4    4   NA    2   NA    2   NA
## [12702]   NA    4   NA   NA   NA   NA   NA    4   NA   NA    2   NA   NA
## [12715]   NA   NA   NA    4   NA    4   NA    4   NA    2    2   NA    4
## [12728]    4   NA   NA   NA   NA    4   NA   NA   NA    2    2    2    2
## [12741]    4   NA    2   NA    2   NA   NA   NA   NA    2   NA   NA    4
## [12754]   NA    4    4    4   NA    2   NA   NA    2    4   NA    2    2
## [12767]    2   NA   NA   NA    2   NA    2   NA   NA   NA   NA   NA   NA
## [12780]    4    4   NA    4   NA   NA   NA    2    2    4    4    2   NA
## [12793]   NA    4    4   NA   NA   NA    4    4    4    2   NA    2   NA
## [12806]   NA   NA    4   NA    4    2    2    2    4    4    4   NA   NA
## [12819]   NA    7   NA   NA    2   NA    4    4    4    2   NA   NA    4
## [12832]   NA    4   NA    4   NA   NA   NA    4    4    6   NA   NA   NA
## [12845]    4   NA   NA    2    4   NA    4   NA   NA   NA    2    2   NA
## [12858]   NA   NA   NA   NA   NA    4   NA   NA    4   NA   NA   NA   NA
## [12871]   NA   NA   NA    4    4   NA   NA   NA   NA   NA    4   NA   NA
## [12884]    4   NA   NA    2    4   NA    4   NA    2   NA    4   NA   NA
## [12897]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [12910]    2   NA   NA    4   NA    2   NA   NA   NA    2    2    4   NA
## [12923]    2   NA   NA   NA   NA    4    4   NA   NA   NA    4    4    4
## [12936]   NA   NA    2    2   NA   NA   NA    4    2    2    2    2   NA
## [12949]   NA   NA   NA   NA    4    4    4    2   NA   NA    4    4   NA
## [12962]   NA   NA   NA   NA   NA   NA    2    2   NA    2   NA   NA    4
## [12975]   NA    4   NA   NA    4    4   NA   NA   NA   NA   NA   NA   NA
## [12988]   NA   NA   NA   NA   NA   NA    5   NA   NA   NA   NA    2    4
## [13001]   NA   NA    4    4    4    2   NA    2   NA   NA   NA   NA   NA
## [13014]   NA   NA    4   NA    4   NA    2   NA   NA   NA   NA   NA   NA
## [13027]   NA   NA   NA    4   NA   NA    4    4    4    4    4   NA    4
## [13040]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    2    2
## [13053]    2   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13066]   NA   NA   NA   NA   NA   NA   NA    4   NA    4   NA    4   NA
## [13079]   NA   NA    2   NA    2    2    2   NA    4   NA   NA   NA    2
## [13092]    2    4    4    4   NA   NA    2    2   NA   NA   NA   NA   NA
## [13105]    4   NA   NA    4    4   NA    2    4   NA   NA   NA    4    8
## [13118]    4    4    2   NA    4   NA   NA    4    4   NA   NA   NA   NA
## [13131]   NA    4    6   NA   NA   NA   NA   NA    4   NA   NA   NA    4
## [13144]    4    2   NA   NA   NA    4   NA    2   NA   NA   NA   NA   NA
## [13157]    4    4    4    4   NA   NA   NA   NA   NA    4    4    2   NA
## [13170]    2   NA    2    4    4    2   NA   NA   NA    4   NA   NA    4
## [13183]    4   NA   NA   NA   NA    4    4   NA   NA   NA   NA    4    4
## [13196]   NA   NA    4    4   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13209]   NA   NA   NA    4   NA    2    2   NA    4    2   NA   NA    4
## [13222]   NA    4   NA   NA   NA   NA    4    2    4   NA    4   NA    4
## [13235]   NA   NA   NA    4   NA   NA    4   NA   NA   NA    4   NA   NA
## [13248]    2    4   NA   NA   NA    2 -Inf    2   NA   NA   NA    4   NA
## [13261]   NA    4   NA   NA   NA   NA    4   NA   NA   NA   NA   NA    4
## [13274]   NA   NA   NA   NA    2    4   NA   NA    4    4    4   NA    4
## [13287]   NA    2   NA    4   NA   NA   NA   NA   NA    4   NA   NA    8
## [13300]   10   NA   NA   NA    4   NA   NA   NA    4    4    4   NA   NA
## [13313]    4   NA   NA   NA   NA   NA    6   NA    4    4   NA    4    4
## [13326]   NA   NA    2   NA   NA   NA   NA   NA    4    4    4    4    4
## [13339]   NA   NA   NA   NA   NA    4    4   NA   NA   NA   NA   NA   NA
## [13352]   NA   NA   NA   NA   NA   NA   NA    4    4   NA    4   NA    6
## [13365]    4    4    4    4    4    4    4    2   NA   NA    4    2   NA
## [13378]    4    4    4   NA   NA   NA   NA    2   NA   NA   NA   NA   NA
## [13391]   NA   NA    4    2   NA   NA    4    4    4    4    2   NA    2
## [13404]    4   NA    4   NA    2    2   NA    2   NA   NA   NA   NA   NA
## [13417]   NA   NA   NA    4    4    4    4    4    4   NA   NA   NA    2
## [13430]    4    4   NA   NA    4    4    4   NA   NA   NA   NA   NA   NA
## [13443]    4    2   NA   NA   NA   NA    4   NA   NA   NA   NA    4    2
## [13456]    4   NA   NA   NA    2   NA   NA   NA    4    4   NA   NA   NA
## [13469]   NA   NA   NA   NA    4   NA   NA   NA   NA   NA   NA   NA   NA
## [13482]   NA    2   NA   NA   NA   NA    4    4    4    4    4   NA    4
## [13495]    2   NA    2   NA   NA   NA   NA   NA   NA    4   NA    2   NA
## [13508]   NA   NA   NA   NA    4   NA   NA   NA   NA   NA   NA   NA   NA
## [13521]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13534]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13547]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13560]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13573]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13586]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13599]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13612]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13625]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13638]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13651]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13664]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13677]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13690]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13703]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13716]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13729]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13742]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13755]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13768]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13781]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13794]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13807]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13820]   NA   NA   NA    4   NA   NA    2   NA    4   NA   NA   NA    4
## [13833]   NA    2   NA    8   NA    1   NA   NA    6   NA   NA   NA   NA
## [13846]   NA    4   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13859]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13872]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13885]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
## [13898]   NA   NA   NA   NA   NA   NA    7   NA   NA   NA   NA   NA   NA
## [13911]   NA   NA   NA   NA   NA   NA   NA   NA   NA    4   NA   NA   NA
## [13924]   NA   NA   NA   NA    4    4    4   NA   NA   NA   NA   NA   NA
## [13937]   NA   NA   NA   NA   NA    4    2   NA    6   NA   NA   NA    6
## [13950]    6    8   NA   NA   NA   NA    2    6    6   NA   NA   NA   NA
## [13963]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA    8
## [13976]   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA
```

```
## Error in tapply(df$unity, list(df$publication.timeunit, df$publication_place), : arguments must have same length
```

```
## Error in publications[is.na(publications)] <- 0: object 'publications' not found
```

```
## Error in eval(expr, envir, enclos): object 'publications' not found
```

```
## Error in melt(publications): object 'publications' not found
```

```
## Error in names(dfm) <- c("Time", "Place", "Documents"): object 'dfm' not found
```

```
## Error in filter_(.data, .dots = lazyeval::lazy_dots(...)): object 'dfm' not found
```

```
## Error in transform(dfm, date = as.character(Time)): object 'dfm' not found
```

```
## Error in match(x, table, nomatch = 0L): object 'dfm' not found
```

```
## Error in eval(expr, envir, enclos): object 'dfs' not found
```

```
## Error in eval(expr, envir, enclos): object 'dfs' not found
```

```
## Error in na.omit(dfs$date): object 'dfs' not found
```

```
## Error in data.frame(xmin = rect_left[-length(rect_left)], xmax = rect_left[-1], : object 'rect_left' not found
```

```
## Error in nrow(rectangles): object 'rectangles' not found
```

```
## Error in fortify(data): object 'rectangles' not found
```

```
## Error in fortify(data): object 'dfs' not found
```

```
## Error in fortify(data): object 'dfs' not found
```

```
## Error in seq(min(dfs$date), max(dfs$date), 20): object 'dfs' not found
```

![plot of chunk EdinburghPubs](figure/EdinburghPubs-1.png)

```
## Error in nrow(dfs): object 'dfs' not found
```

```
## Error in dfs$highlight <- hits: object 'dfs' not found
```

```
## Error in fortify(data): object 'dfs' not found
```

```
## Error in seq(min(dfs$date), max(dfs$date), 20): object 'dfs' not found
```

![plot of chunk EdinburghPubs](figure/EdinburghPubs-2.png)



![plot of chunk Edinburgh2](figure/Edinburgh2-1.png)![plot of chunk Edinburgh2](figure/Edinburgh2-2.png)
