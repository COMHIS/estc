---
title: "Preprocessing Summary"
author: "Leo Lahti"
date: "16/05/2015"
output: markdown_document
---

# Summary of the preprocessed ESTC data



## Annotated documents

Fraction of documents with entries for each annotation field (final preprocessed data).

![plot of chunk summaryannotations](figure/summaryannotations-1.png) 


## Topics




```
## [1] "Complete subject topic counts in file: output.tables/subjecttopics.tab"
```

Top-50 topics and number of documents for each. In total, there are 0 unique topics and 0 documents assigned to one or more topics (NaN).


```
## Error in dfs[1:ntop, ]: incorrect number of dimensions
```

![plot of chunk summarytopics22](figure/summarytopics22-1.png) 


## Authors

Top-50 uniquely identified authors and number of documents for each (duplicate docs not checked yet). In total, there are 0 unique authors and 0 documents with unambiguous author information (NaN%).


```
## Error in dfs[1:ntop, ]: incorrect number of dimensions
```

![plot of chunk summaryauthors](figure/summaryauthors-1.png) 


### Gender

Gender distribution for authors over time. Note that the name-gender mappings change over time. This has not been taken into account yet.


```
## 
## female   male 
##  0.027  0.973
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
## Error in match(x, table, nomatch = 0L): object 'author.name' not found
```

```
## Error in `[.data.frame`(dfs, , c("author.name", "author.birth", "author.death")): undefined columns selected
```

```
## Error in order(dfs$author.name): argument 1 is not a vector
```



|         |first                       |last                                                 |years                    |
|:--------|:---------------------------|:----------------------------------------------------|:------------------------|
|1        |bollan                      |william                                              |1776-1776)               |
|2        |NA (1741-1810)              |NA                                                   |NA                       |
|3        |calonne                     |charles alexandre de                                 |1734-1802)               |
|3.1      |NA (NA-NA)                  |NA                                                   |NA                       |
|1.1      |davila                      |arrigo caterino                                      |1576-1631)               |
|3.2      |benson                      |george                                               |1699-1762)               |
|3.3      |cobbett                     |william                                              |1763-1835)               |
|3.4      |galloway                    |joseph                                               |1731-1803)               |
|3.5      |tod                         |t                                                    |1781-1781)               |
|4        |butel-dumont                |george marie                                         |1725-1788)               |
|3.7      |arbuthnot                   |john                                                 |1667-1735)               |
|3.8      |gibbon                      |edward                                               |1737-1794)               |
|3.9      |curtius                     |marcus                                               |NA-NA)                   |
|3.14     |NA (1625-1625)              |NA                                                   |NA                       |
|3.18     |dummer                      |jeremiah                                             |1681-1739)               |
|3.19     |washington                  |george                                               |1732-1799)               |
|1.3      |stuart                      |gilbert                                              |1742-1786)               |
|3.25     |robinson                    |john                                                 |1650-1723)               |
|3.26     |staal                       |marguerite-jeanne                                    |1684-1750)               |
|3.27     |NA (1673-1742)              |NA                                                   |NA                       |
|4.2      |dumouriez                   |charles françois du périer                           |1739-1823)               |
|3.28     |ramsay                      |james                                                |1733-1789)               |
|1.4      |king                        |william                                              |1685-1763)               |
|3.31     |shebbeare                   |john                                                 |1709-1788)               |
|3.33     |middleton                   |conyers                                              |1683-1750)               |
|1.6      |hargrave                    |francis                                              |1741-1821)               |
|1.7      |makemie                     |francis                                              |1658-1708)               |
|3.35     |harper                      |robert goodloe                                       |1765-1825)               |
|3.38     |sulivan                     |richard joseph                                       |1752-1806)               |
|3.41     |taaffe                      |nicholas                                             |1677-1769)               |
|3.43     |anderson                    |james                                                |1739-1808)               |
|3.44     |milbourne                   |luke                                                 |1649-1720)               |
|3.48     |paine                       |thomas                                               |1737-1809)               |
|1.8      |defoe                       |daniel                                               |1661-1731)               |
|3.52     |mackworth                   |humphrey                                             |1657-1727)               |
|3.53     |montagu                     |james                                                |1666-1723)               |
|3.54     |allen                       |ira                                                  |1751-1814)               |
|3.55     |clarendon                   |edward hyde                                          |1609-1674)               |
|4.4      |mathews                     |thomas                                               |1676-1751)               |
|3.57     |pullen                      |john                                                 |NA-NA)                   |
|6.2      |bray                        |thomas                                               |1658-1730)               |
|3.58     |campbell                    |john                                                 |1708-1775)               |
|3.60     |faulkener                   |charles                                              |NA-NA)                   |
|1.10     |clark                       |james                                                |1660-1723)               |
|3.62     |davenant                    |charles                                              |1656-1714)               |
|3.64     |justinus                    |marcus junianus                                      |NA-NA)                   |
|4.6      |NA (NA-  30)                |NA                                                   |NA                       |
|3.66     |wylie                       |robert                                               |NA-NA)                   |
|3.68     |tone                        |william henry                                        |1802-1802)               |
|3.69     |budgell                     |eustace                                              |1686-1737)               |
|4.7      |NA (1694-1778)              |NA                                                   |NA                       |
|3.71     |sprat                       |thomas                                               |1635-1713)               |
|4.8      |wesley                      |john                                                 |1703-1791)               |
|7        |NA (1537-1553)              |NA                                                   |NA                       |
|3.72     |bentley                     |thomas                                               |1775-1819)               |
|3.74     |brecknock                   |timothy                                              |1786-1786)               |
|1.14     |humphreys                   |david                                                |1752-1818)               |
|3.75     |belhaven                    |john hamilton                                        |1656-1708)               |
|3.77     |bradbury                    |thomas                                               |1677-1759)               |
|6.5      |tolson                      |francis                                              |1746-1746)               |
|3.78     |stevens                     |john                                                 |1726-1726)               |
|6.7      |bacon                       |francis                                              |1561-1626)               |
|3.79     |smith                       |charles                                              |1715-1762)               |
|3.80     |hentzner                    |paul                                                 |1558-1623)               |
|4.9      |free                        |john                                                 |1712-1712)               |
|1.17     |wodrow                      |robert                                               |1679-1734)               |
|3.81     |béraud                       |paul-emilien                                         |1751-1836)               |
|3.85     |o'roon                      |hellen                                               |NA-NA)                   |
|3.86     |bergman                     |torbern                                              |1735-1784)               |
|6.9      |mauduit                     |israel                                               |1708-1787)               |
|3.87     |wilson                      |charles                                              |NA-NA)                   |
|1.19     |ashton                      |james-brown                                          |NA-NA)                   |
|1.20     |relhan                      |anthony                                              |1715-1776)               |
|3.90     |moody                       |james                                                |1744-1809)               |
|3.91     |gillan                      |john                                                 |1735-1735)               |
|9        |NA (1685-1740)              |NA                                                   |NA                       |
|3.95     |haywood                     |eliza fowler                                         |1693-1756)               |
|4.10     |price                       |richard                                              |1723-1791)               |
|3.96     |guibert                     |jacques antoine hippolyte                            |1743-1790)               |
|1.21     |barrington                  |daines                                               |1727-1800)               |
|3.97     |callender                   |james thomson                                        |1758-1803)               |
|4.11     |florus                      |lucius annaeus                                       |NA-NA)                   |
|3.98     |bowles                      |john                                                 |1751-1819)               |
|3.99     |hervey                      |john                                                 |1696-1743)               |
|3.102    |blenman                     |jonathan                                             |NA-NA)                   |
|3.104    |johnson                     |william                                              |1760-1845)               |
|3.106    |loftus                      |smyth                                                |1707-1707)               |
|3.108    |coke                        |edward                                               |1552-1634)               |
|3.109    |NA (1713-1796)              |NA                                                   |NA                       |
|1.23     |almon                       |john                                                 |1737-1805)               |
|3.117    |NA (1651-1705)              |NA                                                   |NA                       |
|3.119    |wagstaffe                   |william                                              |1685-1725)               |
|1.24     |beaver                      |john                                                 |NA-NA)                   |
|3.122    |NA (1712-1786)              |NA                                                   |NA                       |
|3.125    |hill                        |rowland                                              |1744-1833)               |
|3.126    |adamson                     |j                                                    |NA-NA)                   |
|4.13     |buchanan                    |george                                               |1506-1582)               |
|10       |fox                         |charles james                                        |1749-1806)               |
|10.1     |jones                       |william                                              |1726-1800)               |
|3.135    |orr                         |robert                                               |NA-NA)                   |
|3.138    |NA (1754-1793)              |NA                                                   |NA                       |
|5.8      |NA (1664-1721)              |NA                                                   |NA                       |
|3.141    |robinson                    |christopher                                          |1713-1713)               |
|5.9      |james                       |elinor                                               |1645-1719)               |
|3.142    |ceva                        |tommaso                                              |1648-1737)               |
|3.143    |wooddeson                   |richard                                              |1745-1822)               |
|3.146    |hastings                    |warren                                               |1732-1818)               |
|3.147    |byrne                       |william                                              |1775-1799)               |
|6.14     |settle                      |elkanah                                              |1648-1724)               |
|3.148    |hutchinson                  |thomas                                               |1711-1780)               |
|3.150    |zimmermann                  |johann georg                                         |1728-1795)               |
|3.154    |clarkson                    |thomas                                               |1760-1846)               |
|1.26     |synge                       |edward                                               |1659-1741)               |
|3.156    |rosewell                    |samuel                                               |1679-1722)               |
|3.159    |pownall                     |thomas                                               |1722-1805)               |
|3.160    |burke                       |edmund                                               |1729-1797)               |
|3.161    |lind                        |james                                                |1716-1794)               |
|3.162    |boyle                       |robert                                               |1627-1691)               |
|4.19     |steele                      |richard                                              |1672-1729)               |
|3.166    |tucker                      |josiah                                               |1712-1799)               |
|6.15     |vernon                      |edward                                               |???1669-1743)            |
|3.168    |waller                      |edmund                                               |1699-1771)               |
|3.169    |jones                       |d                                                    |1676-1720)               |
|3.170    |jennings                    |richard downing                                      |NA-NA)                   |
|6.17     |dugdale                     |william                                              |1605-1686)               |
|4.20     |nicholson                   |edward                                               |NA-NA)                   |
|3.173    |mallet                      |david                                                |1705-1765)               |
|3.176    |nisbet                      |gabriel                                              |NA-NA)                   |
|1.29     |dryden                      |john                                                 |1631-1700)               |
|4.21     |goldsmith                   |oliver                                               |1728-1774)               |
|3.178    |anderson                    |adam                                                 |1692-1765)               |
|3.180    |ridpath                     |george                                               |1726-1726)               |
|3.182    |stephens                    |thomas                                               |1759-1759)               |
|1.32     |tonkin                      |mary                                                 |NA-NA)                   |
|3.184    |salmon                      |thomas                                               |1679-1767)               |
|3.185    |smollett                    |tobias george                                        |1721-1771)               |
|6.19     |stackhouse                  |thomas                                               |1680-1752)               |
|6.20     |chishull                    |edmund                                               |1671-1733)               |
|3.194    |burnet                      |thomas                                               |1694-1753)               |
|3.199    |browne                      |arthur                                               |1756-1805)               |
|4.27     |jarratt                     |devereux                                             |1733-1801)               |
|1.36     |stepney                     |george                                               |1663-1707)               |
|3.207    |mullalla                    |james                                                |1757-1757)               |
|3.208    |whitefield                  |george                                               |1714-1770)               |
|3.210    |rolt                        |richard                                              |1725-1770)               |
|1.37     |price                       |francis                                              |1753-1753)               |
|3.212    |NA (1749-1800)              |NA                                                   |NA                       |
|4.29     |penn                        |william                                              |1644-1718)               |
|3.214    |berkeley                    |george                                               |1685-1753)               |
|3.216    |caldwell                    |james                                                |1784-1784)               |
|3.217    |lunardi                     |vincent                                              |1759-1806)               |
|3.218    |kennett                     |white                                                |1660-1728)               |
|3.220    |NA (1755-1793)              |NA                                                   |NA                       |
|3.223    |hancocke                    |john                                                 |1728-1728)               |
|3.224    |watson                      |richard                                              |1737-1816)               |
|3.226    |tone                        |theobald wolfe                                       |1763-1798)               |
|4.32     |serle                       |ambrose                                              |NA-NA)                   |
|4.33     |woodward                    |josiah                                               |1660-1712)               |
|1.41     |querno                      |camillo                                              |NA-NA)                   |
|3.230    |kentish                     |richard                                              |1730-1792)               |
|1.44     |cibber                      |colley                                               |1671-1757)               |
|3.233    |le barbier                  |j l                                                  |1740-1740)               |
|3.239    |marlborough                 |sarah churchill                                      |1660-1744)               |
|3.243    |david                       |pierre drapeyron de                                  |1749-1832)               |
|3.248    |berington                   |joseph                                               |1746-1827)               |
|4.38     |troy                        |john thomas                                          |1739-1823)               |
|3.250    |craig                       |robert                                               |1730-1823)               |
|3.252    |warrington                  |william                                              |NA-NA)                   |
|3.254    |rulhière                    |claude carloman de                                   |1734-1791)               |
|3.257    |bruce                       |james                                                |1730-1794)               |
|4.39     |bancks                      |john                                                 |1709-1751)               |
|1.51     |macpherson                  |james                                                |1736-1796)               |
|3.259    |rabaut                      |jean-paul                                            |1743-1793)               |
|3.260    |harrison                    |conyers                                              |NA-NA)                   |
|3.262    |quesnay                     |françois                                             |1694-1774)               |
|1.54     |playfair                    |william                                              |1759-1823)               |
|3.267    |stuart                      |c                                                    |1794-1794)               |
|4.42     |blair                       |hugh                                                 |1718-1800)               |
|4.43     |NA (1632-1725)              |NA                                                   |NA                       |
|4.44     |clarke                      |john                                                 |1755-1798)               |
|3.268    |robertson                   |william                                              |1721-1793)               |
|3.272    |priestley                   |joseph                                               |1733-1804)               |
|4.45     |naubert                     |benedikte                                            |1756-1819)               |
|4.47     |heylyn                      |peter                                                |1600-1662)               |
|3.273    |edwards                     |bryan                                                |1743-1800)               |
|3.275    |lambe                       |robert                                               |1712-1795)               |
|3.276    |hutton                      |william                                              |1723-1815)               |
|6.41     |polwhele                    |richard                                              |1760-1838)               |
|4.49     |exquemelin                  |o                                                    |NA-NA)                   |
|3.280    |daniel                      |gabriel                                              |1649-1728)               |
|1.58     |hume                        |david                                                |1711-1776)               |
|3.284    |shields                     |alexander                                            |1660-1700)               |
|3.286    |baylies                     |william                                              |1724-1787)               |
|4.55     |savage                      |james                                                |1767-1845)               |
|4.56     |hume                        |david                                                |1560-1630)               |
|1.59     |kirkton                     |james                                                |1628-1699)               |
|4.57     |NA (1655-1735)              |NA                                                   |NA                       |
|3.289    |cunningham                  |t                                                    |1789-1789)               |
|3.290    |charlevoix                  |pierre-françois-xavier de                            |1682-1761)               |
|3.293    |bigot de sainte-croix       |louis claude                                         |1744-1803)               |
|3.294    |peltier                     |jean-gabriel                                         |1760-1825)               |
|3.295    |jones                       |stephen                                              |1763-1827)               |
|4.59     |duclos                      |charles pinot-                                       |1704-1772)               |
|3.298    |winterbotham                |william                                              |1763-1829)               |
|4.60     |rousset de missy            |jean                                                 |1686-1762)               |
|3.301    |jacob                       |giles                                                |1686-1744)               |
|3.306    |lally-tolendal              |trophime-gérard                                       |1751-1830)               |
|6.76     |brady                       |robert                                               |1627-1700)               |
|6.77     |ovalle                      |alonso de                                            |1601-1651)               |
|3.310    |sinclair                    |john                                                 |1754-1835)               |
|3.312    |guicciardini                |francesco                                            |1483-1540)               |
|4.63     |midon                       |francis                                              |NA-NA)                   |
|3.318    |krusiński                   |judas thaddaeus                                      |NA-NA)                   |
|3.319    |drinkwater                  |john                                                 |1762-1844)               |
|1.64     |wallace                     |james                                                |1688-1688)               |
|4.64     |curry                       |john                                                 |1780-1780)               |
|6.78     |bigland                     |ralph                                                |1711-1784)               |
|3.323    |braithwaite                 |john                                                 |1700-1768)               |
|3.325    |fontaine                    |nicolas                                              |1625-1709)               |
|1.66     |calamy                      |edmund                                               |1600-1666)               |
|3.335    |zubly                       |john joachim                                         |1724-1781)               |
|3.336    |vernon                      |edward                                               |1684-1757)               |
|4.67     |jones                       |john                                                 |active during 1786-1827) |
|3.341    |sewel                       |william                                              |1653-1720)               |
|6.79     |clarke                      |samuel                                               |1599-1682)               |
|4.68     |NA (1755-1794)              |NA                                                   |NA                       |
|4.69     |NA (1714-1794)              |NA                                                   |NA                       |
|6.80     |wright                      |james                                                |1643-1713)               |
|3.348    |hare                        |francis                                              |1671-1740)               |
|3.349    |robe                        |james                                                |1688-1753)               |
|6.81     |hill                        |aaron                                                |1685-1750)               |
|3.350    |shea                        |p                                                    |NA-NA)                   |
|5.20     |wilson                      |john                                                 |1719-1719)               |
|3.351    |parkin                      |charles                                              |1689-1765)               |
|3.353    |arnall                      |william                                              |1700-1736)               |
|3.354    |fabrice                     |friedrich ernst von                                  |1683-1750)               |
|1.70     |crawfurd                    |george                                               |1681-1748)               |
|3.356    |bossuet                     |jacques bénigne                                      |1627-1704)               |
|3.360    |wynne                       |john huddlestone                                     |1743-1788)               |
|6.82     |josephus                    |flavius                                              |NA-NA)                   |
|6.85     |melfort                     |john drummond                                        |1649-1715)               |
|3.362    |lockhart                    |george                                               |1681-1732)               |
|4.76     |algarotti                   |francesco                                            |1712-1764)               |
|1.72     |haversham                   |john thompson                                        |1647-1710)               |
|3.365    |hartley                     |david                                                |1731-1813)               |
|3.367    |hall                        |joseph                                               |1574-1656)               |
|3.368    |champigny                   |jean bochart                                         |1787-1787)               |
|3.369    |castéra                     |jean-henri                                           |1749-1838)               |
|3.371    |hayward                     |samuel                                               |1718-1757)               |
|3.372    |gyllenborg                  |carl                                                 |1679-1746)               |
|1.74     |kinnersley                  |thomas                                               |1679-1679)               |
|3.373    |carysfort                   |john joshua proby                                    |1751-1828)               |
|3.374    |lucas                       |charles                                              |1713-1771)               |
|6.86     |gordon                      |alexander                                            |1692-1754)               |
|3.377    |kennett                     |basil                                                |1674-1715)               |
|3.382    |pictet                      |françois pierre                                      |NA-NA)                   |
|3.384    |necker                      |jacques                                              |1732-1804)               |
|4.78     |NA (1663-1719)              |NA                                                   |NA                       |
|4.80     |campe                       |joachim heinrich                                     |1746-1818)               |
|3.386    |jenings                     |edmund                                               |1731-1819)               |
|3.393    |burgoyne                    |john                                                 |1722-1792)               |
|4.84     |horneck                     |anthony                                              |1641-1697)               |
|3.397    |coade                       |g                                                    |NA-NA)                   |
|3.399    |drennan                     |william                                              |1754-1820)               |
|3.401    |jones                       |john                                                 |1700-1770)               |
|3.407    |hale                        |john                                                 |1806-1806)               |
|3.408    |smith                       |william cusack                                       |1766-1836)               |
|3.410    |otis                        |james                                                |1725-1783)               |
|3.412    |tracy                       |darby                                                |NA-NA)                   |
|3.413    |stanhope                    |charles                                              |1753-1816)               |
|3.414    |richelieu                   |louis françois armand du plessis                     |1696-1788)               |
|3.416    |o'beirne                    |thomas lewis                                         |1748-1823)               |
|1.76     |williams                    |joseph                                               |NA-NA)                   |
|3.417    |johnston                    |robert                                               |1567-1639)               |
|3.419    |chabannes                   |joseph-gaspard-gilbert de                            |1702-1767)               |
|3.421    |NA (1748-1789)              |NA                                                   |NA                       |
|3.422    |christie                    |thomas                                               |1761-1796)               |
|1.78     |cameron                     |andrew                                               |NA-NA)                   |
|4.85     |lockman                     |john                                                 |1698-1771)               |
|1.79     |nelson                      |robert                                               |1656-1715)               |
|3.426    |knox                        |william                                              |1732-1810)               |
|3.429    |vincent                     |william                                              |1739-1815)               |
|3.430    |blanch                      |n                                                    |NA-NA)                   |
|3.437    |robinson                    |robert                                               |1735-1790)               |
|3.438    |cooke                       |edward                                               |1755-1820)               |
|4.88     |smith                       |william                                              |1727-1803)               |
|3.441    |grey                        |zachary                                              |1688-1766)               |
|3.442    |prime                       |benjamin young                                       |1733-1791)               |
|1.83     |edwards                     |john                                                 |1637-1716)               |
|3.445    |smith                       |matthew                                              |1696-1696)               |
|3.447    |rhudd                       |john                                                 |NA-NA)                   |
|3.448    |noble                       |daniel                                               |1729-1783)               |
|3.451    |NA (1649-1733)              |NA                                                   |NA                       |
|3.461    |huske                       |ellis                                                |1700-1755)               |
|3.462    |williams                    |john                                                 |1791-1791)               |
|3.463    |ferguson                    |adam                                                 |1723-1816)               |
|3.466    |woodward                    |richard                                              |1726-1794)               |
|3.470    |prestongrange               |william grant                                        |1701-1764)               |
|3.471    |wilmot                      |george                                               |NA-NA)                   |
|1.87     |seton                       |william                                              |1744-1744)               |
|6.87     |ellwood                     |thomas                                               |1639-1713)               |
|3.476    |evelyn                      |john                                                 |1620-1706)               |
|1.88     |leslie                      |charles                                              |1650-1722)               |
|1.90     |burney                      |charles                                              |1726-1814)               |
|3.479    |mathison                    |thomas                                               |1721-1760)               |
|3.481    |stevenson                   |william                                              |1683-1760)               |
|3.484    |NA (1759-1809)              |NA                                                   |NA                       |
|5.26     |swift                       |jonathan                                             |1667-1745)               |
|1.91     |cleeve                      |bourchier                                            |1715-1760)               |
|3.487    |thom                        |william                                              |1710-1790)               |
|6.90     |miller                      |james                                                |1706-1744)               |
|3.488    |benson                      |william                                              |1682-1754)               |
|3.492    |barzoni                     |vittorio                                             |1768-1829)               |
|3.494    |earbery                     |matthias                                             |1690-1740)               |
|3.497    |howell                      |william                                              |1632-1683)               |
|3.500    |francis                     |philip                                               |1740-1818)               |
|3.501    |lackington                  |james                                                |1746-1815)               |
|4.99     |joly                        |guy                                                  |1678-1678)               |
|4.100    |l'écluse des loges           |pierre mathurin de                                   |1783-1783)               |
|4.102    |shakespeare                 |william                                              |1564-1616)               |
|3.502    |manstein                    |cristof hermann                                      |1711-1757)               |
|4.107    |linguet                     |simon nicolas henri                                  |1736-1794)               |
|4.108    |NA (1670-1730)              |NA                                                   |NA                       |
|3.503    |post                        |christian frederick                                  |1710-1785)               |
|3.504    |anquetil                    |louis-pierre                                         |1723-1806)               |
|3.505    |wraxall                     |nathaniel william                                    |1751-1831)               |
|3.506    |price                       |joseph                                               |1749-1749)               |
|1.94     |tate                        |nahum                                                |1652-1715)               |
|3.507    |buckingham                  |george villiers                                      |1628-1687)               |
|4.109    |montesquieu                 |charles de secondat                                  |1689-1755)               |
|4.112    |bowdler                     |john                                                 |1746-1823)               |
|3.511    |lofft                       |capel                                                |1751-1824)               |
|3.512    |tacitus                     |cornelius                                            |NA-NA)                   |
|3.513    |lally-tolendal              |trophime-gérard                                      |1751-1830)               |
|3.514    |speke                       |hugh                                                 |1656-1724)               |
|3.515    |shaveblock                  |pasquin                                              |NA-NA)                   |
|3.517    |NA (1744-1818)              |NA                                                   |NA                       |
|3.518    |bassi                       |m                                                    |NA-NA)                   |
|3.520    |NA ( 331- 363)              |NA                                                   |NA                       |
|3.521    |NA (1740-1800)              |NA                                                   |NA                       |
|3.522    |ivernois                    |francis d'                                           |1757-1842)               |
|3.527    |gifford                     |john                                                 |1758-1818)               |
|3.531    |malcolm                     |alexander                                            |1685-1763)               |
|3.532    |knight                      |ellis cornelia                                       |1757-1837)               |
|3.536    |plowden                     |francis                                              |1749-1829)               |
|3.538    |farmer                      |hugh                                                 |1714-1787)               |
|3.539    |walpole                     |robert                                               |1676-1745)               |
|3.540    |lindsay                     |john                                                 |1686-1768)               |
|3.541    |manning                     |robert                                               |1731-1731)               |
|3.542    |dunton                      |john                                                 |1659-1733)               |
|3.544    |somers                      |john                                                 |1651-1716)               |
|1.100    |wilson                      |jonathan                                             |NA-NA)                   |
|1.101    |rivers                      |thomas                                               |1668-1731)               |
|3.545    |lobo                        |jerónymo                                              |1596-1678)               |
|3.547    |ball                        |john                                                 |1665-1745)               |
|1.102    |burnet                      |gilbert                                              |1643-1715)               |
|4.121    |maclaine                    |archibald                                            |1722-1804)               |
|6.91     |nicolson                    |william                                              |1655-1727)               |
|3.549    |snape                       |andrew                                               |1675-1742)               |
|3.552    |hunt                        |rowland                                              |NA-NA)                   |
|1.103    |crowe                       |william                                              |1743-1743)               |
|3.553    |browne                      |joseph                                               |1700-1721)               |
|3.554    |calef                       |john                                                 |1725-1812)               |
|3.555    |blackwell                   |thomas                                               |1701-1757)               |
|3.556    |leman                       |tanfield                                             |1714-1762)               |
|3.558    |perry                       |william                                              |1757-1757)               |
|3.566    |shirley                     |william                                              |1694-1771)               |
|3.568    |peters                      |samuel                                               |1735-1826)               |
|3.569    |o'dogherty                  |william                                              |NA-NA)                   |
|3.571    |oriel                       |john foster                                          |1740-1828)               |
|6.92     |atterbury                   |francis                                              |1662-1732)               |
|1.105    |awbrey                      |timothy                                              |1674-1674)               |
|4.122    |NA (1639-1692)              |NA                                                   |NA                       |
|3.572    |smedley                     |jonathan                                             |1671-1729)               |
|1.106    |stephens                    |henry                                                |1673-1739)               |
|3.574    |gordon                      |thomas                                               |1750-1750)               |
|1.108    |justice                     |alexander                                            |NA-NA)                   |
|3.581    |meanwell                    |j                                                    |NA-NA)                   |
|3.582    |ashe                        |george                                               |1658-1718)               |
|3.586    |broome                      |ralph                                                |1805-1805)               |
|3.588    |NA (1745-1833)              |NA                                                   |NA                       |
|4.125    |otway                       |thomas                                               |1652-1685)               |
|3.593    |boissy d'anglas             |françois antoine                                     |1756-1826)               |
|3.605    |shippen                     |william                                              |1673-1743)               |
|3.607    |hastings                    |francis rawdon-hastings                              |1754-1826)               |
|3.609    |auckland                    |william eden                                         |1744-1814)               |
|3.612    |ramsay                      |allan                                                |1713-1784)               |
|3.613    |granville                   |charles                                              |NA-NA)                   |
|3.614    |murray                      |james                                                |1732-1782)               |
|4.127    |barbé-marbois               |françois                                             |1745-1837)               |
|3.616    |crull                       |j                                                    |1713-1713)               |
|3.617    |NA (1803-1803)              |NA                                                   |NA                       |
|3.618    |renwick                     |william                                              |1740-1814)               |
|3.621    |erskine                     |john                                                 |1721-1803)               |
|3.625    |shipley                     |jonathan                                             |1714-1788)               |
|3.626    |tichborne                   |henry                                                |1581-1667)               |
|3.630    |chauncy                     |charles                                              |1705-1787)               |
|3.631    |hilliard d'auberteuil       |michel-rené                                           |1740-1789)               |
|3.632    |white                       |john                                                 |1685-1755)               |
|3.636    |clare                       |john fitzgibbon                                      |1748-1802)               |
|1.114    |lansdowne                   |william petty                                        |1737-1805)               |
|3.649    |pitt                        |william                                              |1759-1806)               |
|3.650    |bentley                     |william                                              |1699-1751)               |
|3.653    |grove                       |joseph                                               |1764-1764)               |
|4.135    |ward                        |edward                                               |1667-1731)               |
|3.657    |beattie                     |james                                                |1735-1803)               |
|3.659    |lahontan                    |louis armand de lom d'arce                           |1666-1715)               |
|1.116    |black                       |william                                              |1745-1745)               |
|4.136    |bussy                       |roger de rabutin                                     |1618-1693)               |
|3.666    |fleetwood                   |william                                              |1656-1723)               |
|3.667    |NA (1607-1686)              |NA                                                   |NA                       |
|3.670    |pinkerton                   |john                                                 |1758-1826)               |
|3.671    |carter                      |landon                                               |1710-1778)               |
|3.673    |smith                       |william                                              |NA-NA)                   |
|3.674    |blackburn                   |j                                                    |1762-1762)               |
|6.97     |NA (1661-1725)              |NA                                                   |NA                       |
|3.679    |oates                       |titus                                                |1649-1705)               |
|6.99     |ware                        |james                                                |1594-1666)               |
|3.683    |morgan                      |thomas                                               |1743-1743)               |
|3.684    |grattan                     |henry                                                |1746-1820)               |
|3.685    |carnot                      |lazare                                               |1753-1823)               |
|3.686    |jebb                        |richard                                              |1766-1834)               |
|4.138    |moysie                      |david                                                |NA-NA)                   |
|5.31     |cowper                      |william                                              |1665-1723)               |
|1.118    |hodges                      |james                                                |NA-NA)                   |
|3.689    |baston                      |thomas                                               |NA-NA)                   |
|3.690    |price                       |uvedale                                              |1747-1829)               |
|3.692    |king                        |john                                                 |NA-NA)                   |
|3.693    |wood                        |john                                                 |1705-1754)               |
|3.696    |bullock                     |thomas                                               |1694-1760)               |
|3.700    |bolingbroke                 |henry st john                                        |1678-1751)               |
|1.121    |hooke                       |n                                                    |1690-1763)               |
|3.704    |echard                      |laurence                                             |1670-1730)               |
|3.712    |young                       |william                                              |1725-1788)               |
|1.123    |walker                      |joseph c                                             |1810-1810)               |
|3.719    |castlereagh                 |robert stewart                                       |1769-1822)               |
|3.721    |lee                         |arthur                                               |1740-1792)               |
|3.732    |miles                       |william augustus                                     |1753-1817)               |
|3.734    |backus                      |isaac                                                |1724-1806)               |
|4.147    |pointer                     |john                                                 |1668-1754)               |
|3.739    |ancell                      |samuel                                               |1802-1802)               |
|3.740    |moreau                      |jacob nicolas                                        |1717-1804)               |
|3.741    |lattin                      |patrick                                              |NA-NA)                   |
|4.149    |jephson                     |robert                                               |1736-1803)               |
|4.150    |wright                      |thomas                                               |???1758-1812)            |
|3.747    |chauvet                     |d                                                    |NA-NA)                   |
|3.748    |varlo                       |charles                                              |1795-1795)               |
|3.750    |grenville                   |william wyndham                                      |1759-1834)               |
|3.751    |NA (1799-1799)              |NA                                                   |NA                       |
|3.752    |mountmorres of castlemorres |hervey redmond morres                                |1746-1797)               |
|3.753    |pulteney                    |william                                              |1684-1764)               |
|4.153    |rogers                      |robert                                               |1731-1795)               |
|4.154    |wallace                     |robert                                               |1697-1771)               |
|3.764    |lauderdale                  |james maitland                                       |1759-1839)               |
|3.766    |hunter                      |william                                              |1755-1812)               |
|3.768    |dalrymple                   |alexander                                            |1737-1808)               |
|3.770    |bergasse                    |nicolas                                              |NA-NA)                   |
|4.157    |caesar                      |julius                                               |NA-NA)                   |
|3.777    |calet                       |jean jacques                                         |NA-NA)                   |
|3.778    |gough                       |john                                                 |1721-1791)               |
|3.779    |bentley                     |thomas richard                                       |1748-1831)               |
|6.110    |montfaucon                  |bernard de                                           |1655-1741)               |
|4.158    |kane                        |richard                                              |1737-1737)               |
|3.780    |macartney                   |george                                               |1737-1806)               |
|3.781    |sackville                   |george germain                                       |1716-1785)               |
|3.782    |howel                       |laurence                                             |1664-1720)               |
|4.159    |hatton                      |edward                                               |1664-1664)               |
|3.784    |draper                      |william                                              |1721-1787)               |
|3.787    |mirabeau                    |gabriel-honoré de riquetti                           |1749-1791)               |
|3.788    |wilson                      |william                                              |1690-1741)               |
|3.791    |withers                     |philip                                               |1790-1790)               |
|4.163    |finch                       |robert pool                                          |1724-1803)               |
|3.797    |ferguson                    |t                                                    |NA-NA)                   |
|3.799    |wishart                     |george                                               |1599-1671)               |
|1.133    |reynolds                    |john                                                 |1621-1650)               |
|1.134    |rennell                     |james                                                |1742-1830)               |
|3.800    |williamson                  |peter                                                |1730-1799)               |
|4.167    |sancho                      |ignatius                                             |1729-1780)               |
|4.168    |collyer                     |mary                                                 |1763-1763)               |
|3.802    |leland                      |john                                                 |1691-1766)               |
|3.804    |NA (1737-1807)              |NA                                                   |NA                       |
|3.807    |bligh                       |reginald                                             |NA-NA)                   |
|1.135    |addison                     |joseph                                               |1672-1719)               |
|3.808    |chandler                    |edward                                               |1668-1750)               |
|3.810    |leeds                       |thomas osborne                                       |1631-1712)               |
|6.119    |sibbald                     |robert                                               |1641-1722)               |
|4.171    |sayer                       |edward                                               |NA-NA)                   |
|3.813    |zinzendorf                  |nicolaus ludwig                                      |1700-1760)               |
|3.814    |stair                       |john dalrymple                                       |1720-1789)               |
|3.817    |drevon                      |f henry                                              |NA-NA)                   |
|1.137    |onely                       |richard                                              |1723-1787)               |
|4.175    |fox                         |william                                              |active 1791-1813)        |
|3.822    |o'connor                    |arthur                                               |1763-1852)               |
|3.828    |rudd                        |pemberton                                            |NA-NA)                   |
|3.831    |musgrave                    |william                                              |1655-1721)               |
|3.832    |goold                       |thomas                                               |1766-1846)               |
|4.183    |boutet                      |claude                                               |NA-NA)                   |
|5.36     |trapp                       |joseph                                               |1679-1747)               |
|3.835    |mcalpine                    |j                                                    |NA-NA)                   |
|3.840    |wilde                       |john                                                 |1590-1669)               |
|3.842    |morgan                      |william                                              |1750-1833)               |
|3.843    |sheridan                    |thomas                                               |1719-1788)               |
|4.188    |whatley                     |stephen                                              |1712-1741)               |
|3.852    |boulainvilliers             |henri                                                |1658-1722)               |
|3.854    |guiscard                    |antoine                                              |1658-1711)               |
|4.191    |NA (1749-1814)              |NA                                                   |NA                       |
|1.143    |cambridge                   |richard owen                                         |1717-1802)               |
|6.123    |keating                     |geoffrey                                             |1570-1644)               |
|3.859    |m'mahon                     |thomas o'brien                                       |NA-NA)                   |
|1.144    |meldrum                     |george                                               |1635-1709)               |
|3.864    |james                       |charles                                              |1821-1821)               |
|1.145    |dinmore                     |richard                                              |1765-1811)               |
|3.871    |orde                        |thomas                                               |1746-1807)               |
|3.874    |cox                         |richard                                              |1702-1766)               |
|4.195    |carlisle                    |frederick howard                                     |1748-1825)               |
|3.878    |stephens                    |william                                              |1671-1753)               |
|3.879    |townsend                    |horatio                                              |1793-1793)               |
|3.880    |sykes                       |arthur ashley                                        |1684-1756)               |
|3.882    |NA (1726-1785)              |NA                                                   |NA                       |
|4.196    |frowde                      |philip                                               |1738-1738)               |
|4.197    |ussher                      |james                                                |1720-1772)               |
|4.200    |castellion                  |sébastien                                            |1515-1563)               |
|1.153    |talbot                      |william                                              |1659-1730)               |
|3.894    |lewis                       |john                                                 |1675-1747)               |
|4.201    |luckombe                    |philip                                               |1803-1803)               |
|3.895    |danican                     |auguste                                              |1764-1848)               |
|3.896    |NA (1670-1742)              |NA                                                   |NA                       |
|3.898    |harris                      |john                                                 |1667-1719)               |
|3.899    |notcutt                     |william                                              |1672-1756)               |
|3.900    |châlons                     |vincent-claude                                       |1642-1694)               |
|3.901    |hereford                    |charles john ann                                     |1758-1758)               |
|3.902    |mitford                     |william                                              |1744-1827)               |
|3.905    |macgowan                    |john                                                 |1726-1780)               |
|1.156    |belsham                     |william                                              |1752-1827)               |
|1.157    |anderson                    |james                                                |1680-1739)               |
|4.203    |brooke                      |frances                                              |1724-1789)               |
|3.912    |scott                       |sarah                                                |1723-1795)               |
|4.206    |bicknell                    |alexander                                            |1796-1796)               |
|3.913    |macaulay                    |catharine                                            |1731-1791)               |
|3.915    |diderot                     |denis                                                |1713-1784)               |
|3.921    |duncan                      |alexander                                            |1708-1795)               |
|4.210    |vertot                      |abbé de                                              |1655-1735)               |
|1.159    |mascov                      |johann jakob                                         |1689-1761)               |
|3.930    |ellis                       |john                                                 |1768-1768)               |
|4.212    |NA (1690-1757)              |NA                                                   |NA                       |
|3.933    |hunter                      |john                                                 |1738-1821)               |
|4.214    |dilworth                    |w h                                                  |NA-NA)                   |
|6.141    |tindal                      |n                                                    |1687-1774)               |
|4.218    |mackenzie                   |anna maria                                           |NA-NA)                   |
|3.939    |malone                      |edmond                                               |1741-1812)               |
|6.142    |foxe                        |john                                                 |1516-1587)               |
|4.219    |preston                     |william                                              |1753-1807)               |
|6.143    |dumont                      |jean                                                 |1667-1727)               |
|6.144    |rushworth                   |john                                                 |1612-1690)               |
|3.942    |wood                        |anthony à                                            |1632-1695)               |
|3.947    |cotsford                    |edward                                               |NA-NA)                   |
|3.949    |blacow                      |richard                                              |1724-1760)               |
|1.163    |arniston                    |robert dundas                                        |1713-1787)               |
|3.953    |watson-taylor               |george                                               |1841-1841)               |
|4.223    |newton                      |john                                                 |1725-1807)               |
|4.224    |NA (1635-1719)              |NA                                                   |NA                       |
|6.147    |gibson                      |edmund                                               |1669-1748)               |
|4.225    |adams                       |john                                                 |1735-1826)               |
|3.971    |taaffe                      |dennis                                               |1743-1813)               |
|3.974    |knolles                     |richard                                              |1550-1610)               |
|6.148    |sawyer                      |edmund                                               |1759-1759)               |
|3.976    |griffith                    |amyas                                                |1746-1746)               |
|3.977    |abercromby                  |patrick                                              |1656-1716)               |
|3.979    |le clerc                    |jean                                                 |1657-1736)               |
|4.227    |condé                       |louis                                                |1530-1569)               |
|4.228    |hamilton                    |anthony                                              |1645-1719)               |
|4.229    |saint-simon                 |louis de rouvroy                                     |1675-1755)               |
|3.981    |dumouriez                   |charles-françois du périer                           |1739-1823)               |
|3.982    |eon de beaumont             |charles geneviève louis auguste andré timothée d'    |1728-1810)               |
|4.230    |baker                       |samuel                                               |NA-NA)                   |
|6.150    |walker                      |edward                                               |1612-1677)               |
|4.231    |wollstonecraft              |mary                                                 |1759-1797)               |
|1.171    |dalrymple                   |john                                                 |1726-1810)               |
|4.232    |fairfax                     |thomas                                               |1612-1671)               |
|4.233    |welwood                     |james                                                |1652-1727)               |
|3.987    |NA (1744-1836)              |NA                                                   |NA                       |
|3.988    |bushe                       |charles kendal                                       |1767-1843)               |
|3.990    |kames                       |henry home                                           |1696-1782)               |
|3.994    |gilbert                     |thomas                                               |1720-1798)               |
|3.996    |sherlock                    |thomas                                               |1678-1761)               |
|4.241    |easton                      |james                                                |NA-NA)                   |
|3.1000   |prescot                     |kenrick                                              |NA-NA)                   |
|4.242    |good                        |john mason                                           |1764-1827)               |
|1.174    |mackenzie                   |roderick                                             |NA-NA)                   |
|1.176    |hall                        |fayrer                                               |NA-NA)                   |
|3.1013   |kerr                        |james                                                |NA-NA)                   |
|3.1017   |higgons                     |bevill                                               |1670-1735)               |
|4.245    |watts                       |isaac                                                |1674-1748)               |
|3.1024   |montgaillard                |maurice                                              |1761-1841)               |
|6.152    |herring                     |thomas                                               |1693-1757)               |
|3.1027   |johnston                    |james                                                |1655-1737)               |
|3.1035   |cudworth                    |william                                              |1717-1763)               |
|4.249    |mather                      |alexander                                            |1733-1800)               |
|3.1036   |lardner                     |nathaniel                                            |1684-1768)               |
|6.153    |nash                        |t                                                    |1725-1811)               |
|3.1037   |wright                      |thomas                                               |???NA-NA)                |
|3.1040   |charnock                    |john                                                 |1756-1807)               |
|3.1050   |agar                        |james                                                |NA-NA)                   |
|3.1056   |courtenay                   |john                                                 |1738-1816)               |
|1.180    |cartwright                  |edmund                                               |1743-1823)               |
|3.1061   |stock                       |joseph                                               |1740-1813)               |
|4.254    |lavallée                    |joseph                                               |1747-1816)               |
|3.1068   |fuller                      |william                                              |1670-1733)               |
|1.184    |best                        |william                                              |1695-1761)               |
|3.1072   |hurd                        |richard                                              |1720-1808)               |
|1.188    |wright                      |william                                              |1723-1723)               |
|1.189    |fothergill                  |john                                                 |1712-1780)               |
|3.1080   |prideaux                    |humphrey                                             |1648-1724)               |
|1.191    |fleetwood                   |john                                                 |NA-NA)                   |
|4.263    |egerton                     |charles                                              |NA-NA)                   |
|3.1084   |newcomb                     |thomas                                               |1682-1765)               |
|3.1085   |taylor                      |jeremy                                               |1613-1667)               |
|3.1086   |sheffield                   |john holroyd                                         |1735-1821)               |
|4.265    |raleigh                     |walter                                               |1552-1618)               |
|6.160    |mortimer                    |thomas                                               |1730-1810)               |
|12       |newbery                     |john                                                 |1713-1767)               |
|4.270    |child                       |josiah                                               |1630-1699)               |
|6.161    |sydney                      |temple                                               |NA-NA)                   |
|6.162    |strype                      |john                                                 |1643-1737)               |
|4.272    |fleury                      |claude                                               |1640-1723)               |
|3.1098   |ansaldi                     |casto innocente                                      |1710-1780)               |
|3.1101   |eyre                        |edmund john                                          |1767-1816)               |
|4.275    |erskine                     |ralph                                                |1685-1752)               |
|5.52     |grandy                      |richard                                              |NA-NA)                   |
|3.1103   |ollyffe                     |george                                               |1682-1752)               |
|1.195    |shaftoe                     |frances                                              |NA-NA)                   |
|3.1106   |leonard                     |daniel                                               |1740-1829)               |
|3.1112   |condorcet                   |jean-antoine-nicolas de caritat                      |1743-1794)               |
|6.167    |calderwood                  |david                                                |1575-1650)               |
|5.54     |mawgridge                   |john                                                 |1676-1708)               |
|3.1117   |hanway                      |jonas                                                |1712-1786)               |
|4.286    |fortune                     |t                                                    |NA-NA)                   |
|5.56     |maynwaring                  |arthur                                               |1668-1712)               |
|3.1119   |feuquières                  |antoine de pas                                       |1648-1711)               |
|3.1120   |geddes                      |michael                                              |1650-1713)               |
|3.1122   |ramel                       |jean pierre                                          |1768-1815)               |
|1.198    |winer                       |robert                                               |NA-NA)                   |
|3.1123   |cooper                      |myles                                                |1737-1785)               |
|1.202    |dirom                       |alexander                                            |1830-1830)               |
|3.1132   |louvet de couvray           |jean-baptiste                                        |1760-1797)               |
|3.1140   |NA (1727-1775)              |NA                                                   |NA                       |
|1.204    |lowth                       |thomas henry                                         |1754-1778)               |
|3.1142   |titus                       |silius                                               |1623-1704)               |
|3.1145   |collis                      |thomas                                               |1679-1745)               |
|4.290    |jackson                     |charles                                              |NA-NA)                   |
|3.1147   |macklin                     |charles                                              |1697-1797)               |
|3.1149   |blanch                      |john                                                 |1650-1650)               |
|6.170    |monson                      |william                                              |1569-1643)               |
|3.1150   |cockings                    |george                                               |1802-1802)               |
|6.171    |NA (1614-1687)              |NA                                                   |NA                       |
|3.1154   |tindal                      |matthew                                              |1653-1733)               |
|16.1     |steel                       |david                                                |NA-NA)                   |
|1.211    |findlater                   |william                                              |NA-NA)                   |
|1.213    |clarendon                   |hugh                                                 |NA-NA)                   |
|3.1168   |wright                      |j                                                    |1761-1765)               |
|3.1169   |jackson                     |john                                                 |1742-1742)               |
|3.1170   |brauer                      |christoph friedrich                                  |1782-1782)               |
|3.1172   |perreau                     |jean-andré                                           |1749-1813)               |
|3.1173   |park                        |robert                                               |NA-NA)                   |
|4.306    |rollin                      |charles                                              |1661-1741)               |
|1.215    |whately                     |thomas                                               |1772-1772)               |
|4.308    |challoner                   |richard                                              |1691-1781)               |
|3.1183   |newcastle                   |thomas pelham-holles                                 |1693-1768)               |
|3.1184   |NA (1763-1763)              |NA                                                   |NA                       |
|1.219    |gill                        |john                                                 |1697-1771)               |
|4.313    |allen                       |charles                                              |1793-1793)               |
|4.316    |arnold                      |charles henry                                        |NA-NA)                   |
|6.185    |raymond                     |george frederick                                     |NA-NA)                   |
|3.1197   |pufendorf                   |samuel                                               |1632-1694)               |
|3.1201   |clavière                    |etienne                                              |1735-1793)               |
|4.323    |le laboureur                |jean                                                 |1623-1675)               |
|3.1207   |payne                       |thomas                                               |1689-1759)               |
|6.198    |hutcheson                   |archibald                                            |1659-1740)               |
|3.1209   |mackay                      |samuel                                               |1764-1831)               |
|3.1219   |forman                      |charles                                              |1728-1728)               |
|3.1224   |rous                        |john                                                 |1411-1491)               |
|6.210    |wilkins                     |david                                                |1685-1745)               |
|3.1225   |musgrave                    |richard                                              |1757-1818)               |
|6.211    |robinson                    |james                                                |1739-1739)               |
|3.1227   |crouch                      |henry                                                |1732-1732)               |
|3.1229   |d'anvers                    |caleb                                                |NA-NA)                   |
|3.1230   |duvoisin                    |jean baptiste                                        |1744-1813)               |
|3.1231   |schomberg                   |r                                                    |1714-1792)               |
|3.1232   |manley                      |delariviere                                          |NA-NA)                   |
|3.1236   |weld                        |matthew                                              |NA-NA)                   |
|5.65     |palmer                      |william                                              |1702-1702)               |
|3.1242   |hamilton                    |william                                              |NA-NA)                   |
|6.227    |stradiotti                  |antonio                                              |NA-NA)                   |
|6.229    |pinfold                     |charles                                              |1677-1754)               |
|3.1249   |renolds                     |george                                               |NA-NA)                   |
|6.232    |byng                        |john                                                 |1704-1757)               |
|3.1254   |eustace                     |j s                                                  |1760-1805)               |
|3.1256   |boswell                     |james                                                |1740-1795)               |
|3.1257   |maseres                     |francis                                              |1731-1824)               |
|3.1270   |alleyne                     |john gay                                             |1724-1801)               |
|3.1271   |antraigues                  |emmanuel-louis-henri-alexandre de launay             |1753-1812)               |
|3.1273   |rymer                       |thomas                                               |1641-1713)               |
|3.1274   |clarke                      |samuel                                               |1675-1729)               |
|3.1275   |bacon                       |matthew                                              |1730-1730)               |
|3.1277   |lewis                       |william                                              |1708-1781)               |
|1.231    |crosfeild                   |robert                                               |NA-NA)                   |
|3.1282   |tickell                     |richard                                              |1751-1793)               |
|6.262    |barnard                     |edward                                               |NA-NA)                   |
|1.233    |hurdis                      |james                                                |1763-1801)               |
|3.1290   |rogers                      |john                                                 |1679-1729)               |
|1.235    |maurice                     |thomas                                               |1754-1824)               |
|3.1292   |boyer                       |abel                                                 |1667-1729)               |
|3.1294   |muncaster                   |john pennington                                      |1737-1813)               |
|3.1295   |northcote                   |william                                              |1783-1783)               |
|6.275    |mulford                     |samuel                                               |NA-NA)                   |
|1.236    |NA (1720-1788)              |NA                                                   |NA                       |
|3.1297   |nicholls                    |william                                              |1664-1712)               |
|1.239    |macallester                 |oliver                                               |NA-NA)                   |
|5.77     |reede-ginckel               |godard                                               |1644-1703)               |
|3.1301   |cumberland                  |richard                                              |1732-1811)               |
|1.240    |trent                       |william                                              |1715-1787)               |
|3.1305   |NA (1790-1791)              |NA                                                   |NA                       |
|3.1306   |colborne                    |robert                                               |1753-1753)               |
|3.1309   |tennent                     |john                                                 |1710-1748)               |
|3.1311   |buckingham                  |john sheffield                                       |1721-1721)               |
|3.1318   |bowdler                     |thomas                                               |1754-1825)               |
|4.344    |johnson                     |thomas                                               |1788-1788)               |
|3.1324   |holmes                      |robert                                               |1765-1859)               |
|3.1326   |thornton                    |robert john                                          |1768-1837)               |
|3.1328   |lestock                     |richard                                              |1679-1746)               |
|3.1330   |comber                      |thomas                                               |1778-1778)               |
|4.350    |drayton                     |michael                                              |1563-1631)               |
|3.1334   |goudar                      |ange                                                 |1720-1791)               |
|4.351    |dell                        |henry                                                |1756-1766)               |
|3.1343   |eastcott                    |richard                                              |1740-1828)               |
|1.248    |ibbetson                    |james                                                |1755-1790)               |
|1.249    |martyn                      |benjamin                                             |1699-1763)               |
|1.252    |mey                         |de                                                   |NA-NA)                   |
|3.1348   |weston                      |george                                               |1753-1782)               |
|3.1357   |whitby                      |daniel                                               |1638-1726)               |
|3.1361   |ward                        |r plumer                                             |1765-1846)               |
|3.1366   |ferrar                      |john                                                 |1743-1743)               |
|4.363    |usher                       |g                                                    |NA-NA)                   |
|1.253    |grant                       |william                                              |NA-NA)                   |
|1.254    |crawford                    |charles                                              |1752-1752)               |
|3.1373   |méhégan                     |guillaume-alexandre de                               |1721-1766)               |
|1.257    |chalmers                    |george                                               |1742-1825)               |
|4.369    |marana                      |giovanni paolo                                       |1642-1693)               |
|3.1409   |gentleman                   |francis                                              |1728-1784)               |
|1.263    |asgill                      |john                                                 |1659-1738)               |
|4.380    |duguay-trouin               |rené                                                 |1673-1736)               |
|4.381    |moore                       |john                                                 |1729-1802)               |
|3.1425   |smith                       |samuel stanhope                                      |1750-1819)               |
|3.1428   |chateaubriand               |françois rené                                        |1768-1848)               |
|3.1429   |orléans                     |pierre joseph d'                                     |1641-1698)               |
|3.1430   |wesley                      |samuel                                               |1662-1735)               |
|3.1431   |beverley                    |robert                                               |1673-1722)               |
|4.383    |johnstone                   |george                                               |1730-1787)               |
|3.1433   |grange                      |james erskine                                        |1679-1754)               |
|1.268    |smith                       |thomas                                               |1638-1710)               |
|1.269    |NA (1754-1833)              |NA                                                   |NA                       |
|3.1436   |russell                     |william                                              |1741-1793)               |
|1.270    |warren                      |robert                                               |1680-1740)               |
|1.271    |warner                      |ferdinando                                           |1703-1768)               |
|3.1443   |heron                       |robert                                               |1764-1807)               |
|3.1448   |tufton                      |sackville                                            |1721-1721)               |
|3.1449   |alletz                      |pons augustin                                        |1705-1785)               |
|3.1450   |whitehead                   |paul                                                 |1710-1774)               |
|6.363    |maitland                    |william                                              |1693-1757)               |
|3.1452   |lettsom                     |john coakley                                         |1744-1815)               |
|3.1455   |gillies                     |john                                                 |1747-1836)               |
|1.273    |higgins                     |francis                                              |1669-1728)               |
|3.1463   |hale                        |matthew                                              |1609-1676)               |
|3.1465   |birch                       |thomas                                               |1705-1766)               |
|1.275    |gladwin                     |francis                                              |1813-1813)               |
|1.276    |juniper                     |j                                                    |NA-NA)                   |
|3.1468   |leland                      |thomas                                               |1722-1785)               |
|4.386    |smith                       |charlotte turner                                     |1749-1806)               |
|3.1471   |boyse                       |samuel                                               |1708-1749)               |
|1.279    |ferguson                    |robert                                               |1714-1714)               |
|4.391    |NA (1746-1792)              |NA                                                   |NA                       |
|4.392    |troughton                   |thomas                                               |NA-NA)                   |
|1.280    |collinson                   |john                                                 |1757-1793)               |
|4.394    |thomas                      |simon                                                |1743-1743)               |
|3.1490   |andrews                     |john                                                 |1736-1809)               |
|6.369    |basnage                     |jacques                                              |1653-1723)               |
|3.1491   |vaughan                     |benjamin                                             |1751-1835)               |
|3.1492   |kimber                      |isaac                                                |1692-1755)               |
|4.396    |solís                        |antonio de                                           |1610-1686)               |
|3.1498   |lloyd                       |william                                              |1627-1717)               |
|3.1499   |d'assigny                   |marius                                               |1643-1717)               |
|3.1500   |peyton                      |v j                                                  |NA-NA)                   |
|3.1501   |reeves                      |john                                                 |1752-1829)               |
|4.399    |mottley                     |john                                                 |1692-1750)               |
|3.1502   |gibson                      |james                                                |1690-1752)               |
|3.1508   |astley                      |philip                                               |1742-1814)               |
|16.2     |collyer                     |joseph                                               |1776-1776)               |
|3.1510   |cerisier                    |antoine marie                                        |1749-1828)               |
|1.289    |de lolme                    |jean louis                                           |1740-1806)               |
|1.290    |bingley                     |william                                              |1738-1799)               |
|3.1512   |radicati                    |alberto                                              |1698-1737)               |
|3.1523   |ramsay                      |david                                                |1749-1815)               |
|3.1524   |harte                       |walter                                               |1709-1774)               |
|3.1526   |o'conor                     |charles                                              |1710-1791)               |
|3.1528   |warburton                   |william                                              |1698-1779)               |
|3.1529   |ferrière                     |claude joseph de                                     |1748-1748)               |
|5.103    |sacheverell                 |henry                                                |1674-1724)               |
|3.1531   |polesworth                  |humphry                                              |NA-NA)                   |
|3.1532   |henry                       |robert                                               |1718-1790)               |
|3.1534   |NA ( 673- 735)              |NA                                                   |NA                       |
|1.292    |bower                       |archibald                                            |1686-1766)               |
|10.63    |bernard                     |edward                                               |1638-1696)               |
|3.1538   |berthollet                  |claude-louis                                         |1748-1822)               |
|3.1541   |jackson                     |john baptist                                         |1701-1780)               |
|3.1544   |foster                      |james                                                |1697-1753)               |
|4.411    |spence                      |joseph                                               |1699-1768)               |
|3.1550   |towgood                     |micaiah                                              |1700-1792)               |
|4.414    |doddridge                   |philip                                               |1702-1751)               |
|3.1564   |lewis                       |paul                                                 |NA-NA)                   |
|3.1567   |freind                      |john                                                 |1675-1728)               |
|1.294    |cromarty                    |george mackenzie                                     |1630-1714)               |
|3.1569   |anderson                    |aeneas                                               |NA-NA)                   |
|3.1570   |clinton                     |henry                                                |1738-1795)               |
|3.1572   |oglethorpe                  |james edward                                         |1696-1785)               |
|1.295    |pegge                       |samuel                                               |1704-1796)               |
|3.1575   |burchett                    |josiah                                               |1666-1746)               |
|4.419    |crouch                      |nathaniel                                            |1632-1725)               |
|3.1578   |NA (1762-1762)              |NA                                                   |NA                       |
|9.11     |NA (1745-1745)              |NA                                                   |NA                       |
|6.378    |russel                      |william augustus                                     |NA-NA)                   |
|7.2      |dyke                        |joseph                                               |NA-NA)                   |
|5.113    |beilby                      |ralph                                                |1744-1817)               |
|5.114    |nugent                      |ridgly                                               |NA-NA)                   |
|5.115    |limerick                    |thomas dongan                                        |1634-1715)               |
|5.117    |stapleton                   |anne                                                 |1722-1722)               |
|5.118    |limerick                    |euphemia maria dungan                                |1703-1703)               |
|5.119    |carlingford                 |francis taaffe                                       |1639-1704)               |
|5.120    |mitchell                    |joseph                                               |1706-1706)               |
|10.68    |hussey                      |john                                                 |NA-NA)                   |
|5.121    |skelton                     |mary                                                 |NA-NA)                   |
|5.123    |roch                        |james                                                |NA-NA)                   |
|10.69    |clanricarde                 |john bourke                                          |1642-1722)               |
|5.124    |fagan                       |peter                                                |NA-NA)                   |
|5.125    |everard                     |redmond                                              |1740-1740)               |
|9.18     |arthur                      |daniel                                               |NA-NA)                   |
|5.126    |brough                      |walter                                               |NA-NA)                   |
|5.127    |luttrell                    |catherine                                            |NA-NA)                   |
|5.128    |bellew                      |thomas                                               |NA-NA)                   |
|5.129    |mapas                       |john                                                 |NA-NA)                   |
|5.130    |carter                      |thomas                                               |1701-1701)               |
|5.133    |harris                      |katherine                                            |1687-1701)               |
|5.134    |dillon                      |john                                                 |1701-1701)               |
|5.135    |wolseley                    |robert                                               |NA-NA)                   |
|5.139    |delamar                     |walter                                               |NA-NA)                   |
|5.140    |molony                      |dennis                                               |NA-NA)                   |
|5.141    |fitzpatrick                 |dorothy                                              |1733-1733)               |
|5.143    |bagot                       |john                                                 |NA-NA)                   |
|6.381    |eustace                     |margaret                                             |1738-1738)               |
|5.145    |michelborne                 |john                                                 |1647-1721)               |
|5.146    |grace                       |lettice                                              |NA-NA)                   |
|5.147    |baker                       |john                                                 |1685-1714)               |
|5.148    |baliol                      |margaret                                             |NA-NA)                   |
|5.150    |baliol                      |rachel                                               |NA-NA)                   |
|5.151    |granard                     |george forbes                                        |1685-1765)               |
|5.152    |dunn                        |patrick                                              |1642-1713)               |
|5.153    |blanchevile                 |margaret                                             |NA-NA)                   |
|6.383    |carte                       |samuel                                               |1653-1740)               |
|24.1     |freke                       |john                                                 |NA-NA)                   |
|3.1588   |toland                      |john                                                 |1670-1722)               |
|9.22     |brimful                     |benjamin                                             |NA-NA)                   |
|4.424    |barrow                      |john                                                 |NA-NA)                   |
|6.388    |stephenson                  |robert                                               |NA-NA)                   |
|5.169    |valogne                     |mark anthony de                                      |NA-NA)                   |
|6.389    |williams                    |guilielmo                                            |1724-1724)               |
|3.1596   |reeve                       |joseph                                               |1733-1820)               |
|4.434    |neville                     |henry                                                |1620-1694)               |
|5.173    |alsop                       |anthony                                              |1672-1726)               |
|9.50     |bourne                      |henry                                                |1793-1793)               |
|9.51     |byron                       |george                                               |1792-1792)               |
|3.1604   |pérez                        |antonio                                              |1611-1611)               |
|3.1605   |dalrymple                   |david                                                |1726-1792)               |
|6.396    |harvey                      |edmund                                               |1594-1673)               |
|3.1607   |bearcroft                   |philip                                               |1697-1761)               |
|10.75    |nugent                      |edward                                               |NA-NA)                   |
|3.1609   |houstoun                    |james                                                |1690-1690)               |
|1.308    |barbaro                     |daniel                                               |1514-1570)               |
|9.58     |dibdin                      |charles                                              |1745-1814)               |
|5.208    |NA (1653-1708)              |NA                                                   |NA                       |
|5.215    |rowley                      |joshua                                               |1730-1790)               |
|1.310    |dennis                      |john                                                 |1657-1734)               |
|3.1612   |collins                     |arthur                                               |1682-1760)               |
|5.219    |withall                     |benjamin                                             |NA-NA)                   |
|3.1613   |bulstrode                   |richard                                              |1610-1711)               |
|1.312    |ussher                      |james                                                |1581-1656)               |
|5.230    |forbes                      |duncan                                               |1644-1704)               |
|1.313    |munk                        |jens                                                 |1579-1628)               |
|4.445    |fox                         |william                                              |1736-1826)               |
|1.577    |davis                       |richard                                              |1658-1714)               |
|1.579    |pagitt                      |ephraim                                              |1575-1647)               |
|4.453    |grotius                     |hugo                                                 |1583-1645)               |
|3.1733   |nalson                      |john                                                 |1638-1686)               |
|1.582    |albemarle                   |george monck                                         |1608-1670)               |
|3.1736   |verstegan                   |richard                                              |1550-1640)               |
|1.585    |o'neill                     |phelim                                               |1604-1653)               |
|1.586    |abbot                       |george                                               |1562-1633)               |
|1.587    |gray                        |william                                              |1649-1649)               |
|3.1738   |bate                        |george                                               |1608-1669)               |
|1.591    |NA (1619-1682)              |NA                                                   |NA                       |
|3.1740   |woofe                       |abraham                                              |NA-NA)                   |
|6.705    |mather                      |cotton                                               |1663-1728)               |
|4.454    |barrow                      |isaac                                                |1630-1677)               |
|1.595    |NA (1613-1703)              |NA                                                   |NA                       |
|6.706    |ingelo                      |nathaniel                                            |1621-1683)               |
|1.599    |mountrath                   |charles coote                                        |1610-1661)               |
|3.1741   |aickin                      |joseph                                               |NA-NA)                   |
|3.1742   |long                        |thomas                                               |1621-1707)               |
|6.707    |strada                      |famiano                                              |1572-1649)               |
|3.1743   |northleigh                  |john                                                 |1657-1705)               |
|6.708    |charleton                   |walter                                               |1619-1707)               |
|4.455    |NA (1633-1701)              |NA                                                   |NA                       |
|3.1745   |leti                        |gregorio                                             |1630-1701)               |
|1.604    |monmouth                    |james scott                                          |1649-1685)               |
|6.710    |hawles                      |john                                                 |1645-1716)               |
|1.607    |NA (1648-1648)              |NA                                                   |NA                       |
|1.609    |bristol                     |george digby                                         |1612-1677)               |
|6.711    |NA (1629-1696)              |NA                                                   |NA                       |
|3.1746   |rapin                       |rené                                                 |1621-1687)               |
|1.611    |bagshaw                     |edward                                               |1662-1662)               |
|1.612    |ram                         |robert                                               |1657-1657)               |
|1.613    |boyse                       |j                                                    |1660-1728)               |
|3.1747   |patrick                     |john                                                 |1632-1695)               |
|1.614    |ocland                      |christopher                                          |1590-1590)               |
|3.1748   |le bossu                    |rené                                                  |1631-1680)               |
|1.615    |bowles                      |edward                                               |1613-1662)               |
|3.1749   |swadlin                     |thomas                                               |1600-1670)               |
|1.622    |spencer                     |benjamin                                             |1595-1595)               |
|1.625    |sampson                     |lat                                                  |NA-NA)                   |
|1.628    |hausted                     |peter                                                |1645-1645)               |
|3.1750   |gauden                      |john                                                 |1605-1662)               |
|1.630    |lilburne                    |john                                                 |1614-1657)               |
|1.632    |tresilian                   |thomas                                               |NA-NA)                   |
|1.636    |selden                      |john                                                 |1584-1654)               |
|4.457    |borough                     |john                                                 |1643-1643)               |
|1.637    |ward                        |nathaniel                                            |1578-1652)               |
|6.716    |fowler                      |j                                                    |NA-NA)                   |
|6.717    |prynne                      |william                                              |1600-1669)               |
|1.645    |baillie                     |robert                                               |1599-1662)               |
|1.646    |crant                       |thomas                                               |NA-NA)                   |
|1.649    |baxter                      |richard                                              |1615-1691)               |
|3.1751   |puller                      |timothy                                              |1638-1693)               |
|1.650    |plat                        |hugh                                                 |1552-1611)               |
|1.651    |plantagenet                 |beauchamp                                            |NA-NA)                   |
|258.3    |clagett                     |william                                              |1646-1688)               |
|1.660    |bastwick                    |john                                                 |1593-1654)               |
|1.662    |garraway                    |henry                                                |1575-1646)               |
|3.1752   |care                        |henry                                                |1646-1688)               |
|3.1753   |barbour                     |john                                                 |1395-1395)               |
|1.664    |payne                       |nicholas                                             |NA-NA)                   |
|1.670    |ford                        |simon                                                |1619-1699)               |
|1.671    |dole                        |dorcas                                               |NA-NA)                   |
|1.672    |sheringham                  |robert                                               |1602-1678)               |
|1.673    |bland                       |peter                                                |NA-NA)                   |
|1.675    |harris                      |john                                                 |???NA-NA)                |
|1.679    |quarles                     |francis                                              |1592-1644)               |
|1.680    |addison                     |lancelot                                             |1632-1703)               |
|1.682    |gordricke                   |william                                              |NA-NA)                   |
|1.683    |jones                       |adam                                                 |NA-NA)                   |
|1.684    |bond                        |john                                                 |1612-1676)               |
|1.685    |cragge                      |john                                                 |NA-NA)                   |
|1.687    |hickes                      |george                                               |1642-1715)               |
|1.689    |heywood                     |thomas                                               |1641-1641)               |
|208.6    |casaubon                    |meric                                                |1599-1671)               |
|1.695    |williams                    |roger                                                |1604-1683)               |
|6.728    |fisher                      |payne                                                |1616-1693)               |
|1.705    |manchester                  |edward montagu                                       |1602-1671)               |
|3.1758   |hayward                     |john                                                 |1564-1627)               |
|6.729    |vega                        |garcilaso de la                                      |1539-1616)               |
|6.731    |bedloe                      |william                                              |1650-1680)               |
|1.708    |harley                      |edward                                               |1624-1700)               |
|4.462    |NA (  39-  65)              |NA                                                   |NA                       |
|1.712    |bishop                      |george                                               |1668-1668)               |
|1.715    |leicester                   |robert sidney                                        |1595-1677)               |
|1.717    |eustace                     |sir maurice                                          |1590-1661)               |
|1.718    |NA (1689-1689)              |NA                                                   |NA                       |
|1.719    |robinson                    |john                                                 |???NA-NA)                |
|1.720    |jordan                      |thomas                                               |1612-1685)               |
|1.724    |mackenzie                   |george                                               |1636-1691)               |
|6.733    |parival                     |jean-nicolas de                                      |1605-1669)               |
|1.726    |skout                       |j                                                    |NA-NA)                   |
|1.727    |owen                        |john                                                 |1616-1683)               |
|1.729    |stapleton                   |philip                                               |1603-1647)               |
|1.730    |bernard                     |nicholas                                             |1661-1661)               |
|1.732    |hallowes                    |john                                                 |NA-NA)                   |
|1.733    |winthrop                    |john                                                 |1588-1649)               |
|1.734    |vernon                      |francis                                              |1637-1677)               |
|3.1761   |bouhours                    |dominique                                            |1628-1702)               |
|3.1762   |bennet                      |thomas                                               |1673-1728)               |
|3.1763   |richardson                  |richard                                              |1640-1640)               |
|1.743    |nedham                      |marchamont                                           |1620-1678)               |
|1.747    |clerke                      |john                                                 |1650-1650)               |
|1.753    |peters                      |hugh                                                 |1598-1660)               |
|1.755    |cuffe                       |maurice                                              |NA-NA)                   |
|1.756    |parkins                     |william                                              |NA-NA)                   |
|1.761    |brodrick                    |st john                                              |1659-1707)               |
|1.762    |dury                        |john                                                 |1596-1680)               |
|1.764    |holland                     |henry rich                                           |1590-1649)               |
|1.771    |morgan                      |edward                                               |1642-1642)               |
|1.772    |jameson                     |william                                              |1689-1720)               |
|4.465    |NA ( 450- 450)              |NA                                                   |NA                       |
|1.774    |shadforth                   |thomas                                               |NA-NA)                   |
|1.775    |avery                       |j                                                    |NA-NA)                   |
|1.777    |browne                      |thomas                                               |NA-NA)                   |
|10.129   |anderton                    |william                                              |1693-1693)               |
|1.781    |williams                    |andrew                                               |NA-NA)                   |
|1.783    |camilton                    |john                                                 |NA-NA)                   |
|1.784    |payne                       |william                                              |1650-1696)               |
|1.785    |rigby                       |alexander                                            |1594-1650)               |
|1.786    |mccarmick                   |william                                              |NA-NA)                   |
|3.1764   |manley                      |roger                                                |1626-1688)               |
|1.789    |gouge                       |william                                              |1578-1653)               |
|1.794    |pym                         |john                                                 |1584-1643)               |
|1.798    |austin                      |robert                                               |1593-1593)               |
|1.803    |hungerford                  |edward                                               |1596-1648)               |
|1.804    |howell                      |james                                                |1594-1666)               |
|1.807    |derby                       |james stanley                                        |1607-1651)               |
|1.810    |lenthall                    |william                                              |1591-1662)               |
|6.742    |spottiswood                 |john                                                 |1565-1639)               |
|1.812    |gadbury                     |john                                                 |1627-1704)               |
|1.814    |bayley                      |charles                                              |NA-NA)                   |
|6.743    |cradock                     |samuel                                               |1621-1706)               |
|3.1765   |wither                      |george                                               |1588-1667)               |
|1.825    |wroth                       |thomas                                               |1584-1672)               |
|1.826    |reynolds                    |edward                                               |1599-1676)               |
|1.829    |row                         |william                                              |NA-NA)                   |
|1.840    |rinaldo                     |giovanni                                             |NA-NA)                   |
|6.747    |bede                        |saint                                                |673- 735)                |
|25.5     |halifax                     |george savile                                        |1633-1695)               |
|1.846    |ley                         |john                                                 |1583-1662)               |
|5.336    |thun und hohenstein         |frantz siegmund                                      |1639-1702)               |
|1.849    |bennet                      |isaac                                                |NA-NA)                   |
|3.1768   |NA (1600-1649)              |NA                                                   |NA                       |
|3.1769   |leigh                       |edward                                               |1602-1671)               |
|3.1770   |maimbourg                   |louis                                                |1610-1686)               |
|1.858    |jenkins                     |david                                                |1582-1663)               |
|1.859    |aucher                      |john                                                 |1619-1701)               |
|5.339    |romney                      |henry sidney                                         |1641-1704)               |
|6.749    |spelman                     |henry                                                |1564-1641)               |
|1.862    |jessop                      |constantine                                          |1602-1658)               |
|1.868    |l'estrange                  |roger                                                |1616-1704)               |
|1.870    |felton                      |william                                              |NA-NA)                   |
|3.1771   |launoy                      |jean de                                              |1603-1678)               |
|1.872    |daniell                     |benjamin                                             |NA-NA)                   |
|1.874    |mackenzie                   |john                                                 |1648-1696)               |
|1.875    |warrington                  |henry booth                                          |1652-1694)               |
|6.751    |strafford                   |thomas wentworth                                     |1593-1641)               |
|1.879    |fairfax                     |ferdinando                                           |1584-1648)               |
|1.888    |johnson                     |samuel                                               |1649-1703)               |
|1.892    |tombes                      |john                                                 |1603-1676)               |
|1.896    |hammond                     |john                                                 |1707-1707)               |
|1.898    |ashe                        |simeon                                               |1662-1662)               |
|1.899    |hammond                     |henry                                                |1605-1660)               |
|4.468    |lawson                      |deodat                                               |NA-NA)                   |
|1.903    |lightfoot                   |john                                                 |1602-1675)               |
|1.907    |rudyerd                     |benjamin                                             |1572-1658)               |
|1.910    |roscommon                   |wentworth dillon                                     |1633-1685)               |
|1.911    |morgan                      |thomas                                               |1679-1679)               |
|10.133   |grimston                    |harbottle                                            |1603-1685)               |
|1.913    |angier                      |john                                                 |1605-1677)               |
|1.925    |hesketh                     |henry                                                |1637-1710)               |
|6.758    |carol                       |james                                                |NA-NA)                   |
|1.926    |pearse                      |edward                                               |1631-1694)               |
|208.7    |milton                      |john                                                 |1608-1674)               |
|1.928    |stileman                    |john                                                 |1685-1685)               |
|1.930    |cotton                      |robert                                               |1571-1631)               |
|1.937    |newcastle                   |william cavendish                                    |1592-1676)               |
|1.944    |pinck                       |robert                                               |1573-1647)               |
|6.763    |sarpi                       |paolo                                                |1552-1623)               |
|1.947    |wharton                     |edward                                               |1678-1678)               |
|1.949    |navailles                   |philippe de montault de bénac                        |1619-1684)               |
|315      |naunton                     |robert                                               |1563-1635)               |
|6.766    |spon                        |jacob                                                |1647-1685)               |
|6.767    |olaus                       |of uppsala                                           |1490-1557)               |
|1.957    |gormanston                  |nicholas preston                                     |1608-1643)               |
|1.960    |bridge                      |william                                              |1600-1670)               |
|1.962    |travers                     |robert                                               |NA-NA)                   |
|1.963    |wharton                     |henry                                                |1664-1695)               |
|3.1778   |harris                      |walter                                               |1686-1761)               |
|1.968    |essex                       |robert devereux                                      |1591-1646)               |
|6.771    |herbert of cherbury         |edward                                               |1583-1648)               |
|1.975    |ware                        |robert                                               |1696-1696)               |
|1.978    |valentine                   |thomas                                               |1586-1665)               |
|1.981    |pollard                     |hugh                                                 |1610-1666)               |
|6.773    |everard                     |edmund                                               |NA-NA)                   |
|1.983    |ormonde                     |james butler                                         |1610-1688)               |
|1.986    |harrison                    |richard                                              |NA-NA)                   |
|1.988    |plattes                     |gabriel                                              |1638-1640)               |
|1.989    |lechford                    |thomas                                               |1590-1644)               |
|1.992    |peyton                      |edward                                               |1588-1657)               |
|6.774    |cartwright                  |william                                              |1611-1643)               |
|6.775    |knox                        |john                                                 |1505-1572)               |
|3.1780   |lobb                        |stephen                                              |1699-1699)               |
|3.1781   |hawke                       |michael                                              |NA-NA)                   |
|1.995    |clarkson                    |david                                                |1622-1686)               |
|1.997    |spelman                     |john                                                 |1594-1643)               |
|3.1785   |guidott                     |thomas                                               |1698-1698)               |
|3.1786   |le gendre                   |louis                                                |1655-1733)               |
|1.1004   |wilbee                      |amon                                                 |NA-NA)                   |
|1.1005   |owen                        |corbett                                              |1646-1671)               |
|1.1006   |brown                       |john                                                 |1610-1679)               |
|6.779    |brown                       |thomas                                               |1663-1704)               |
|1.1013   |bacon                       |john                                                 |NA-NA)                   |
|1.1015   |shaftesbury                 |anthony ashley cooper                                |1621-1683)               |
|1.1017   |pelling                     |edward                                               |1718-1718)               |
|3.1788   |yalden                      |john                                                 |NA-NA)                   |
|1.1021   |bramhall                    |john                                                 |1594-1663)               |
|1.1022   |mead                        |matthew                                              |1630-1699)               |
|258.5    |cumberland                  |henry clifford                                       |1591-1643)               |
|6.782    |l'estrange                  |hamon                                                |1605-1660)               |
|6.783    |hickeringill                |edmund                                               |1631-1708)               |
|1.1034   |rouse                       |anthony                                              |NA-NA)                   |
|1.1037   |lefèvre                      |raoul                                                |1460-1460)               |
|3.1791   |patrick                     |simon                                                |1626-1707)               |
|1.1040   |warmstry                    |thomas                                               |1610-1665)               |
|1.1041   |harrison                    |john                                                 |1698-1698)               |
|1.1043   |percy                       |henry                                                |1659-1659)               |
|3.1792   |coke                        |roger                                                |1696-1696)               |
|3.1793   |NA (1683-1683)              |NA                                                   |NA                       |
|1.1048   |hannay                      |robert                                               |NA-NA)                   |
|1.1049   |bristol                     |john digby                                           |1580-1654)               |
|1.1050   |coleman                     |thomas                                               |1598-1647)               |
|3.1794   |powell                      |vavasor                                              |1617-1670)               |
|1.1054   |kirle                       |robert                                               |NA-NA)                   |
|1.1056   |morgan                      |t                                                    |NA-NA)                   |
|1.1058   |vane                        |henry                                                |1612-1662)               |
|1.1060   |inchiquin                   |murrough o'brien                                     |1614-1674)               |
|3.1795   |aranda                      |emanuel d'                                           |1602-1602)               |
|3.1796   |martin                      |                                                     |1719-1719)               |
|1.1063   |price                       |john                                                 |???NA-NA)                |
|1.1069   |castlemaine                 |roger palmer                                         |1634-1705)               |
|3.1799   |NA (1147-1147)              |NA                                                   |NA                       |
|1.1071   |griffith                    |alexander                                            |1690-1690)               |
|1.1073   |holles                      |denzil                                               |1599-1680)               |
|6.796    |king                        |daniel                                               |1664-1664)               |
|6.797    |sanders                     |jonathan                                             |NA-NA)                   |
|1.1086   |cokayne                     |john                                                 |NA-NA)                   |
|1.1088   |blount                      |charles                                              |1654-1693)               |
|3.1801   |NA (1639-1723)              |NA                                                   |NA                       |
|1.1095   |browne                      |john                                                 |1580-1659)               |
|3.1802   |doddridge                   |john                                                 |1555-1628)               |
|1.1096   |vaughan                     |robert                                               |1592-1667)               |
|6.799    |baker                       |richard                                              |1568-1645)               |
|6.801    |whitlocke                   |bulstrode                                            |1676-1676)               |
|3.1803   |moore                       |andrew                                               |NA-NA)                   |
|1.1106   |fox                         |george                                               |1624-1691)               |
|1.1107   |marprelate                  |martin                                               |NA-NA)                   |
|6.802    |machiavelli                 |niccolò                                              |1469-1527)               |
|3.1804   |barwick                     |john                                                 |1612-1664)               |
|6.804    |wildman                     |john                                                 |1621-1693)               |
|1.1123   |jones                       |e                                                    |NA-NA)                   |
|1.1124   |rigby                       |nathaniel                                            |NA-NA)                   |
|5.361    |grebner                     |paul                                                 |NA-NA)                   |
|1.1125   |dorchester                  |henry pierrepont                                     |1606-1680)               |
|1.1129   |thims                       |gregory                                              |NA-NA)                   |
|1.1131   |burnyeat                    |john                                                 |1631-1690)               |
|1.1132   |cole                        |robert                                               |NA-NA)                   |
|1.1138   |bond                        |edward                                               |NA-NA)                   |
|1.1139   |shute                       |giles                                                |1651-1651)               |
|1.1141   |waller                      |william                                              |1597-1668)               |
|1.1142   |alexander                   |john                                                 |NA-NA)                   |
|1.1143   |sherlock                    |william                                              |1641-1707)               |
|3.1808   |howard                      |robert                                               |1626-1698)               |
|5.364    |burges                      |cornelius                                            |1589-1665)               |
|3.1809   |pepys                       |samuel                                               |1633-1703)               |
|1.1153   |elizabeth                   |consort of frederick i king of bohemia               |1596-1662)               |
|1.1155   |nicholas                    |jerome                                               |NA-NA)                   |
|1.1158   |rawson                      |edward                                               |1615-1693)               |
|1.1159   |saintliger                  |w                                                    |1642-1642)               |
|1.1160   |watson                      |richard                                              |1612-1685)               |
|1.1166   |morris                      |william                                              |1680-1680)               |
|1.1167   |squire                      |john                                                 |1588-1653)               |
|6.810    |walsh                       |peter                                                |1618-1688)               |
|3.1811   |broë                         |de                                                   |NA-NA)                   |
|1.1174   |hubbard                     |william                                              |1622-1704)               |
|1.1179   |sage                        |john                                                 |1652-1711)               |
|1.1180   |warren                      |william                                              |NA-NA)                   |
|1.1185   |tirrell                     |henry                                                |NA-NA)                   |
|6.811    |vialart                     |charles                                              |1644-1644)               |
|1.1186   |holland                     |john                                                 |1603-1701)               |
|1.1189   |somerset                    |william seymour                                      |1588-1660)               |
|1.1192   |loftus                      |edward                                               |NA-NA)                   |
|1.1193   |stephens                    |edward                                               |1706-1706)               |
|1.1202   |littleton                   |edward                                               |1589-1645)               |
|1.1207   |chambers                    |humphrey                                             |1599-1662)               |
|1.1208   |gerard                      |john                                                 |1632-1654)               |
|1.1209   |danvers                     |john                                                 |NA-NA)                   |
|1.1210   |rous                        |francis                                              |1579-1659)               |
|1.1213   |dey                         |richard                                              |NA-NA)                   |
|1.1215   |richards                    |jacob                                                |1660-1701)               |
|6.816    |argyll                      |archibald campbell                                   |1598-1661)               |
|6.817    |NA (1611-1689)              |NA                                                   |NA                       |
|1.1231   |fenwicke                    |john                                                 |1670-1670)               |
|1.1235   |byfield                     |adoniram                                             |1660-1660)               |
|3.1816   |guillet de saint-georges    |georges                                              |1625-1705)               |
|1.1237   |roe                         |thomas                                               |1581-1644)               |
|1.1239   |ferne                       |h                                                    |1602-1662)               |
|1.1241   |ward                        |john                                                 |active 1642-1643)        |
|1.1243   |d'ewes                      |simonds                                              |1602-1650)               |
|6.819    |harris                      |b                                                    |NA-NA)                   |
|3.1817   |kennedy                     |david                                                |NA-NA)                   |
|3.1818   |mervault                    |pierre                                               |1608-1608)               |
|3.1819   |baron                       |william                                              |1636-1636)               |
|3.1820   |langhorne                   |daniel                                               |1681-1681)               |
|6.820    |dangerfield                 |thomas                                               |1650-1685)               |
|1.1251   |gatford                     |lionel                                               |1665-1665)               |
|3.1821   |hobbes                      |thomas                                               |1588-1679)               |
|3.1822   |davies                      |john                                                 |1625-1693)               |
|1.1256   |brinsley                    |john                                                 |1600-1665)               |
|1.1258   |taylor                      |john                                                 |1580-1653)               |
|3.1823   |somner                      |william                                              |1598-1669)               |
|3.1824   |bentley                     |richard                                              |1662-1742)               |
|1.1264   |porter                      |robert                                               |NA-NA)                   |
|1.1269   |du moulin                   |lewis                                                |1606-1680)               |
|6.823    |langhorne                   |richard                                              |1654-1679)               |
|1.1279   |stephens                    |william                                              |1718-1718)               |
|1.1280   |allix                       |pierre                                               |1641-1717)               |
|1.1282   |caryl                       |joseph                                               |1602-1673)               |
|1.1283   |hubberthorn                 |richard                                              |1628-1662)               |
|1.1291   |languet                     |hubert                                               |1518-1581)               |
|1.1292   |foster                      |henry                                                |NA-NA)                   |
|3.1828   |glanvill                    |joseph                                               |1636-1680)               |
|1.1293   |beverley                    |thomas                                               |NA-NA)                   |
|1.1296   |diggs                       |dudley                                               |1613-1643)               |
|1.1301   |woodward                    |ezekias                                              |1590-1675)               |
|6.824    |jeffreys                    |george                                               |1645-1689)               |
|1.1313   |mantell                     |walter                                               |NA-NA)                   |
|1.1317   |saltmarsh                   |john                                                 |1647-1647)               |
|1.1323   |tyler                       |alexander                                            |NA-NA)                   |
|3.1831   |fuller                      |thomas                                               |1608-1661)               |
|1.1325   |canne                       |john                                                 |1667-1667)               |
|1.1326   |kem                         |samuel                                               |1604-1670)               |
|1.1333   |hughes                      |george                                               |1603-1667)               |
|3.1832   |NA ( 340- 340)              |NA                                                   |NA                       |
|1.1340   |burrough                    |edward                                               |1634-1662)               |
|6.834    |hughes                      |john                                                 |1677-1720)               |
|1.1345   |monmouth                    |henry carey                                          |1596-1661)               |
|3.1833   |temple                      |william                                              |1628-1699)               |
|1.1347   |brereton                    |william                                              |1604-1661)               |
|3.1834   |burridge                    |ezekiel                                              |NA-NA)                   |
|1.1351   |springham                   |thomas                                               |NA-NA)                   |
|1.1353   |pury                        |thomas                                               |1590-1666)               |
|1.1357   |monro                       |robert                                               |NA-NA)                   |
|1.1360   |browne                      |john                                                 |NA-NA)                   |
|3.1837   |flecknoe                    |richard                                              |1678-1678)               |
|1.1367   |parsons                     |ralph                                                |NA-NA)                   |
|3.1839   |NA (1634-1706)              |NA                                                   |NA                       |
|3.1840   |ludlow                      |edmund                                               |1617-1692)               |
|5.380    |carlisle                    |james hay                                            |1612-1660)               |
|1.1376   |marshall                    |stephen                                              |1594-1655)               |
|1.1377   |parkinson                   |james                                                |1653-1722)               |
|1.1379   |vere                        |francis                                              |1560-1609)               |
|6.840    |fitzharris                  |edward                                               |1648-1681)               |
|1.1385   |cromwell                    |oliver                                               |1599-1658)               |
|1.1386   |mervyn                      |audley                                               |1675-1675)               |
|1.1388   |crompton                    |thomas                                               |NA-NA)                   |
|1.1395   |davis                       |john                                                 |NA-NA)                   |
|1.1397   |fannant                     |thomas                                               |NA-NA)                   |
|6.842    |ward                        |patience                                             |1629-1696)               |
|1.1404   |winstanley                  |william                                              |1628-1698)               |
|1.1405   |coppinger                   |nathaniel                                            |NA-NA)                   |
|6.844    |nottingham                  |heneage finch                                        |1621-1682)               |
|1.1410   |pryor                       |william                                              |NA-NA)                   |
|3.1845   |fiennes                     |nathaniel                                            |1608-1669)               |
|1.1414   |glynne                      |john                                                 |1603-1666)               |
|1.1417   |huntington                  |robert                                               |NA-NA)                   |
|1.1419   |melfort                     |john drummond                                        |1649-1714)               |
|1.1420   |ascham                      |antony                                               |1650-1650)               |
|1.1421   |smith                       |humphrey                                             |1663-1663)               |
|1.1423   |ellis                       |thomas                                               |NA-NA)                   |
|1.1426   |simon                       |richard                                              |1638-1712)               |
|1.1428   |ireland                     |thomas                                               |NA-NA)                   |
|1.1429   |denham                      |john                                                 |1615-1669)               |
|1.1438   |whiston                     |james                                                |1637-1707)               |
|1.1441   |willoughby of parham        |francis                                              |1613-1666)               |
|1.1442   |wansleben                   |johann michael                                       |1635-1679)               |
|3.1849   |wharton                     |george                                               |1617-1681)               |
|6.850    |gualdo priorato             |galeazzo                                             |1606-1678)               |
|1.1453   |middleton                   |thomas                                               |1586-1666)               |
|1.1454   |twysden                     |roger                                                |1597-1672)               |
|1.1455   |pike                        |roger                                                |NA-NA)                   |
|6.854    |spragge                     |edward                                               |1673-1673)               |
|3.1850   |seller                      |john                                                 |1658-1698)               |
|1.1458   |whetcombe                   |tristram                                             |NA-NA)                   |
|1.1465   |rider                       |henry                                                |1696-1696)               |
|1.1468   |freke                       |william                                              |1662-1744)               |
|3.1851   |hooke                       |robert                                               |1635-1703)               |
|1.1472   |philipot                    |thomas                                               |1682-1682)               |
|1.1473   |mather                      |richard                                              |1596-1669)               |
|1.1477   |hooker                      |thomas                                               |1586-1647)               |
|1.1479   |meldrum                     |john                                                 |1645-1645)               |
|3.1853   |NA ( 373- 463)              |NA                                                   |NA                       |
|208.13   |courtilz de sandras         |gatien                                               |1644-1712)               |
|3.1854   |ricraft                     |josiah                                               |1645-1679)               |
|1.1489   |middleton                   |john                                                 |1619-1674)               |
|1.1490   |bispham                     |thomas                                               |NA-NA)                   |
|1.1491   |walker                      |clement                                              |1595-1651)               |
|5.388    |touchstone                  |timothy                                              |NA-NA)                   |
|1.1497   |dorset                      |edward sackville                                     |1591-1652)               |
|1.1502   |shones                      |shon ap                                              |NA-NA)                   |
|1.1505   |griffin                     |william                                              |NA-NA)                   |
|3.1856   |yonge                       |william                                              |1663-1663)               |
|1.1512   |bladen                      |w                                                    |NA-NA)                   |
|5.389    |stafford                    |richard                                              |1663-1703)               |
|1.1524   |widdrington                 |william                                              |1610-1651)               |
|1.1529   |pembroke                    |philip herbert                                       |1584-1650)               |
|1.1530   |antrim                      |randal macdonnell                                    |1609-1683)               |
|6.862    |goodwin                     |robert                                               |NA-NA)                   |
|1.1536   |ivie                        |thomas                                               |NA-NA)                   |
|6.865    |darrell                     |william                                              |1651-1721)               |
|1.1539   |kittermaster                |thomas                                               |NA-NA)                   |
|1.1542   |salvin                      |john                                                 |1622-1672)               |
|1.1543   |d'auvergne                  |edward                                               |1660-1737)               |
|1.1545   |anglesey                    |arthur annesley                                      |1614-1686)               |
|1.1546   |andrews                     |eusebius                                             |1650-1650)               |
|1.1549   |arderne                     |james                                                |1636-1691)               |
|3.1858   |may                         |thomas                                               |1595-1650)               |
|3.1859   |borlase                     |edmund                                               |1682-1682)               |
|1.1555   |povey                       |thomas                                               |1633-1685)               |
|1.1556   |gillespie                   |george                                               |1613-1648)               |
|4.474    |marsh                       |henry                                                |active 1663-1664)        |
|1.1564   |douglas                     |eleanor                                              |1652-1652)               |
|1.1570   |humfrey                     |john                                                 |1621-1719)               |
|3.1862   |dumay                       |louis                                                |1681-1681)               |
|5.397    |lilly                       |william                                              |1602-1681)               |
|6.873    |turnor                      |edward                                               |1617-1676)               |
|1.1583   |jurieu                      |pierre                                               |1637-1713)               |
|1.1590   |aubignac                    |françois-hédelin                                     |1604-1676)               |
|1.1595   |leeds                       |peregrine osborne                                    |1658-1729)               |
|1.1597   |henrietta maria             |consort of charles i king of england                 |1609-1669)               |
|5.400    |flower                      |edward                                               |NA-NA)                   |
|1.1603   |francklin                   |thomas                                               |1721-1784)               |
|1.1605   |philips                     |george                                               |1599-1696)               |
|1.1606   |maurice                     |henry                                                |1648-1691)               |
|1.1611   |pursell                     |francis                                              |NA-NA)                   |
|4.476    |hall                        |john                                                 |1627-1656)               |
|1.1612   |cheynell                    |francis                                              |1608-1665)               |
|1.1613   |alsop                       |vincent                                              |1630-1703)               |
|1.1619   |andrews                     |william                                              |1635-1713)               |
|1.1621   |phillips                    |john                                                 |1631-1706)               |
|1.1629   |harris                      |edward                                               |NA-NA)                   |
|1.1631   |bampfield                   |joseph                                               |1639-1685)               |
|1.1633   |muschamp                    |agmondisham                                          |NA-NA)                   |
|1.1640   |morton                      |nathaniel                                            |1613-1685)               |
|3.1873   |monier                      |pierre                                               |1639-1703)               |
|1.1644   |ingoldsby                   |william                                              |1645-1645)               |
|6.884    |faria                       |francisco de                                         |1653-1653)               |
|1.1661   |hare                        |john                                                 |NA-NA)                   |
|1.1662   |smith                       |william                                              |1673-1673)               |
|1.1667   |bourchier                   |john                                                 |1660-1660)               |
|6.886    |ryley                       |william                                              |1667-1667)               |
|1.1670   |ball                        |william                                              |NA-NA)                   |
|4.477    |curtius rufus               |quintus                                              |NA-NA)                   |
|3.1875   |ryves                       |bruno                                                |1596-1677)               |
|1.1678   |bohun                       |edmund                                               |1645-1699)               |
|1.1683   |hunt                        |thomas                                               |1627-1688)               |
|1.1685   |st john                     |oliver                                               |1598-1673)               |
|1.1687   |wharton                     |philip                                               |1613-1696)               |
|3.1877   |sagredo                     |giovanni                                             |1696-1696)               |
|6.894    |hearne                      |robert                                               |NA-NA)                   |
|6.895    |bampfield                   |francis                                              |1616-1683)               |
|1.1702   |vicars                      |john                                                 |1580-1652)               |
|1.1703   |courtney                    |thomas                                               |NA-NA)                   |
|3.1879   |younge                      |richard                                              |NA-NA)                   |
|3.1880   |derham                      |robert                                               |NA-NA)                   |
|1.1710   |thomas                      |william                                              |NA-NA)                   |
|1.1711   |alsted                      |johann heinrich                                      |1588-1638)               |
|1.1712   |goodwin                     |arthur                                               |1594-1643)               |
|5.413    |cole                        |john                                                 |NA-NA)                   |
|4.478    |otho                        |johann heinrich                                      |1651-1719)               |
|5.414    |marlborough                 |john churchill                                       |1650-1722)               |
|3.1881   |noyes                       |nicholas                                             |1647-1717)               |
|1.1717   |sandys                      |edwin                                                |1612-1642)               |
|1.1719   |stapylton                   |robert                                               |1669-1669)               |
|3.1882   |parsons                     |robert                                               |1546-1610)               |
|3.1883   |walker                      |henry                                                |1643-1643)               |
|3.1884   |bernier                     |françois                                              |1620-1688)               |
|6.899    |commynes                    |philippe de                                          |1447-1511)               |
|1.1724   |langford                    |john                                                 |NA-NA)                   |
|1.1727   |böhme                        |jakob                                                |1575-1624)               |
|1.1729   |andrews                     |thomas                                               |NA-NA)                   |
|6.902    |ogilby                      |john                                                 |1600-1676)               |
|1.1733   |burgine                     |darby                                                |NA-NA)                   |
|1.1735   |NA (1653-1653)              |NA                                                   |NA                       |
|1.1736   |bowen                       |william                                              |NA-NA)                   |
|1.1739   |goring                      |george                                               |1608-1657)               |
|1.1740   |massy                       |isaac                                                |1586-1586)               |
|1.1753   |mercer                      |william                                              |1605-1676)               |
|1.1754   |kirby                       |richard                                              |1649-1649)               |
|3.1888   |gumble                      |thomas                                               |1676-1676)               |
|1.1757   |richelieu                   |armand jean du plessis                               |1585-1642)               |
|1.1758   |ashe                        |john                                                 |NA-NA)                   |
|4.480    |barksdale                   |clement                                              |1609-1687)               |
|3.1890   |pollexfen                   |john                                                 |1638-1638)               |
|1.1765   |naylier                     |john                                                 |NA-NA)                   |
|1.1773   |arundel                     |thomas howard                                        |1585-1646)               |
|4.481    |cowley                      |abraham                                              |1618-1667)               |
|3.1892   |perrinchief                 |richard                                              |1623-1673)               |
|1.1781   |bath                        |henry bourchier                                      |1588-1654)               |
|3.1894   |mackenzie                   |sir george                                           |1636-1691)               |
|6.909    |stanley                     |thomas                                               |1625-1678)               |
|6.910    |gell                        |robert                                               |1595-1665)               |
|1.1784   |basill                      |william                                              |NA-NA)                   |
|3.1895   |NA (1675-1754)              |NA                                                   |NA                       |
|1.1788   |fagel                       |gaspar                                               |1634-1688)               |
|4.482    |torshell                    |samuel                                               |1604-1650)               |
|3.1897   |sheridan                    |thomas                                               |1688-1688)               |
|1.1795   |smith                       |philip                                               |1664-1664)               |
|1.1797   |grove                       |robert                                               |1634-1696)               |
|3.1898   |howard                      |edward                                               |1669-1669)               |
|1.1803   |wright                      |robert                                               |1560-1643)               |
|1.1804   |middleton                   |thomas                                               |NA-NA)                   |
|1.1806   |paterson                    |john                                                 |1604-1679)               |
|4.483    |samwayes                    |richard                                              |1615-1669)               |
|1.1814   |byfield                     |nathanael                                            |1653-1733)               |
|1.1817   |stewart                     |james                                                |1635-1715)               |
|1.1819   |hurtado de mendoza          |antonio                                              |1586-1644)               |
|1.1820   |story                       |george warter                                        |1721-1721)               |
|1.1827   |hooke                       |william                                              |1601-1678)               |
|1.1833   |paine                       |george                                               |NA-NA)                   |
|1.1834   |norton                      |richard                                              |1615-1691)               |
|1.1837   |hamblet                     |john                                                 |NA-NA)                   |
|1.1840   |rogers                      |john                                                 |1627-1665)               |
|1.1841   |wentworth                   |peter                                                |1592-1675)               |
|6.913    |cellier                     |elizabeth                                            |1680-1680)               |
|6.914    |marvell                     |andrew                                               |1621-1678)               |
|1.1842   |case                        |thomas                                               |1598-1682)               |
|1.1845   |ollyffe                     |john                                                 |1647-1717)               |
|3.1901   |NA (1694-1694)              |NA                                                   |NA                       |
|1.1847   |webster                     |john                                                 |1610-1682)               |
|1.1848   |anderson                    |george                                               |NA-NA)                   |
|1.1849   |godefroy                    |jacques                                              |1587-1652)               |
|1.1850   |NA (1566-1625)              |NA                                                   |NA                       |
|1.1853   |grascome                    |samuel                                               |1641-1708)               |
|1.1854   |strong                      |leonard                                              |NA-NA)                   |
|1.1855   |strutton                    |richard                                              |NA-NA)                   |
|1.1856   |darcy                       |patrick                                              |1598-1668)               |
|1.1860   |wagstaffe                   |thomas                                               |1645-1712)               |
|315.4    |gailhard                    |j                                                    |NA-NA)                   |
|3.1902   |NA ( 122- 122)              |NA                                                   |NA                       |
|1.1863   |salwey                      |arthur                                               |1606-1606)               |
|1.1866   |belwood                     |thomas                                               |NA-NA)                   |
|6.916    |savile                      |henry                                                |1642-1687)               |
|1.1876   |bennet                      |joseph                                               |NA-NA)                   |
|1.1884   |bedford                     |william russell                                      |1613-1700)               |
|6.919    |mayne                       |jasper                                               |1604-1672)               |
|3.1904   |palmer                      |thomas                                               |1620-1620)               |
|1.1891   |wallis                      |ralph                                                |1669-1669)               |
|3.1906   |beaumont                    |john                                                 |NA-NA)                   |
|1.1896   |NA (1625-1680)              |NA                                                   |NA                       |
|6.920    |travers                     |jacob                                                |NA-NA)                   |
|208.15   |chevalier                   |pierre                                               |NA-NA)                   |
|1.1916   |strickland                  |robert                                               |1600-1670)               |
|3.1908   |NA (1604-1657)              |NA                                                   |NA                       |
|1.1927   |mcward                      |robert                                               |1633-1687)               |
|6.922    |rycaut                      |paul                                                 |1628-1700)               |
|1.1936   |whitelocke                  |james                                                |1570-1632)               |
|1.1944   |cox                         |owen                                                 |NA-NA)                   |
|1.1947   |roch                        |patrick                                              |NA-NA)                   |
|1.1950   |tatham                      |john                                                 |1632-1664)               |
|1.1951   |beckham                     |edward                                               |1638-1714)               |
|1.1953   |marsh                       |john                                                 |1742-1821)               |
|1.1954   |walker                      |george                                               |1645-1690)               |
|1.1955   |NA (1609-1669)              |NA                                                   |NA                       |
|6.927    |sprigg                      |joshua                                               |1618-1684)               |
|10.157   |hamilton                    |william                                              |1616-1651)               |
|1.1957   |newcomen                    |matthew                                              |1610-1669)               |
|6.930    |essex                       |robert devereux                                      |1566-1601)               |
|1.1961   |payne                       |henry neville                                        |1672-1710)               |
|6.932    |stevenson                   |matthew                                              |1654-1685)               |
|1.1964   |chaloner                    |thomas                                               |1595-1661)               |
|1.1965   |littleton                   |edward                                               |1626-1626)               |
|1.1968   |philoroy                    |philopater                                           |NA-NA)                   |
|1.1969   |ashby                       |john                                                 |1693-1693)               |
|208.16   |carter                      |matthew                                              |1660-1660)               |
|1.1987   |manley                      |thomas                                               |1628-1690)               |
|6.934    |fitz-gerrald                |john                                                 |NA-NA)                   |
|1.1993   |jenkyn                      |william                                              |1613-1685)               |
|258.16   |culpepper                   |c                                                    |NA-NA)                   |
|3.1911   |cary                        |john                                                 |1720-1720)               |
|1.1997   |fleming                     |robert                                               |1630-1694)               |
|1.2000   |fisher                      |edward                                               |1627-1655)               |
|6.935    |hexham                      |henry                                                |1585-1650)               |
|3.1912   |camfield                    |benjamin                                             |1638-1693)               |
|6.937    |macnamara                   |john                                                 |NA-NA)                   |
|3.1913   |french                      |nicholas                                             |1604-1678)               |
|6.938    |paruta                      |paolo                                                |1540-1598)               |
|1.2009   |clare                       |ralph                                                |1587-1670)               |
|5.444    |calvert                     |philip                                               |1626-1682)               |
|3.1916   |billingsley                 |nicholas                                             |1633-1709)               |
|6.939    |pittis                      |william                                              |1674-1724)               |
|1.2013   |dodwell                     |henry                                                |1641-1711)               |
|1.2014   |king                        |william                                              |1650-1729)               |
|6.940    |friend                      |john                                                 |1696-1696)               |
|3.1917   |blouin de la piquetierre    |michel                                               |NA-NA)                   |
|1.2019   |whittle                     |seth                                                 |NA-NA)                   |
|1.2020   |newrobe                     |richard                                              |NA-NA)                   |
|3.1918   |pettus                      |john                                                 |1613-1690)               |
|1.2023   |brooke                      |robert greville                                      |1607-1643)               |
|1.2026   |worden                      |thomas                                               |NA-NA)                   |
|1.2027   |wirley                      |edward                                               |1618-1673)               |
|1.2029   |gorton                      |samuel                                               |1593-1677)               |
|1.2034   |warwick                     |robert rich                                          |1587-1658)               |
|1.2039   |geree                       |john                                                 |1601-1649)               |
|1.2043   |wittewrong                  |john                                                 |NA-NA)                   |
|6.946    |mézeray                      |françois eudes de                                     |1610-1683)               |
|1.2053   |douglas                     |robert                                               |1594-1674)               |
|6.948    |mariana                     |juan de                                              |1536-1624)               |
|1.2067   |bethel                      |slingsby                                             |1617-1697)               |
|10.162   |NA (1650-1702)              |NA                                                   |NA                       |
|1.2080   |penington                   |isaac                                                |1616-1679)               |
|1.2081   |collier                     |jeremy                                               |1650-1726)               |
|1.2083   |robinson                    |william                                              |NA-NA)                   |
|1.2086   |sammel                      |l                                                    |NA-NA)                   |
|318      |briscoe                     |john                                                 |1695-1695)               |
|1.2111   |sampford                    |h                                                    |NA-NA)                   |
|1.2112   |moore of drogheda           |charles                                              |1603-1643)               |
|1.2115   |tindall                     |humphrey                                             |1549-1614)               |
|1.2119   |miege                       |guy                                                  |1644-1718)               |
|1.2129   |coote                       |chidly                                               |NA-NA)                   |
|1.2139   |carswell                    |francis                                              |1709-1709)               |
|1.2143   |balfour                     |william                                              |1660-1660)               |
|1.2144   |macconnor                   |dermond                                              |NA-NA)                   |
|1.2146   |richard                     |thomas                                               |NA-NA)                   |
|1.2153   |brimpahir                   |george                                               |NA-NA)                   |
|6.958    |sammes                      |aylett                                               |1636-1679)               |
|1.2154   |ainsworth                   |henry                                                |1571-1622)               |
|1.2163   |carter                      |william                                              |1605-1658)               |
|1.2166   |burlacey                    |miles                                                |NA-NA)                   |
|10.163   |wild                        |robert                                               |1609-1679)               |
|6.960    |jones                       |thomas                                               |1622-1682)               |
|1.2176   |spencer                     |john                                                 |1630-1693)               |
|4.486    |matthew                     |edward                                               |NA-NA)                   |
|1.2179   |parker                      |henry                                                |1604-1652)               |
|1.2180   |pareus                      |johann philipp                                       |1576-1648)               |
|1.2184   |white                       |john                                                 |1590-1645)               |
|1.2187   |radnor                      |john robartes                                        |1606-1685)               |
|4.487    |hakewill                    |william                                              |1574-1655)               |
|1.2195   |hoyle                       |joshua                                               |1654-1654)               |
|6.964    |atkyns                      |robert                                               |1621-1709)               |
|1.2201   |harcourt                    |daniel                                               |NA-NA)                   |
|1.2208   |hardy                       |nathaniel                                            |1618-1670)               |
|208.18   |cave                        |william                                              |1637-1713)               |
|1.2220   |clarke                      |john                                                 |1609-1676)               |
|1.2232   |vaughan                     |hugh                                                 |NA-NA)                   |
|1.2239   |corbet                      |john                                                 |1620-1680)               |
|3.1929   |heath                       |james                                                |1629-1664)               |
|3.1931   |prade                       |jean le royer                                        |NA-NA)                   |
|1.2247   |dammee                      |agamemnon shaglock van                               |NA-NA)                   |
|1.2250   |holborne                    |robert                                               |1647-1647)               |
|1.2253   |musgrave                    |john                                                 |1654-1654)               |
|1.2256   |elys                        |edmund                                               |1707-1707)               |
|1.2257   |booker                      |richard                                              |NA-NA)                   |
|3.1934   |fullwood                    |francis                                              |1693-1693)               |
|1.2265   |jesland                     |thomas                                               |NA-NA)                   |
|1.2266   |meeke                       |william                                              |NA-NA)                   |
|1.2267   |shower                      |bartholomew                                          |1658-1701)               |
|1.2269   |cork                        |richard boyle                                        |1566-1643)               |
|6.970    |bentivoglio                 |guido                                                |1577-1644)               |
|1.2272   |loveday                     |samuel                                               |1619-1677)               |
|1.2273   |sergeant                    |john                                                 |1622-1707)               |
|6.972    |boys                        |william                                              |1735-1803)               |
|1.2274   |mocket                      |thomas                                               |1602-1670)               |
|1.2277   |braddon                     |laurence                                             |1724-1724)               |
|1.2279   |NA (1584-1647)              |NA                                                   |NA                       |
|1.2281   |buchanan                    |david                                                |1595-1652)               |
|1.2282   |smith                       |john                                                 |NA-NA)                   |
|4.490    |NA ( 320- 320)              |NA                                                   |NA                       |
|1.2284   |benningfield                |w                                                    |NA-NA)                   |
|3.1936   |stubbe                      |henry                                                |1632-1676)               |
|1.2287   |johnson                     |richard                                              |1573-1659)               |
|3.1938   |cooke                       |edward                                               |NA-NA)                   |
|1.2292   |gurney                      |richard                                              |1577-1647)               |
|6.974    |thorndike                   |herbert                                              |1598-1672)               |
|4.491    |le vassor                   |michel                                               |1646-1718)               |
|6.975    |enderbie                    |percy                                                |1670-1670)               |
|6.976    |calprenède                   |gaultier de coste                                    |1663-1663)               |
|3.1939   |mascardi                    |agostino                                             |1591-1640)               |
|1.2302   |pointz                      |john                                                 |NA-NA)                   |
|3.1940   |thompson                    |nathaniel                                            |1687-1687)               |
|1.2306   |merret                      |christopher                                          |1614-1695)               |
|1.2307   |henson                      |john                                                 |1625-1711)               |
|1.2308   |bernard                     |richard                                              |1568-1641)               |
|5.456    |wilks                       |judith                                               |NA-NA)                   |
|1.2311   |riville                     |p                                                    |NA-NA)                   |
|1.2314   |trelawny                    |jonathan                                             |1623-1681)               |
|1.2320   |featley                     |daniel                                               |1582-1645)               |
|6.980    |buck                        |george                                               |1623-1623)               |
|1.2327   |hill                        |joseph                                               |1625-1707)               |
|1.2336   |murford                     |peter                                                |NA-NA)                   |
|6.982    |stillingfleet               |edward                                               |1635-1699)               |
|1.2353   |strong                      |james                                                |1619-1694)               |
|1.2358   |carleton                    |george                                               |1559-1628)               |
|6.984    |morgan                      |matthew                                              |1652-1703)               |
|6.985    |melville                    |james                                                |1535-1617)               |
|1.2367   |weld                        |thomas                                               |1590-1662)               |
|3.1949   |davies                      |john                                                 |1569-1626)               |
|1.2373   |kightley                    |edward                                               |NA-NA)                   |
|1.2376   |fell                        |philip                                               |1633-1682)               |
|5.459    |wolseley                    |william                                              |1640-1697)               |
|1.2384   |trivery                     |jeremiah                                             |NA-NA)                   |
|1.2399   |womock                      |laurence                                             |1612-1685)               |
|1.2401   |smart                       |peter                                                |1569-1652)               |
|1.2403   |mills                       |john                                                 |NA-NA)                   |
|258.19   |chamberlen                  |peter                                                |1601-1683)               |
|6.988    |capriata                    |pier giovanni                                        |NA-NA)                   |
|1.2406   |gower                       |john                                                 |NA-NA)                   |
|1.2413   |bingley                     |william                                              |1651-1715)               |
|3.1951   |harmar                      |john                                                 |1594-1670)               |
|3.1952   |bird                        |benjamin                                             |NA-NA)                   |
|1.2422   |randolph                    |john                                                 |1727-1784)               |
|4.494    |camus                       |jean-pierre                                          |1584-1652)               |
|3.1953   |dring                       |thomas                                               |NA-NA)                   |
|10.170   |carew                       |abel                                                 |NA-NA)                   |
|6.990    |camden                      |william                                              |1551-1623)               |
|1.2433   |palmer                      |herbert                                              |1601-1647)               |
|3.1954   |du cros                     |simon                                                |NA-NA)                   |
|6.992    |biondi                      |giovanni francesco                                   |1572-1644)               |
|1.2458   |percival                    |thomas                                               |1696-1697)               |
|1.2460   |smith                       |samuel                                               |NA-NA)                   |
|1.2469   |kilvert                     |richard                                              |1649-1649)               |
|1.2470   |tompson                     |benjamin                                             |1642-1714)               |
|1.2473   |carew                       |alexander                                            |1609-1644)               |
|3.1956   |cook                        |john                                                 |1660-1660)               |
|1.2474   |batten                      |william                                              |1667-1667)               |
|4.495    |busbecq                     |ogier ghislain de                                    |1522-1592)               |
|1.2483   |lawton                      |charlwood                                            |1660-1721)               |
|5.467    |mean-well                   |ralph                                                |NA-NA)                   |
|1.2489   |maguire                     |francis                                              |NA-NA)                   |
|1.2491   |benson                      |gervase                                              |1679-1679)               |
|3.1957   |venning                     |ralph                                                |1621-1674)               |
|1.2497   |eustace                     |maurice                                              |1590-1661)               |
|1.2498   |northampton                 |spencer compton                                      |1601-1643)               |
|208.20   |colbatch                    |john                                                 |1664-1748)               |
|3.1958   |habington                   |william                                              |1605-1654)               |
|6.1005   |do-well                     |theophilus                                           |NA-NA)                   |
|3.1959   |cooper                      |andrew                                               |1660-1660)               |
|6.1007   |daniel                      |samuel                                               |1562-1619)               |
|1.2511   |cademan                     |thomas                                               |1590-1651)               |
|3.1960   |espagne                     |jean d'                                              |1591-1659)               |
|1.2519   |wortley                     |francis                                              |1591-1652)               |
|5.470    |tyrconnel                   |richard talbot                                       |1630-1691)               |
|1.2529   |viccars                     |john                                                 |1604-1660)               |
|1.2530   |brightman                   |thomas                                               |1562-1607)               |
|1.2535   |cotton                      |john                                                 |1584-1652)               |
|6.1010   |petty                       |william                                              |1623-1687)               |
|6.1011   |greene                      |richard                                              |NA-NA)                   |
|208.22   |NA (1553-1615)              |NA                                                   |NA                       |
|1.2542   |ogle                        |thomas                                               |1671-1671)               |
|1.2545   |wardlace                    |james                                                |NA-NA)                   |
|1.2548   |pickering                   |robert                                               |NA-NA)                   |
|1.2549   |philips                     |william                                              |NA-NA)                   |
|1.2550   |collop                      |john                                                 |NA-NA)                   |
|6.1015   |leycester                   |peter                                                |1614-1678)               |
|4.500    |harington                   |john                                                 |1560-1612)               |
|1.2563   |beecher                     |henry                                                |NA-NA)                   |
|4.501    |alexander                   |william                                              |1685-1704)               |
|1.2569   |mullenaux                   |samuel                                               |NA-NA)                   |
|1.2570   |butcher                     |richard                                              |1583-1665)               |
|5.472    |crysly                      |james                                                |NA-NA)                   |
|1.2577   |haward                      |lazarus                                              |NA-NA)                   |
|3.1968   |keach                       |benjamin                                             |1640-1704)               |
|1.2588   |aston                       |thomas                                               |1600-1645)               |
|1.2594   |watkins                     |david                                                |NA-NA)                   |
|5.475    |wheeler                     |francis                                              |1656-1694)               |
|1.2608   |jubbes                      |john                                                 |NA-NA)                   |
|1.2610   |abudacnus                   |josephus                                             |NA-NA)                   |
|1.2630   |harsnet                     |samuel                                               |NA-NA)                   |
|1.2640   |bourne                      |nehemiah                                             |1611-1691)               |
|3.1972   |worthington                 |john                                                 |1618-1671)               |
|1.2645   |clark                       |joseph wilkinson                                     |NA-NA)                   |
|1.2648   |walwyn                      |william                                              |1600-1681)               |
|1.2655   |steuart                     |adam                                                 |NA-NA)                   |
|208.23   |coste                       |pierre                                               |1668-1747)               |
|6.1024   |head                        |richard                                              |1637-1686)               |
|3.1973   |godwyn                      |morgan                                               |1685-1685)               |
|6.1026   |zeale                       |john                                                 |NA-NA)                   |
|1.2665   |dymock                      |thomas w                                             |NA-NA)                   |
|3.1975   |giraffi                     |alessandro                                           |NA-NA)                   |
|3.1977   |mall                        |thomas                                               |1630-1630)               |
|1.2667   |redingstone                 |john                                                 |NA-NA)                   |
|1.2672   |edwards                     |thomas                                               |1599-1647)               |
|1.2676   |d'avenant                   |william                                              |1606-1668)               |
|3.1979   |lloyd                       |david                                                |1635-1692)               |
|1.2678   |philodemius                 |eleutherius                                          |NA-NA)                   |
|1.2679   |gething                     |richard                                              |1585-1652)               |
|1.2684   |rathband                    |william                                              |1695-1695)               |
|1.2690   |joceline                    |nathaniel                                            |NA-NA)                   |
|5.481    |shadwell                    |thomas                                               |1642-1692)               |
|1.2696   |chorlton                    |john                                                 |1666-1705)               |
|6.1030   |girard                      |guillaume                                            |1663-1663)               |
|1.2709   |peirce                      |edmund                                               |1667-1667)               |
|1.2711   |johnson                     |william                                              |NA-NA)                   |
|3.1982   |hammond                     |charles                                              |NA-NA)                   |
|1.2718   |dyott                       |richard                                              |1659-1659)               |
|1.2719   |hotham                      |john                                                 |NA-NA)                   |
|6.1033   |semedo                      |alvaro                                               |1585-1658)               |
|6.1034   |digges                      |dudley                                               |1583-1639)               |
|1.2731   |greaves                     |edward                                               |1608-1680)               |
|10.176   |bolron                      |robert                                               |1674-1680)               |
|1.2736   |sousa de macedo             |antónio de                                           |1606-1682)               |
|1.2745   |coppin                      |richard                                              |1646-1659)               |
|1.2746   |orrery                      |roger boyle                                          |1621-1679)               |
|1.2754   |ronsgore                    |john                                                 |NA-NA)                   |
|1.2755   |crouch                      |humphrey                                             |1635-1671)               |
|1.2760   |stephens                    |stephen                                              |NA-NA)                   |
|1.2772   |hippisley                   |edmund                                               |NA-NA)                   |
|1.2774   |booth                       |william                                              |NA-NA)                   |
|1.2779   |golbee                      |john                                                 |NA-NA)                   |
|1.2803   |ward                        |richard                                              |1602-1684)               |
|1.2805   |vila flor                   |sancho manuel de vilhena                             |1607-1677)               |
|1.2806   |montrose                    |james graham                                         |1612-1650)               |
|3.1984   |vincent                     |thomas                                               |1634-1678)               |
|1.2809   |philips                     |robert                                               |1650-1650)               |
|3.1986   |NA (1680-1702)              |NA                                                   |NA                       |
|1.2820   |alured                      |thomas                                               |NA-NA)                   |
|6.1040   |denton                      |william                                              |1605-1691)               |
|3.1988   |ainsworth                   |william                                              |1671-1671)               |
|6.1041   |NA (1660-1660)              |NA                                                   |NA                       |
|3.1990   |dellon                      |gabriel                                              |1649-1649)               |
|1.2841   |hales                       |john                                                 |1584-1656)               |
|1.2843   |martin                      |richard                                              |1570-1618)               |
|1.2845   |hunt                        |james                                                |NA-NA)                   |
|1.2848   |pigot                       |john                                                 |NA-NA)                   |
|1.2849   |heath                       |robert                                               |1575-1649)               |
|1.2851   |chudleigh                   |george                                               |1578-1657)               |
|1.2854   |widmerpole                  |joseph                                               |NA-NA)                   |
|1.2857   |parker                      |john                                                 |NA-NA)                   |
|1.2860   |harwood                     |edward                                               |1586-1632)               |
|1.2863   |o'connor                    |bonaventura                                          |NA-NA)                   |
|3.1991   |izacke                      |richard                                              |1624-1698)               |
|6.1042   |preston                     |richard graham                                       |1648-1695)               |
|1.2874   |lindsey                     |montague bertie                                      |1608-1666)               |
|6.1043   |austin                      |william                                              |1662-1662)               |
|3.1993   |kingston                    |richard                                              |1635-1635)               |
|1.2876   |wood                        |thomas                                               |1661-1722)               |
|3.1995   |dauncey                     |john                                                 |1663-1663)               |
|1.2880   |falkland                    |lucius cary                                          |1610-1643)               |
|1.2893   |wettenhall                  |edward                                               |1636-1713)               |
|6.1045   |scott                       |thomas                                               |1580-1626)               |
|1.2899   |peacham                     |henry                                                |1576-1643)               |
|1.2901   |brocket                     |william                                              |NA-NA)                   |
|3.1999   |gostelo                     |walter                                               |NA-NA)                   |
|1.2906   |hawkins                     |thomas                                               |NA-NA)                   |
|3.2000   |aubery du maurier           |louis                                                |1609-1687)               |
|1.2909   |constantine                 |william                                              |1612-1670)               |
|1.2912   |capel of hadham             |arthur                                               |1610-1649)               |
|1.2913   |dering                      |edward                                               |1598-1644)               |
|1.2914   |bullaker                    |thomas                                               |1642-1642)               |
|1.2915   |larroque                    |matthieu de                                          |1619-1684)               |
|1.2918   |waller                      |edmund                                               |1606-1687)               |
|6.1049   |lisola                      |françois paul                                        |1613-1674)               |
|1.2921   |forbes                      |alexander                                            |1672-1672)               |
|3.2002   |NA (1624-1696)              |NA                                                   |NA                       |
|1.2928   |comber                      |thomas                                               |1645-1699)               |
|1.2933   |cooke                       |edward                                               |1684-1684)               |
|1.2934   |barkstead                   |john                                                 |1662-1662)               |
|1.2935   |allestree                   |richard                                              |1619-1681)               |
|1.2943   |crawford                    |lawrence                                             |1611-1645)               |
|1.2946   |downing                     |calybute                                             |1606-1644)               |
|258.23   |atkyns                      |richard                                              |1615-1677)               |
|1.2952   |bayard                      |nicholas                                             |1644-1707)               |
|6.1058   |preston                     |thomas                                               |1563-1640)               |
|4.515    |osborne                     |francis                                              |1593-1659)               |
|1.2974   |herbert                     |thomas                                               |1597-1642)               |
|1.2981   |farmer                      |jacob                                                |NA-NA)                   |
|1.2987   |udall                       |ephraim                                              |1647-1647)               |
|3.2005   |NA (1155-1237)              |NA                                                   |NA                       |
|1.3006   |saywell                     |william                                              |1643-1701)               |
|4.518    |brooks                      |francis                                              |NA-NA)                   |
|1.3008   |rogers                      |nathaniel                                            |1598-1655)               |
|1.3015   |chaloner                    |richard                                              |1643-1643)               |
|1.3016   |chapman                     |andrew                                               |1642-1642)               |
|1.3017   |potter                      |william                                              |NA-NA)                   |
|1.3028   |williams                    |edward                                               |1650-1650)               |
|1.3032   |williams                    |gryffith                                             |1589-1672)               |
|6.1070   |arwaker                     |edmund                                               |1730-1730)               |
|6.1073   |groot                       |pieter de                                            |1615-1678)               |
|1.3045   |tutchin                     |john                                                 |1661-1707)               |
|1.3046   |hemings                     |william                                              |1602-1602)               |
|1.3050   |leven                       |alexander leslie                                     |1580-1661)               |
|1.3052   |traquair                    |john stewart                                         |1659-1659)               |
|1.3054   |laud                        |william                                              |1573-1645)               |
|1.3062   |felton                      |edmond                                               |NA-NA)                   |
|1.3069   |cholmley                    |hugh                                                 |1600-1657)               |
|1.3072   |morley                      |thomas                                               |NA-NA)                   |
|4.519    |meriton                     |george                                               |1634-1711)               |
|1.3080   |wake                        |william                                              |1657-1737)               |
|6.1077   |violet                      |thomas                                               |1634-1662)               |
|1.3084   |scroggs                     |william                                              |1623-1683)               |
|1.3086   |sictor                      |jan                                                  |1593-1652)               |
|1.3088   |slater                      |samuel                                               |1704-1704)               |
|1.3091   |beck                        |margaret                                             |NA-NA)                   |
|10.187   |taylor                      |j                                                    |NA-NA)                   |
|3.2012   |castlehaven                 |james touchet                                        |1617-1684)               |
|6.1080   |trussel                     |john                                                 |1620-1642)               |
|6.1081   |tyrrell                     |james                                                |1642-1718)               |
|1.3100   |brend                       |william                                              |1676-1676)               |
|1.3103   |bugg                        |francis                                              |1640-1724)               |
|1.3106   |preston                     |john                                                 |NA-NA)                   |
|1.3108   |carpenter                   |william                                              |1770-1770)               |
|1.3109   |hartlib                     |samuel                                               |1662-1662)               |
|1.3117   |grey                        |thomas                                               |NA-NA)                   |
|1.3119   |merrifield                  |john                                                 |NA-NA)                   |
|3.2018   |hickman                     |henry                                                |1692-1692)               |
|1.3129   |leighton                    |elisha                                               |1685-1685)               |
|3.2020   |gand                        |louis de                                             |NA-NA)                   |
|1.3131   |chambrun                    |jacques pineton de                                   |1637-1687)               |
|5.501    |levingston                  |thomas                                               |NA-NA)                   |
|10.196   |hunt                        |raphael                                              |NA-NA)                   |
|15.31    |crouch                      |john                                                 |1660-1681)               |
|6.1090   |wantner                     |abel                                                 |NA-NA)                   |
|15.32    |crofts                      |john                                                 |1613-1670)               |
|1.3135   |cawdrey                     |zachary                                              |1616-1684)               |
|1.3137   |speed                       |thomas                                               |1623-1623)               |
|3.2025   |arnway                      |john                                                 |1601-1653)               |
|1.3140   |lockier                     |robert                                               |1649-1649)               |
|1.3141   |barber                      |edward                                               |1674-1674)               |
|1.3142   |behn                        |aphra                                                |1640-1689)               |
|1.3143   |bell                        |john                                                 |1763-1820)               |
|1.3144   |NA ( 430- 430)              |NA                                                   |NA                       |
|1.3146   |chudleigh                   |james                                                |1643-1643)               |
|258.26   |comenius                    |johann amos                                          |1592-1670)               |
|3.2030   |touchet                     |anselm                                               |1689-1689)               |
|3.2031   |gough                       |william                                              |1654-1682)               |
|1.3148   |guy                         |william                                              |NA-NA)                   |
|1.3150   |turner                      |ambrose                                              |NA-NA)                   |
|6.1093   |morland                     |samuel                                               |1625-1695)               |
|15.34    |jervis                      |william                                              |NA-NA)                   |
|258.27   |love                        |mary                                                 |NA-NA)                   |
|1.3159   |lunsford                    |thomas                                               |1610-1653)               |
|1.3163   |pride                       |thomas                                               |1658-1658)               |
|1.3172   |sicklemore                  |james                                                |NA-NA)                   |
|1.3180   |downing                     |george                                               |1623-1684)               |
|5.512    |audley                      |john                                                 |NA-NA)                   |
|5.513    |barbon                      |praisegod                                            |1596-1679)               |
|1.3181   |barry                       |john                                                 |NA-NA)                   |
|1.3182   |caton                       |william                                              |1636-1665)               |
|1.3183   |cliffe                      |e                                                    |NA-NA)                   |
|1.3194   |berkeley                    |william                                              |1608-1677)               |
|1.3195   |brydall                     |john                                                 |1635-1635)               |
|1.3197   |danforth                    |samuel                                               |1626-1674)               |
|3.2043   |hennepin                    |louis                                                |NA-NA)                   |
|1.3206   |backhouse                   |robert                                               |1645-1645)               |
|3.2046   |NA (1607-1607)              |NA                                                   |NA                       |
|1.3221   |fairfax                     |henry                                                |1634-1702)               |
|6.1113   |rouse                       |john                                                 |1683-1683)               |
|3.2048   |bos                         |lambert van den                                      |1610-1698)               |
|1.3226   |jones                       |john                                                 |1645-1709)               |
|1.3228   |sedgwick                    |william                                              |1610-1669)               |
|1.3230   |temple                      |john                                                 |1600-1677)               |
|1.3234   |paget                       |thomas                                               |1660-1660)               |
|4.528    |allington                   |john                                                 |1682-1682)               |
|1.3237   |home                        |james                                                |1666-1666)               |
|1.3239   |NA (1595-1675)              |NA                                                   |NA                       |
|6.1118   |devonshire                  |william cavendish                                    |1640-1707)               |
|4.530    |garencières                 |theophilus                                           |1610-1680)               |
|1.3252   |lovelace                    |francis                                              |1594-1664)               |
|6.1126   |paris                       |matthew                                              |1200-1259)               |
|3.2054   |parker                      |samuel                                               |1640-1688)               |
|10.213   |rone                        |elizabeth                                            |NA-NA)                   |
|1.3258   |davy                        |henry                                                |NA-NA)                   |
|5.528    |jackson                     |nicholas                                             |NA-NA)                   |
|3.2056   |malalas                     |john                                                 |578- 578)                |
|5.530    |dopping                     |anthony                                              |1643-1697)               |
|1.3259   |breton                      |nicholas                                             |1545-1626)               |
|1.3260   |steele                      |william                                              |1680-1680)               |
|5.535    |powel                       |r                                                    |NA-NA)                   |
|6.1127   |ravenhill                   |william                                              |NA-NA)                   |
|1.3265   |clarke                      |thomas                                               |1661-1661)               |
|1.3266   |thompkins                   |edward                                               |NA-NA)                   |
|1.3267   |oldham                      |john                                                 |1653-1683)               |
|1.3270   |plunket                     |oliver                                               |1629-1681)               |
|1.3286   |johnston                    |nathaniel                                            |1627-1705)               |
|1.3287   |perse                       |william                                              |1641-1707)               |
|6.1129   |stafford                    |william howard                                       |1614-1680)               |
|5.546    |leech                       |john                                                 |NA-NA)                   |
|1.3291   |assheton                    |william                                              |1641-1711)               |
|1.3292   |battie                      |john                                                 |NA-NA)                   |
|4.533    |scot                        |philip                                               |NA-NA)                   |
|1.3298   |keith                       |george                                               |1639-1716)               |
|1.3319   |NA (1630-1685)              |NA                                                   |NA                       |
|3.2064   |colet                       |john                                                 |1467-1519)               |
|6.1131   |cox                         |richard                                              |1650-1733)               |
|1.3326   |winyard                     |thomas                                               |NA-NA)                   |
|1.3327   |massey                      |edward                                               |1619-1674)               |
|1.3330   |scotten                     |edmund                                               |NA-NA)                   |
|3.2065   |faria e sousa               |manuel de                                            |1590-1649)               |
|1.3350   |flemming                    |oliver                                               |NA-NA)                   |
|6.1135   |sousa de macedo             |antónio de                                            |1606-1682)               |
|1.3357   |stamford                    |thomas grey                                          |1654-1720)               |
|1.3359   |lancton                     |thomas                                               |NA-NA)                   |
|1.3368   |widdows                     |thomas                                               |1612-1655)               |
|4.535    |williams                    |daniel                                               |1643-1716)               |
|1.3370   |williamson                  |robert                                               |NA-NA)                   |
|1.3372   |wilson                      |elias                                                |NA-NA)                   |
|15.47    |young                       |samuel                                               |1684-1700)               |
|15.48    |heydon                      |j                                                    |NA-NA)                   |
|1.3379   |beale                       |thomas                                               |NA-NA)                   |
|3.2070   |barlow                      |thomas                                               |1607-1691)               |
|1.3383   |NA (1646-1699)              |NA                                                   |NA                       |
|6.1138   |cobb                        |samuel                                               |1675-1713)               |
|1.3395   |conset                      |john                                                 |1673-1673)               |
|1.3399   |ashhurst                    |william                                              |1617-1680)               |
|1.3400   |du pin                      |louis ellies                                         |1657-1719)               |
|1.3414   |gardiner                    |james                                                |1723-1723)               |
|3.2076   |duck                        |arthur                                               |1580-1648)               |
|1.3418   |gookin                      |vincent                                              |1616-1659)               |
|6.1144   |sleidanus                   |johannes                                             |1506-1556)               |
|5.569    |rookwood                    |ambrose                                              |1664-1696)               |
|1.3446   |metford                     |james                                                |NA-NA)                   |
|1.3449   |skippon                     |philip                                               |1660-1660)               |
|6.1147   |holloway                    |james                                                |1684-1684)               |
|1.3457   |gould                       |robert                                               |1709-1709)               |
|3.2086   |bull                        |george                                               |1634-1710)               |
|1.3477   |buller                      |john                                                 |NA-NA)                   |
|1.3481   |montgomery                  |james                                                |1694-1694)               |
|1.3488   |barne                       |miles                                                |1709-1709)               |
|6.1156   |atwood                      |william                                              |1705-1705)               |
|1.3491   |cockburn                    |john                                                 |1652-1729)               |
|258.37   |copley                      |lionel                                               |NA-NA)                   |
|1.3495   |du moulin                   |peter                                                |1601-1684)               |
|1.3517   |NA (1620-1688)              |NA                                                   |NA                       |
|1.3518   |goodwin                     |john                                                 |1594-1665)               |
|4.547    |NA (1640-1640)              |NA                                                   |NA                       |
|4.548    |heinsius                    |daniel                                               |1580-1655)               |
|3.2099   |rich                        |jeremiah                                             |1660-1660)               |
|3.2100   |hooper                      |george                                               |1640-1727)               |
|1.3532   |hursey                      |roger                                                |NA-NA)                   |
|1.3538   |anderdon                    |john                                                 |1624-1685)               |
|1.3543   |astell                      |ralph                                                |NA-NA)                   |
|1.3544   |atkinson                    |thomas                                               |NA-NA)                   |
|3.2103   |vergil                      |polydore                                             |1470-1555)               |
|1.3549   |newte                       |john                                                 |1655-1716)               |
|1.3551   |fox                         |george                                               |1661-1661)               |
|1.3555   |covel                       |william                                              |NA-NA)                   |
|1.3556   |vaelckern                   |johann peter von                                     |NA-NA)                   |
|1.3558   |peters                      |john                                                 |NA-NA)                   |
|1.3561   |pigot                       |alexander                                            |NA-NA)                   |
|1.3562   |pittilloh                   |robert                                               |1621-1698)               |
|15.64    |powell                      |john                                                 |NA-NA)                   |
|15.65    |prideaux                    |edmond                                               |1659-1659)               |
|1.3563   |ramsey                      |thomas                                               |NA-NA)                   |
|258.40   |collinges                   |john                                                 |1623-1690)               |
|10.238   |saxon                       |thomas                                               |NA-NA)                   |
|1.3578   |kilborne                    |patrick                                              |NA-NA)                   |
|1.3585   |houser                      |henry                                                |1683-1683)               |
|15.70    |lauderdale                  |john maitland                                        |1616-1682)               |
|1.3595   |gower                       |stanley                                              |NA-NA)                   |
|1.3596   |coe                         |richard                                              |NA-NA)                   |
|1.3597   |massey                      |robert                                               |NA-NA)                   |
|3.2109   |blount                      |thomas                                               |1618-1679)               |
|4.552    |shirley                     |james                                                |1596-1666)               |
|1.3604   |watson                      |lion                                                 |NA-NA)                   |
|1.3605   |beech                       |william                                              |NA-NA)                   |
|1.3610   |lawrence                    |george                                               |1615-1695)               |
|15.71    |moore                       |thomas                                               |NA-NA)                   |
|1.3612   |bond                        |samson                                               |NA-NA)                   |
|1.3619   |byam                        |william                                              |1623-1670)               |
|1.3620   |puttock                     |roger                                                |NA-NA)                   |
|1.3637   |prideaux                    |mathias                                              |1622-1646)               |
|258.44   |cresheld                    |richard                                              |NA-NA)                   |
|6.1183   |dalton                      |michael                                              |1648-1648)               |
|10.242   |coniers                     |george                                               |1646-1711)               |
|1.3645   |corbet                      |edward                                               |1658-1658)               |
|3.2116   |gale                        |theophilus                                           |1628-1678)               |
|4.555    |préchac                     |jean de                                              |1647-1720)               |
|1.3662   |gerbier                     |balthazar                                            |1592-1667)               |
|1.3663   |le white                    |thomas                                               |NA-NA)                   |
|1.3665   |NA (1665-1665)              |NA                                                   |NA                       |
|1.3667   |marten                      |henry                                                |1602-1680)               |
|258.46   |melish                      |stephen                                              |NA-NA)                   |
|258.47   |spanheim                    |friedrich                                            |1632-1701)               |
|15.74    |sancroft                    |william                                              |1617-1693)               |
|10.244   |clarke                      |john                                                 |1596-1658)               |
|1.3676   |clift                       |samuel                                               |NA-NA)                   |
|1.3677   |bury                        |john                                                 |NA-NA)                   |
|1.3700   |wilson                      |h                                                    |NA-NA)                   |
|1.3706   |NA (1636-1700)              |NA                                                   |NA                       |
|15.76    |dowdall                     |henry                                                |NA-NA)                   |
|5.606    |d'urfey                     |thomas                                               |1653-1723)               |
|1.3740   |fowke                       |john                                                 |1662-1662)               |
|1.3741   |hesilrige                   |arthur                                               |1661-1661)               |
|1.3742   |jenkin                      |robert                                               |1656-1727)               |
|10.251   |knight                      |val                                                  |NA-NA)                   |
|15.77    |elslyott                    |thomas                                               |NA-NA)                   |
|1.3750   |kinderslie                  |robert                                               |NA-NA)                   |
|4.561    |elsynge                     |henry                                                |1598-1654)               |
|3.2130   |fenwick                     |john                                                 |1645-1697)               |
|1.3795   |fowler                      |edward                                               |1632-1714)               |
|1.3801   |taylor                      |silas                                                |1624-1678)               |
|1.3805   |love                        |christopher                                          |1618-1651)               |
|6.1208   |guy                         |john                                                 |NA-NA)                   |
|1.3812   |hunton                      |samuel                                               |NA-NA)                   |
|4.564    |garbutt                     |richard                                              |NA-NA)                   |
|6.1213   |gibbon                      |john                                                 |1629-1718)               |
|1.3817   |NA (1640-1712)              |NA                                                   |NA                       |
|15.85    |gilbert                     |thomas                                               |1613-1694)               |
|1.3828   |manby                       |peter                                                |1697-1697)               |
|3.2138   |price                       |john                                                 |1625-1691)               |
|6.1218   |sandoval                    |prudencio de                                         |1560-1620)               |
|1.3834   |lockyer                     |nicholas                                             |1611-1685)               |
|3.2139   |skinner                     |thomas                                               |1629-1679)               |
|5.624    |ashton                      |john                                                 |1691-1691)               |
|15.87    |ambrose                     |isaac                                                |1604-1664)               |
|3.2142   |polhill                     |edward                                               |1622-1694)               |
|5.630    |johnson                     |robert                                               |active 1586-1626)        |
|5.631    |billing                     |r                                                    |NA-NA)                   |
|1.3853   |drummond                    |robert hay                                           |1711-1776)               |
|15.90    |dormer                      |p                                                    |NA-NA)                   |
|5.636    |feud                        |c                                                    |NA-NA)                   |
|1.3861   |lovewel                     |john                                                 |NA-NA)                   |
|15.91    |lund                        |niels                                                |NA-NA)                   |
|1.3863   |o'flaherty                  |roderic                                              |1629-1718)               |
|1.3866   |haggar                      |henry                                                |NA-NA)                   |
|1.3869   |novell                      |john                                                 |NA-NA)                   |
|1.3870   |hodgson                     |john                                                 |1684-1684)               |
|1.3871   |philipps                    |fabian                                               |1601-1690)               |
|6.1230   |hodges                      |william                                              |1645-1714)               |
|3.2146   |jameson                     |john                                                 |NA-NA)                   |
|6.1232   |powle                       |henry                                                |1630-1692)               |
|3.2151   |croese                      |gerardus                                             |1642-1710)               |
|3.2153   |drummond                    |william                                              |1585-1649)               |
|1.3913   |spenser                     |edmund                                               |1552-1599)               |
|6.1239   |hutchinson                  |richard                                              |NA-NA)                   |
|1.3921   |bisbie                      |nathaniel                                            |1635-1695)               |
|1.3925   |byron                       |john                                                 |1599-1652)               |
|6.1241   |congreve                    |william                                              |1670-1729)               |
|1.3926   |NA (1640-1705)              |NA                                                   |NA                       |
|3.2162   |rutherford                  |samuel                                               |1600-1661)               |
|1.3936   |wray                        |john                                                 |1586-1655)               |
|15.97    |wright                      |william                                              |1659-1659)               |
|1.3938   |okey                        |john                                                 |1662-1662)               |
|1.3940   |love                        |richard                                              |1596-1661)               |
|3.2168   |pointis                     |jean-bernard-louis desjean                           |1645-1707)               |
|6.1247   |burridge                    |richard                                              |1670-1670)               |
|3.2172   |maynwaringe                 |everard                                              |1628-1699)               |
|6.1251   |duke                        |henry                                                |NA-NA)                   |
|5.653    |schomberg                   |friedrich hermann                                    |1615-1690)               |
|1.3955   |sparke                      |michael                                              |1653-1653)               |
|1.3964   |hollingsworth               |richard                                              |1639-1701)               |
|1.3966   |nye                         |philip                                               |1596-1672)               |
|15.102   |salmon                      |joseph                                               |NA-NA)                   |
|3.2175   |sadeddin                    |hoca                                                 |1536-1599)               |
|1.3978   |henderson                   |alexander                                            |1583-1646)               |
|3.2177   |nadányi                      |jános                                                 |1643-1707)               |
|3.2178   |cranford                    |james                                                |1657-1657)               |
|1.3982   |harrington                  |james                                                |1664-1693)               |
|1.3983   |rudyard                     |thomas                                               |1692-1692)               |
|20.2     |mason                       |william                                              |active 1672-1709)        |
|1.3985   |fry                         |john                                                 |1609-1657)               |
|1.3990   |poyntz                      |robert                                               |1589-1665)               |
|3.2186   |beek                        |j                                                    |1691-1702)               |
|10.276   |goodman                     |peter                                                |1661-1661)               |
|3.2188   |palafox y mendoza           |juan de                                              |1600-1659)               |
|1.4000   |tompkins                    |nathaniel                                            |1643-1643)               |
|1.4006   |lambert                     |john                                                 |1619-1683)               |
|6.1258   |montagu                     |richard                                              |1577-1641)               |
|1.4008   |buckley                     |richard                                              |NA-NA)                   |
|6.1260   |trusty                      |roger                                                |NA-NA)                   |
|3.2192   |malkin                      |g                                                    |NA-NA)                   |
|1.4030   |evelyn                      |robert                                               |NA-NA)                   |
|1.4038   |naylor                      |james                                                |1617-1660)               |
|1.4040   |enos                        |walter                                               |NA-NA)                   |
|6.1270   |exton                       |john                                                 |1600-1668)               |
|4.584    |vaughan                     |rice                                                 |NA-NA)                   |
|1.4044   |parsons                     |william                                              |1570-1650)               |
|208.29   |chassepol                   |françois de                                           |NA-NA)                   |
|1.4047   |gardiner                    |ralph                                                |1625-1625)               |
|1.4049   |cardenas                    |alonso de                                            |NA-NA)                   |
|1.4055   |collier                     |thomas                                               |1691-1691)               |
|3.2203   |fletcher                    |r                                                    |1676-1677)               |
|1.4063   |vines                       |richard                                              |1600-1656)               |
|5.675    |pudsey                      |george                                               |1664-1664)               |
|1.4072   |donneau de visé             |jean                                                 |1638-1710)               |
|1.4077   |carr                        |william                                              |NA-NA)                   |
|1.4080   |hamilton                    |andrew                                               |1691-1691)               |
|6.1275   |wall                        |john                                                 |1620-1679)               |
|15.104   |calle                       |caleb                                                |NA-NA)                   |
|6.1276   |cellier                     |elizabeth                                            |1650-1650)               |
|3.2204   |aconcio                     |iacopo                                               |1566-1566)               |
|1.4105   |whittel                     |john                                                 |NA-NA)                   |
|3.2205   |berkeley                    |john                                                 |1678-1678)               |
|3.2206   |churchill                   |winston                                              |1620-1688)               |
|1.4112   |heereboord                  |adrianus                                             |1614-1661)               |
|1.4116   |norton                      |john                                                 |1606-1663)               |
|5.681    |kirke                       |percy                                                |1646-1691)               |
|6.1282   |blount                      |thomas pope                                          |1649-1697)               |
|1.4129   |turner                      |samuel                                               |1647-1647)               |
|1.4130   |eaton                       |samuel                                               |1596-1665)               |
|3.2211   |petyt                       |william                                              |1636-1707)               |
|1.4137   |mason                       |robert                                               |1789-1789)               |
|1.4140   |barton                      |samuel                                               |1648-1715)               |
|1.4144   |forth and brentford         |patrick ruthven                                      |1573-1651)               |
|1.4146   |riveley                     |benedict                                             |1628-1695)               |
|1.4150   |master                      |thomas                                               |1603-1643)               |
|1.4151   |benoist                     |elie                                                 |1640-1728)               |
|1.4154   |flatman                     |thomas                                               |1637-1688)               |
|1.4156   |duppa                       |brian                                                |1588-1662)               |
|6.1286   |cressy                      |serenus                                              |1605-1674)               |
|1.4167   |griffith                    |matthew                                              |1599-1665)               |
|6.1290   |frankland                   |thomas                                               |1633-1690)               |
|1.4176   |overton                     |robert                                               |1668-1668)               |
|6.1291   |luxembourg                  |françois-henri de montmorency                        |1628-1695)               |
|6.1292   |petrie                      |alexander                                            |1594-1662)               |
|1.4181   |starkey                     |george                                               |1627-1665)               |
|1.4186   |smith                       |george                                               |1603-1658)               |
|5.690    |dartmouth                   |george legge                                         |1648-1691)               |
|1.4195   |davison                     |thomas                                               |1640-1640)               |
|1.4201   |denne                       |henry                                                |1607-1660)               |
|1.4204   |castell                     |william                                              |1645-1645)               |
|6.1296   |foulis                      |henry                                                |1635-1669)               |
|1.4214   |harris                      |robert                                               |1581-1658)               |
|10.283   |torrington                  |arthur herbert                                       |1647-1716)               |
|1.4218   |emitie                      |thomas                                               |NA-NA)                   |
|1.4220   |thou                        |jacques-auguste de                                   |1553-1617)               |
|1.4221   |struys                      |jan janszoon                                         |1694-1694)               |
|6.1298   |aitzema                     |lieuwe van                                           |1600-1669)               |
|1.4235   |pitt                        |francis                                              |1579-1644)               |
|1.4239   |milward                     |matthias                                             |1603-1641)               |
|1.4247   |browne                      |richard                                              |1602-1669)               |
|6.1301   |dugdale                     |stephen                                              |1640-1683)               |
|1.4254   |NA (1608-1657)              |NA                                                   |NA                       |
|1.4268   |dallison                    |charles                                              |1669-1669)               |
|1.4270   |glapthorne                  |henry                                                |NA-NA)                   |
|1.4274   |damon                       |john                                                 |NA-NA)                   |
|1.4277   |lowthorp                    |john                                                 |1659-1724)               |
|1.4278   |goodwin                     |thomas                                               |1587-1642)               |
|4.589    |dalicourt                   |p                                                    |NA-NA)                   |
|4.590    |mazarin                     |jules                                                |1602-1661)               |
|1.4287   |fletcher                    |andrew                                               |1655-1716)               |
|1.4290   |st albans                   |henry jermyn                                         |1604-1684)               |
|1.4291   |mason                       |abel                                                 |NA-NA)                   |
|1.4293   |norwood                     |thomas                                               |NA-NA)                   |
|6.1311   |dodsworth                   |christopher                                          |NA-NA)                   |
|6.1312   |sanderson                   |sir william                                          |1586-1676)               |
|1.4301   |heming                      |edmund                                               |1695-1695)               |
|1.4305   |tempest                     |george                                               |NA-NA)                   |
|4.591    |besongne                    |nicholas                                             |1697-1697)               |
|6.1315   |sanderson                   |william                                              |1586-1676)               |
|1.4316   |tullie                      |george                                               |1652-1695)               |
|6.1316   |nani                        |battista                                             |1616-1678)               |
|1.4323   |jones                       |william                                              |1631-1682)               |
|6.1317   |loubère                     |simon de                                             |1642-1729)               |
|1.4329   |nethersole                  |francis                                              |1587-1659)               |
|4.593    |deageant                    |guichard                                             |1645-1645)               |
|1.4330   |creamor                     |thomas                                               |NA-NA)                   |
|1.4332   |andrewes                    |r                                                    |NA-NA)                   |
|4.594    |NA (1478-1535)              |NA                                                   |NA                       |
|1.4342   |berkshire                   |charles howard                                       |1615-1679)               |
|6.1321   |montanus                    |arnoldus                                             |1625-1683)               |
|258.70   |proast                      |jonas                                                |NA-NA)                   |
|5.707    |nichols                     |william                                              |1690-1690)               |
|1.4351   |conway of conway castle     |edward                                               |1594-1655)               |
|1.4353   |monro                       |alexander                                            |1715-1715)               |
|6.1324   |loggan                      |david                                                |1635-1700)               |
|1.4362   |parke                       |james                                                |1636-1696)               |
|3.2235   |grelot                      |guillaume-joseph                                     |1630-1630)               |
|1.4372   |batt                        |gil                                                  |NA-NA)                   |
|1.4373   |hansley                     |john                                                 |1666-1666)               |
|1.4374   |crowther                    |john                                                 |NA-NA)                   |
|1.4379   |prescot                     |giles                                                |NA-NA)                   |
|1.4380   |hodgskins                   |john                                                 |NA-NA)                   |
|208.33   |olivier                     |pierre                                               |1622-1684)               |
|1.4382   |langdale                    |marmaduke                                            |1598-1661)               |
|1.4383   |stuteville                  |thomas                                               |NA-NA)                   |
|1.4392   |dickenson                   |henry                                                |NA-NA)                   |
|1.4400   |ellis                       |john                                                 |1606-1681)               |
|6.1330   |williams                    |william                                              |1634-1700)               |
|1.4406   |palmer                      |samuel                                               |1724-1724)               |
|1.4410   |wroth                       |william                                              |NA-NA)                   |
|3.2240   |turner                      |william                                              |1653-1701)               |
|6.1335   |baber                       |john                                                 |NA-NA)                   |
|1.4422   |rigge                       |ambrose                                              |1635-1705)               |
|1.4426   |nourse                      |peter                                                |1663-1723)               |
|6.1338   |chauncy                     |henry                                                |1632-1719)               |
|3.2243   |burton                      |william                                              |1609-1657)               |
|6.1341   |suckling                    |john                                                 |1609-1642)               |
|4.598    |NA (1660-1694)              |NA                                                   |NA                       |
|6.1343   |d'anvers                    |alicia                                               |NA-NA)                   |
|6.1348   |smith                       |francis                                              |1657-1689)               |
|1.4446   |du moulin                   |pierre                                               |1568-1658)               |
|3.2247   |bushnell                    |walter                                               |1609-1667)               |
|3.2248   |king                        |peter                                                |1669-1734)               |
|1.4450   |orme                        |thomas                                               |1716-1716)               |
|1.4456   |salmon                      |james                                                |NA-NA)                   |
|1.4460   |fairebrother                |william                                              |1613-1681)               |
|1.4467   |aldworth                    |richard                                              |NA-NA)                   |
|1.4476   |writer                      |clement                                              |1627-1658)               |
|5.727    |rinuccini                   |giovanni battista                                    |1592-1653)               |
|3.2252   |alsop                       |george                                               |1638-1638)               |
|1.4485   |colepeper                   |john                                                 |1660-1660)               |
|1.4488   |partridge                   |john                                                 |1644-1715)               |
|1.4490   |jones                       |isaac                                                |NA-NA)                   |
|1.4496   |johnsons                    |thomas                                               |NA-NA)                   |
|3.2255   |broughton                   |richard                                              |NA-NA)                   |
|1.4500   |walley                      |thomas                                               |1616-1678)               |
|3.2256   |baudier                     |michel                                               |1589-1645)               |
|3.2257   |southouse                   |thomas                                               |1641-1676)               |
|3.2258   |langbaine                   |gerard                                               |1609-1658)               |
|3.2259   |losa                        |francisco de                                         |1536-1624)               |
|3.2260   |monck                       |thomas                                               |NA-NA)                   |
|1.4511   |lawson                      |john                                                 |1665-1665)               |
|1.4521   |weldon                      |anthony                                              |1649-1649)               |
|1.4522   |warren                      |george                                               |NA-NA)                   |
|1.4526   |carre                       |james                                                |NA-NA)                   |
|1.4529   |NA ( 230- 230)              |NA                                                   |NA                       |
|10.300   |saunders                    |thomas                                               |NA-NA)                   |
|3.2265   |abercromby                  |david                                                |1702-1702)               |
|3.2266   |priolo                      |benjamin                                             |1602-1667)               |
|1.4545   |meredith                    |walter                                               |NA-NA)                   |
|6.1369   |ludolf                      |hiob                                                 |1624-1704)               |
|6.1370   |freire de andrade           |jacinto                                              |1597-1657)               |
|5.738    |pugh                        |hugh                                                 |NA-NA)                   |
|3.2272   |houlbrook                   |william                                              |NA-NA)                   |
|1.4577   |ross                        |john                                                 |1719-1792)               |
|3.2275   |rosworme                    |john                                                 |1630-1660)               |
|3.2277   |langley                     |william                                              |1610-1610)               |
|6.1377   |fitzgerald                  |david                                                |NA-NA)                   |
|1.4589   |morton                      |thomas                                               |1575-1646)               |
|1.4591   |claude                      |jean                                                 |1619-1687)               |
|1.4594   |finch of fordwich           |john                                                 |1584-1660)               |
|1.4597   |mure                        |william                                              |1594-1657)               |
|6.1382   |barnes                      |joshua                                               |1654-1712)               |
|1.4619   |smart                       |ithiel                                               |1599-1661)               |
|1.4633   |swanley                     |richard                                              |1650-1650)               |
|6.1387   |thomas                      |john                                                 |NA-NA)                   |
|1.4646   |raleigh                     |george                                               |1600-1600)               |
|4.603    |NA ( 516- 570)              |NA                                                   |NA                       |
|1.4652   |sadler                      |anthony                                              |1610-1610)               |
|1.4655   |baltimore                   |george calvert                                       |1580-1632)               |
|1.4658   |owen                        |william                                              |NA-NA)                   |
|6.1393   |herault                     |louis                                                |NA-NA)                   |
|1.4666   |hall                        |william                                              |1662-1662)               |
|6.1395   |comyne                      |eustace                                              |NA-NA)                   |
|1.4670   |geaves                      |william                                              |NA-NA)                   |
|1.4671   |walton                      |brian                                                |1600-1661)               |
|6.1400   |weyer                       |florence                                             |NA-NA)                   |
|1.4681   |sewall                      |samuel                                               |1652-1730)               |
|1.4684   |mervyn                      |sir audley                                           |1675-1675)               |
|1.4685   |cradocke                    |francis                                              |1670-1670)               |
|1.4686   |wenlock                     |john                                                 |NA-NA)                   |
|1.4698   |manningham                  |thomas                                               |1651-1722)               |
|1.4709   |plunkett                    |richard                                              |NA-NA)                   |
|1.4718   |stoppa                      |giovanni battista                                    |NA-NA)                   |
|1.4733   |hollingworth                |richard                                              |1607-1656)               |
|6.1408   |narbrough                   |john                                                 |1640-1688)               |
|1.4737   |hospinian                   |rudolf                                               |1547-1626)               |
|6.1409   |chamberlen                  |hugh                                                 |1720-1720)               |
|5.752    |plessington                 |william                                              |1679-1679)               |
|1.4751   |baynton                     |edward                                               |1619-1679)               |
|1.4753   |sanders                     |edward                                               |NA-NA)                   |
|1.4758   |williamson                  |benjamin                                             |NA-NA)                   |
|1.4760   |williams                    |richard                                              |1607-1607)               |
|1.4762   |waddam                      |henry                                                |NA-NA)                   |
|1.4770   |killam                      |margaret                                             |1672-1672)               |
|1.4773   |hyword                      |abel                                                 |NA-NA)                   |
|1.4778   |pooley                      |w                                                    |NA-NA)                   |
|6.1411   |sandford                    |francis                                              |1630-1694)               |
|1.4782   |hutton                      |charles                                              |1653-1653)               |
|1.4785   |elger                       |christopher                                          |NA-NA)                   |
|6.1414   |sainte-marthe               |scévole de                                            |1571-1650)               |
|208.36   |connor                      |bernard                                              |1666-1698)               |
|1.4794   |jones                       |henry                                                |1605-1682)               |
|6.1415   |sault                       |richard                                              |1702-1702)               |
|1.4797   |johnson                     |stephen                                              |NA-NA)                   |
|1.4802   |eliot                       |john                                                 |1592-1632)               |
|6.1419   |russell                     |william                                              |1639-1683)               |
|1.4807   |farrar                      |richard                                              |NA-NA)                   |
|1.4813   |loyd                        |morgan                                               |NA-NA)                   |
|3.2301   |NA (1634-1693)              |NA                                                   |NA                       |
|1.4822   |crawford                    |ludovic lindsay                                      |1600-1652)               |
|6.1424   |scheffer                    |johannes                                             |1621-1679)               |
|1.4829   |beamount                    |thomas                                               |NA-NA)                   |
|1.4832   |stewart                     |william                                              |1647-1647)               |
|1.4837   |geree                       |stephen                                              |1594-1656)               |
|1.4839   |NA (1649-1649)              |NA                                                   |NA                       |
|5.758    |poseley                     |m                                                    |NA-NA)                   |
|1.4850   |praed                       |john                                                 |NA-NA)                   |
|6.1428   |halifax                     |charles montagu                                      |1661-1715)               |
|1.4854   |nutt                        |thomas                                               |NA-NA)                   |
|1.4857   |gayton                      |edmund                                               |1608-1666)               |
|3.2305   |NA (1604-1698)              |NA                                                   |NA                       |
|1.4865   |butler                      |samuel                                               |1612-1680)               |
|1.4870   |gorges                      |ferdinando                                           |1556-1647)               |
|3.2307   |langbaine                   |gerard                                               |1656-1692)               |
|1.4873   |wren                        |matthew                                              |1585-1667)               |
|3.2309   |vokins                      |joan                                                 |1690-1690)               |
|1.4885   |talon                       |nicolas                                              |1605-1691)               |
|1.4889   |ames                        |richard                                              |1693-1693)               |
|6.1436   |thorogood                   |b                                                    |NA-NA)                   |
|4.608    |cerdan                      |jean-paul                                            |NA-NA)                   |
|1.4894   |leicester                   |philip sidney                                        |1619-1698)               |
|3.2310   |palluau                     |philippe de clérembault                              |1606-1665)               |
|6.1438   |mazzella                    |scipione                                             |NA-NA)                   |
|1.4900   |taylor                      |richard                                              |NA-NA)                   |
|5.771    |bulkley                     |thomas                                               |NA-NA)                   |
|1.4909   |gilbert                     |eleazar                                              |NA-NA)                   |
|1.4910   |lilburne                    |george                                               |NA-NA)                   |
|1.4911   |price                       |evan                                                 |NA-NA)                   |
|4.609    |may                         |thomas                                               |1645-1718)               |
|1.4914   |chillingworth               |william                                              |1602-1644)               |
|1.4915   |keeling                     |josias                                               |NA-NA)                   |
|1.4918   |stamford                    |henry grey                                           |1599-1673)               |
|3.2314   |falle                       |philip                                               |1656-1742)               |
|1.4926   |quatermayne                 |roger                                                |NA-NA)                   |
|1.4933   |chillenden                  |edmund                                               |1656-1656)               |
|1.4939   |edwards                     |thomas                                               |active 1693-1699)        |
|3.2316   |le clerc                    |daniel                                               |1652-1728)               |
|1.4942   |grant                       |william                                              |1678-1678)               |
|5.775    |freeman                     |john                                                 |1681-1681)               |
|6.1446   |milton                      |christopher                                          |1615-1693)               |
|5.778    |waldeck                     |georg friedrich                                      |1620-1692)               |
|1.4959   |bacon                       |robert                                               |NA-NA)                   |
|3.2319   |guise                       |henri                                                |1614-1664)               |
|1.4964   |bennet                      |robert                                               |1605-1683)               |
|3.2321   |abbadie                     |jacques                                              |1654-1727)               |
|1.4981   |eglisham                    |george                                               |1612-1642)               |
|1.4987   |browne                      |edward                                               |NA-NA)                   |
|6.1451   |burnet                      |thomas                                               |1635-1715)               |
|6.1452   |whitaker                    |edward                                               |NA-NA)                   |
|1.5004   |rogers                      |william                                              |1709-1709)               |
|1.5007   |stoughton                   |william                                              |1632-1701)               |
|1.5008   |allen                       |william                                              |1532-1594)               |
|1.5011   |whitrowe                    |joan                                                 |1630-1707)               |
|1.5012   |trenchard                   |john                                                 |1662-1723)               |
|1.5022   |seymour                     |francis                                              |1590-1664)               |
|1.5032   |best                        |paul                                                 |1590-1657)               |
|1.5034   |okeham                      |william                                              |NA-NA)                   |
|3.2328   |walker                      |obadiah                                              |1616-1699)               |
|1.5035   |harrison                    |john                                                 |NA-NA)                   |
|1.5040   |lucas                       |thomas                                               |1649-1649)               |
|1.5043   |saye and sele               |william fiennes                                      |1582-1662)               |
|1.5044   |malebranche                 |nicolas                                              |1638-1715)               |
|1.5052   |graunt                      |john                                                 |NA-NA)                   |
|1.5060   |arrowsmith                  |john                                                 |1602-1659)               |
|1.5061   |byfield                     |richard                                              |1598-1664)               |
|1.5063   |bridges                     |john                                                 |1666-1724)               |
|1.5079   |mitton                      |thomas                                               |1597-1656)               |
|1.5089   |overton                     |richard                                              |1646-1646)               |
|1.5093   |pye                         |robert                                               |1701-1701)               |
|1.5108   |grey                        |henry                                                |NA-NA)                   |
|1.5123   |pricket                     |robert                                               |NA-NA)                   |
|1.5132   |lisle                       |john                                                 |1610-1664)               |
|1.5134   |lithgow                     |william                                              |1582-1645)               |
|1.5137   |ward                        |john                                                 |1665-1665)               |
|1.5142   |bedford                     |samuel                                               |NA-NA)                   |
|1.5148   |hopkinson                   |james                                                |1645-1645)               |
|1.5156   |lluelyn                     |martin                                               |1616-1682)               |
|1.5158   |NA (1615-1648)              |NA                                                   |NA                       |
|1.5175   |browne                      |thomas                                               |1604-1673)               |
|1.5180   |laugharne                   |rowland                                              |1676-1676)               |
|1.5198   |thompson                    |william                                              |1649-1649)               |
|1.5201   |loudoun                     |john campbell                                        |1598-1663)               |
|1.5203   |burton                      |henry                                                |1578-1648)               |
|1.5204   |lilburne                    |robert                                               |1613-1665)               |
|1.5207   |norton                      |ralph                                                |1645-1645)               |
|1.5208   |scudamore                   |barnabas                                             |1658-1658)               |
|1.5210   |walsingham                  |edward                                               |1663-1663)               |
|1.5217   |poyntz                      |sydenham                                             |NA-NA)                   |
|1.5226   |white                       |nathaniel                                            |NA-NA)                   |
|1.5233   |burroughs                   |jeremiah                                             |1599-1646)               |
|5.789    |stawell                     |john                                                 |1599-1662)               |
|1.5261   |wheelwright                 |john                                                 |1594-1679)               |
|1.5270   |warren                      |elizabeth                                            |NA-NA)                   |
|1.5281   |digby                       |john                                                 |NA-NA)                   |
|1.5297   |wilson                      |edmund                                               |NA-NA)                   |
|1.5306   |ellyson                     |thomas                                               |NA-NA)                   |
|3.2332   |wall                        |john                                                 |1588-1666)               |
|1.5316   |dell                        |william                                              |1664-1664)               |
|1.5317   |knollys                     |hanserd                                              |1599-1691)               |
|1.5318   |eachard                     |john                                                 |NA-NA)                   |
|1.5324   |woodcock                    |francis                                              |1614-1651)               |
|1.5326   |busher                      |leonard                                              |NA-NA)                   |
|1.5329   |delamer                     |george booth                                         |1622-1684)               |
|1.5339   |payne                       |george                                               |NA-NA)                   |
|1.5345   |newark                      |david leslie                                         |1682-1682)               |
|1.5358   |booker                      |john                                                 |1603-1667)               |
|1.5379   |ryves                       |william                                              |NA-NA)                   |
|5.801    |musgrave                    |mary                                                 |1636-1664)               |
|1.5394   |grenville                   |richard                                              |1600-1658)               |
|1.5406   |burrell                     |andrewes                                             |NA-NA)                   |
|4.620    |NA (1500-1558)              |NA                                                   |NA                       |
|1.5409   |hansard                     |william                                              |NA-NA)                   |
|1.5417   |benbrigge                   |john                                                 |NA-NA)                   |
|1.5427   |webbe                       |thomas                                               |NA-NA)                   |
|1.5453   |worcester                   |henry somerset                                       |1577-1646)               |
|1.5472   |alle                        |thomas                                               |NA-NA)                   |
|1.5482   |freeman                     |francis                                              |NA-NA)                   |
|6.1476   |wilson                      |arthur                                               |1595-1652)               |
|1.5488   |newton                      |george                                               |1602-1681)               |
|1.5495   |wilkinson                   |henry                                                |1610-1675)               |
|1.5496   |cradock                     |walter                                               |1606-1659)               |
|1.5513   |lewis                       |john                                                 |NA-NA)                   |
|1.5515   |stafford                    |william                                              |1593-1684)               |
|1.5521   |drapes                      |edward                                               |NA-NA)                   |
|1.5523   |claro-vado                  |ed de                                                |NA-NA)                   |
|1.5529   |tilsley                     |john                                                 |1614-1684)               |
|1.5530   |haslock                     |john                                                 |NA-NA)                   |
|1.5531   |maddocks                    |john                                                 |NA-NA)                   |
|1.5535   |gataker                     |thomas                                               |1574-1654)               |
|1.5540   |lanseter                    |john                                                 |NA-NA)                   |
|1.5542   |montagu                     |ralph                                                |1638-1709)               |
|1.5564   |codrington                  |robert                                               |1601-1665)               |
|1.5568   |noyes                       |james                                                |1608-1656)               |
|1.5573   |ufflet                      |john                                                 |1603-1603)               |
|1.5589   |umfrevile                   |william                                              |NA-NA)                   |
|1.5593   |buckler                     |edward                                               |1610-1706)               |
|1.5599   |bedford                     |thomas                                               |1653-1653)               |
|1.5602   |lawrence                    |richard                                              |1684-1684)               |
|1.5606   |clanricarde                 |ulick de burgh                                       |1604-1657)               |
|1.5615   |king                        |edward                                               |1735-1807)               |
|1.5617   |sitrauk                     |w                                                    |NA-NA)                   |
|1.5624   |willis                      |humphrey                                             |NA-NA)                   |
|1.5634   |fornace                     |w                                                    |NA-NA)                   |
|1.5649   |bostock                     |robert                                               |1656-1656)               |
|1.5658   |fitzgerald                  |edward                                               |1647-1647)               |
|1.5664   |brown                       |john                                                 |NA-NA)                   |
|1.5667   |child                       |john                                                 |NA-NA)                   |
|1.5670   |steward                     |richard                                              |1593-1651)               |
|1.5699   |corbet                      |roger                                                |NA-NA)                   |
|1.5707   |chamberlayne                |edward                                               |1616-1703)               |
|1.5712   |winslow                     |edward                                               |1595-1655)               |
|1.5719   |hudson                      |michael                                              |1605-1648)               |
|1.5720   |smart                       |roger                                                |NA-NA)                   |
|1.5721   |pounset                     |john                                                 |NA-NA)                   |
|1.5736   |sandwich                    |edward montagu                                       |1625-1672)               |
|1.5738   |rishton                     |robert                                               |NA-NA)                   |
|1.5754   |reymes                      |b                                                    |NA-NA)                   |
|1.5755   |joyce                       |george                                               |1647-1647)               |
|1.5756   |burch                       |w                                                    |NA-NA)                   |
|1.5758   |neale                       |r                                                    |NA-NA)                   |
|1.5763   |michel                      |thomas                                               |1647-1647)               |
|1.5770   |sharpe                      |w                                                    |NA-NA)                   |
|1.5771   |cary                        |mary                                                 |NA-NA)                   |
|1.5787   |smith                       |thomas                                               |NA-NA)                   |
|1.5802   |harrison                    |william                                              |NA-NA)                   |
|1.5814   |palmer                      |george                                               |1597-1597)               |
|1.5816   |grosse                      |robert                                               |NA-NA)                   |
|1.5825   |worth-rush                  |john                                                 |NA-NA)                   |
|1.5829   |burfoit                     |t                                                    |NA-NA)                   |
|1.5838   |godfrey                     |n                                                    |NA-NA)                   |
|1.5861   |hackluyt                    |john                                                 |NA-NA)                   |
|1.5865   |marshe                      |adam                                                 |NA-NA)                   |
|1.5867   |knight                      |r                                                    |NA-NA)                   |
|1.5876   |tell-troth                  |thomas                                               |NA-NA)                   |
|1.5877   |sanders                     |william                                              |1647-1647)               |
|1.5905   |bushell                     |thomas                                               |1594-1674)               |
|1.5927   |blague                      |thomas                                               |NA-NA)                   |
|1.5930   |moore                       |robert                                               |1647-1647)               |
|1.5963   |lawcey                      |william                                              |NA-NA)                   |
|1.5976   |alleyn                      |thomas                                               |NA-NA)                   |
|1.5979   |grene                       |giles                                                |NA-NA)                   |
|1.5981   |english                     |peter                                                |NA-NA)                   |
|1.6007   |wheatly                     |w                                                    |NA-NA)                   |
|1.6016   |harvey                      |john                                                 |1702-1729)               |
|1.6021   |morris                      |john                                                 |1617-1649)               |
|1.6037   |fell                        |john                                                 |1625-1686)               |
|1.6040   |fleetwood                   |charles                                              |1692-1692)               |
|3.2350   |browne                      |thomas                                               |1605-1682)               |
|1.6052   |feake                       |christopher                                          |1645-1660)               |
|3.2353   |gaffarel                    |jacques                                              |1601-1681)               |
|1.6074   |gilbert                     |claudius                                             |1696-1696)               |
|1.6084   |guild                       |william                                              |1586-1657)               |
|1.6087   |gifftheil                   |ludwig friedrich                                     |1661-1661)               |
|1.6088   |glemham                     |thomas                                               |1649-1649)               |
|1.6093   |grey                        |enoch                                                |NA-NA)                   |
|6.1483   |samson                      |thomas                                               |NA-NA)                   |
|1.6109   |hopkins                     |william                                              |NA-NA)                   |
|1.6113   |hubbard                     |benjamin                                             |NA-NA)                   |
|4.630    |hotman                      |françois                                             |1524-1590)               |
|1.6129   |hamilton                    |james                                                |1606-1649)               |
|1.6133   |henden                      |simon                                                |NA-NA)                   |
|1.6136   |hammond                     |robert                                               |1621-1654)               |
|1.6140   |howgill                     |francis                                              |1618-1669)               |
|1.6142   |horton                      |thomas                                               |1649-1649)               |
|1.6144   |horton                      |thomas                                               |1673-1673)               |
|1.6145   |hopton                      |ralph                                                |1598-1652)               |
|1.6153   |harris                      |john                                                 |1647-1647)               |
|1.6156   |adamson                     |patrick                                              |1537-1592)               |
|1.6161   |jackson                     |john                                                 |active 1651-1657)        |
|1.6164   |jones                       |michael                                              |1649-1649)               |
|1.6166   |jessey                      |henry                                                |1603-1663)               |
|1.6172   |jeanes                      |henry                                                |1611-1662)               |
|1.6178   |leach                       |william                                              |NA-NA)                   |
|1.6183   |lawrence                    |thomas                                               |1645-1714)               |
|1.6199   |lockhart                    |william                                              |1621-1676)               |
|4.631    |lushington                  |thomas                                               |1590-1661)               |
|1.6203   |lathbury                    |thomas                                               |1650-1650)               |
|4.633    |malvezzi                    |virgilio                                             |1595-1653)               |
|1.6236   |maddison                    |ralph                                                |NA-NA)                   |
|1.6241   |masterson                   |george                                               |NA-NA)                   |
|3.2369   |bossuet                     |jacques bénigne                                       |1627-1704)               |
|1.6251   |morris                      |richard                                              |1660-1660)               |
|1.6252   |mossom                      |robert                                               |1679-1679)               |
|1.6277   |norwood                     |robert                                               |NA-NA)                   |
|1.6281   |nicholson                   |william                                              |1591-1672)               |
|1.6283   |osborne                     |john                                                 |NA-NA)                   |
|1.6290   |nichols                     |henry                                                |1660-1660)               |
|1.6292   |norwich                     |george goring                                        |1583-1663)               |
|1.6298   |oxford                      |wendy                                                |NA-NA)                   |
|1.6306   |osborne                     |richard                                              |1648-1648)               |
|3.2374   |pellisson-fontanier         |paul                                                 |1624-1693)               |
|1.6315   |fidoe                       |john                                                 |1626-1626)               |
|1.6328   |poyer                       |john                                                 |1649-1649)               |
|1.6355   |raie                        |c                                                    |NA-NA)                   |
|1.6362   |victor                      |verity                                               |NA-NA)                   |
|1.6364   |hill                        |thomas                                               |NA-NA)                   |
|1.6381   |robinson                    |henry                                                |1605-1664)               |
|1.6384   |richardson                  |samuel                                               |1643-1658)               |
|3.2380   |rohan                       |henri                                                |1579-1638)               |
|1.6395   |sadler                      |john                                                 |1615-1674)               |
|1.6399   |stephens                    |edward                                               |active 1640-1660)        |
|1.6405   |rich                        |nathaniel                                            |1701-1701)               |
|4.638    |sharp                       |jane                                                 |1671-1671)               |
|3.2385   |squire                      |william                                              |1677-1677)               |
|1.6442   |spelman                     |clement                                              |1598-1679)               |
|1.6443   |sterry                      |peter                                                |1613-1672)               |
|1.6444   |spittlehouse                |john                                                 |NA-NA)                   |
|1.6452   |streater                    |john                                                 |1650-1670)               |
|1.6453   |sydenham                    |cuthbert                                             |1622-1654)               |
|1.6455   |symmons                     |edward                                               |NA-NA)                   |
|4.641    |tanner                      |thomas                                               |1630-1682)               |
|1.6482   |whitlock                    |bulstrode                                            |1676-1676)               |
|1.6487   |gondomar                    |diego sarmiento de acuña                             |1567-1626)               |
|1.6505   |philanactos                 |demophilus                                           |NA-NA)                   |
|3.2387   |primi fassola di san maiolo |giovan battista feliciano                            |1648-1713)               |
|3.2388   |byfleet                     |john edward                                          |1607-1607)               |
|1.6544   |warr                        |john                                                 |NA-NA)                   |
|320.4    |warren                      |henry                                                |1652-1652)               |
|1.6546   |warriston                   |archibald johnston                                   |1611-1663)               |
|1.6548   |waring                      |thomas                                               |NA-NA)                   |
|1.6549   |weldon                      |robert                                               |NA-NA)                   |
|3.2390   |wincoll                     |thomas                                               |1675-1675)               |
|1.6552   |white                       |francis                                              |1657-1657)               |
|1.6554   |wharton                     |robert                                               |1649-1649)               |
|1.6555   |whalley                     |edward                                               |1675-1675)               |
|1.6566   |wood                        |adam                                                 |NA-NA)                   |
|1.6567   |wilkes                      |thomas                                               |1652-1652)               |
|1.6569   |wilbraham                   |roger                                                |1623-1623)               |
|4.642    |meadows                     |philip                                               |1626-1718)               |
|3.2398   |younger                     |william                                              |1605-1662)               |
|1.6591   |haywood                     |william                                              |1600-1663)               |
|1.6594   |strong                      |william                                              |1654-1654)               |
|1.6604   |st serfe                    |thomas                                               |1668-1668)               |
|4.643    |birchley                    |william                                              |1613-1669)               |
|1.6632   |winstanley                  |gerrard                                              |1609-1609)               |
|1.6642   |prince                      |thomas                                               |1687-1758)               |
|1.6657   |warren                      |albertus                                             |NA-NA)                   |
|1.6665   |adams                       |thomas                                               |1586-1668)               |
|1.6666   |levitt                      |william                                              |NA-NA)                   |
|1.6674   |tracey                      |h                                                    |NA-NA)                   |
|1.6708   |pope                        |mary                                                 |1647-1649)               |
|1.6722   |cheesman                    |christopher                                          |NA-NA)                   |
|1.6734   |ashburnham                  |john                                                 |1600-1658)               |
|1.6742   |rosse                       |william                                              |NA-NA)                   |
|1.6751   |burgess                     |anthony                                              |1664-1664)               |
|1.6774   |cradock                     |peter                                                |NA-NA)                   |
|1.6800   |pierce                      |thomas                                               |1622-1691)               |
|1.6811   |bedle                       |john                                                 |1596-1667)               |
|1.6822   |ewer                        |isaac                                                |1650-1650)               |
|1.6848   |bray                        |william                                              |NA-NA)                   |
|1.6878   |bate                        |henry                                                |NA-NA)                   |
|1.6909   |elencticus                  |mercurius                                            |NA-NA)                   |
|1.6924   |ley                         |william                                              |1621-1621)               |
|1.6937   |taswell                     |james                                                |NA-NA)                   |
|1.6943   |anderson                    |henry                                                |1582-1582)               |
|1.6944   |fisher                      |peter                                                |1648-1648)               |
|1.6953   |jones                       |robert                                               |NA-NA)                   |
|1.6960   |maynard                     |john                                                 |1602-1690)               |
|1.6973   |NA (1660-1685)              |NA                                                   |NA                       |
|1.6984   |el                          |m                                                    |1648-1648)               |
|1.6988   |burdet                      |john                                                 |NA-NA)                   |
|1.7037   |hyde                        |henry                                                |1606-1651)               |
|1.7040   |bernard                     |john                                                 |NA-NA)                   |
|1.7046   |bently                      |john                                                 |NA-NA)                   |
|1.7050   |warwick                     |william                                              |NA-NA)                   |
|1.7056   |walton                      |j                                                    |NA-NA)                   |
|1.7084   |northumberland              |algernon percy                                       |1602-1688)               |
|1.7088   |saint-leger                 |anthony                                              |1680-1680)               |
|1.7102   |hewit                       |john                                                 |1614-1658)               |
|1.7110   |jurin                       |john                                                 |NA-NA)                   |
|1.7156   |calver                      |edward                                               |1649-1649)               |
|1.7173   |NA (1573-1652)              |NA                                                   |NA                       |
|1.7188   |culmer                      |richard                                              |1662-1662)               |
|1.7191   |awdeley                     |lewis                                                |NA-NA)                   |
|1.7198   |adis                        |henry                                                |NA-NA)                   |
|1.7234   |willis                      |john                                                 |1625-1625)               |
|1.7243   |brooks                      |thomas                                               |1608-1680)               |
|1.7268   |vaughan                     |george                                               |NA-NA)                   |
|1.7287   |windet                      |james                                                |1664-1664)               |
|1.7290   |brayne                      |john                                                 |NA-NA)                   |
|1.7317   |scott                       |thomas                                               |1660-1660)               |
|10.329   |pight                       |richard                                              |NA-NA)                   |
|1.7332   |poole                       |elizabeth                                            |NA-NA)                   |
|1.7346   |bethel                      |hugh                                                 |NA-NA)                   |
|1.7351   |danvers                     |henry                                                |1687-1687)               |
|1.7368   |reynardson                  |abraham                                              |1590-1661)               |
|1.7374   |banaster                    |thomas                                               |NA-NA)                   |
|1.7414   |purefoy                     |william                                              |1580-1659)               |
|1.7415   |wolley                      |edward                                               |1603-1684)               |
|1.7430   |lawrence                    |henry                                                |1600-1664)               |
|1.7444   |ramsey                      |james                                                |NA-NA)                   |
|1.7446   |hind                        |james                                                |1652-1652)               |
|1.7456   |gerbier                     |balthazar                                            |1562-1667)               |
|1.7458   |fidge                       |george                                               |NA-NA)                   |
|1.7459   |hill                        |miles                                                |NA-NA)                   |
|1.7476   |chidley                     |samuel                                               |NA-NA)                   |
|9.87     |strange                     |jacob                                                |NA-NA)                   |
|1.7489   |NA (1626-1689)              |NA                                                   |NA                       |
|1.7490   |lardner                     |james                                                |1670-1670)               |
|1.7493   |cowling                     |nicholas                                             |NA-NA)                   |
|1.7504   |hartley                     |william                                              |NA-NA)                   |
|1.7506   |faldo                       |thomas                                               |NA-NA)                   |
|1.7508   |gilpin                      |richard                                              |1625-1700)               |
|1.7509   |aspinwall                   |william                                              |1648-1662)               |
|1.7527   |bradshaw                    |ellis                                                |NA-NA)                   |
|1.7536   |robins                      |robert                                               |NA-NA)                   |
|1.7549   |o'neill                     |owen roe                                             |1590-1649)               |
|1.7553   |lisle                       |francis                                              |NA-NA)                   |
|1.7567   |ashburnham                  |john                                                 |1600-1648)               |
|3.2406   |ross                        |alexander                                            |1591-1654)               |
|1.7598   |whittle                     |robert                                               |1598-1679)               |
|1.7609   |marbury                     |edward                                               |1655-1655)               |
|1.7614   |white                       |peter                                                |NA-NA)                   |
|1.7627   |dyve                        |lewis                                                |1599-1669)               |
|1.7628   |stuart                      |george                                               |NA-NA)                   |
|1.7632   |finch                       |henry                                                |1625-1625)               |
|1.7640   |freize                      |james                                                |NA-NA)                   |
|1.7642   |shawe                       |john                                                 |1608-1672)               |
|1.7643   |digby                       |kenelm                                               |1603-1665)               |
|1.7646   |parker                      |thomas                                               |1595-1677)               |
|1.7651   |sanderson                   |robert                                               |1587-1663)               |
|1.7657   |thache                      |thomas                                               |1617-1617)               |
|1.7669   |coster                      |robert                                               |NA-NA)                   |
|1.7678   |burt                        |nathaniel                                            |1644-1655)               |
|1.7679   |cent                        |nehemiah                                             |NA-NA)                   |
|1.7683   |brown                       |humfrey                                              |1621-1621)               |
|1.7696   |fairclough                  |samuel                                               |1594-1677)               |
|1.7698   |hasclock                    |john                                                 |NA-NA)                   |
|10.348   |bower                       |richard                                              |1662-1662)               |
|1.7733   |tany                        |thomas                                               |1649-1655)               |
|1.7735   |douglas                     |james                                                |1651-1651)               |
|1.7736   |rivet                       |andré                                                |1572-1651)               |
|1.7737   |chappel                     |samuel                                               |NA-NA)                   |
|1.7744   |queensberry                 |james douglas                                        |1662-1711)               |
|1.7745   |hopton                      |ralph                                                |1598-1682)               |
|1.7755   |hall                        |edmund                                               |1620-1687)               |
|1.7756   |westup                      |william                                              |NA-NA)                   |
|1.7769   |gell                        |john                                                 |1593-1671)               |
|1.7776   |hewson                      |john                                                 |1662-1662)               |
|1.7782   |burthall                    |raunce                                               |NA-NA)                   |
|1.7785   |bulteel                     |john                                                 |1683-1683)               |
|1.7787   |bill                        |edward                                               |NA-NA)                   |
|1.7797   |chambers                    |peter                                                |1652-1652)               |
|1.7802   |birkenhead                  |john                                                 |1616-1679)               |
|1.7805   |duncon                      |samuel                                               |NA-NA)                   |
|1.7807   |leveck                      |joseph                                               |NA-NA)                   |
|1.7812   |fell                        |christopher                                          |NA-NA)                   |
|1.7831   |vilvain                     |robert                                               |1575-1663)               |
|1.7854   |stoakes                     |john                                                 |NA-NA)                   |
|1.7863   |cornubiensis                |johannes                                             |NA-NA)                   |
|1.7880   |white                       |thomas                                               |1652-1652)               |
|1.7888   |erbery                      |william                                              |1604-1654)               |
|1.7891   |cobbet                      |thomas                                               |1608-1685)               |
|1.7894   |paine                       |john                                                 |1654-1654)               |
|1.7895   |dunstervile                 |thomas                                               |NA-NA)                   |
|1.7896   |camm                        |john                                                 |1604-1656)               |
|1.7908   |tromp                       |maarten harpertsz                                    |1598-1653)               |
|1.7909   |coker                       |matthew                                              |NA-NA)                   |
|1.7915   |blaithwaite                 |mary                                                 |NA-NA)                   |
|1.7927   |vaughan                     |evan                                                 |NA-NA)                   |
|1.7960   |salter                      |christopher                                          |NA-NA)                   |
|1.7962   |loftus                      |dudley                                               |1619-1695)               |
|1.7963   |eliot                       |john                                                 |1604-1690)               |
|1.7964   |fothergill                  |thomas                                               |1653-1653)               |
|1.7970   |turmiger                    |bevill                                               |NA-NA)                   |
|1.7989   |johnson                     |edward                                               |1599-1672)               |
|1.7991   |hall                        |george                                               |1612-1668)               |
|1.7993   |campanella                  |tommaso                                              |1568-1639)               |
|1.7999   |pearson                     |anthony                                              |1628-1670)               |
|1.8000   |chapman                     |george                                               |1559-1634)               |
|1.8002   |williamson                  |r                                                    |1653-1653)               |
|1.8005   |sá                           |pantaleão                                             |1654-1654)               |
|1.8006   |clarke                      |frances                                              |NA-NA)                   |
|1.8009   |NA (1609-1670)              |NA                                                   |NA                       |
|1.8010   |harrington                  |james                                                |1611-1677)               |
|1.8011   |penruddock                  |john                                                 |1619-1655)               |
|1.8016   |waller                      |hardress                                             |1604-1666)               |
|1.8019   |fielder                     |john                                                 |NA-NA)                   |
|1.8031   |shapcott                    |robert                                               |NA-NA)                   |
|1.8038   |heaman                      |roger                                                |NA-NA)                   |
|1.8043   |NA (1666-1666)              |NA                                                   |NA                       |
|1.8046   |croke                       |unton                                                |NA-NA)                   |
|1.8057   |crisp                       |henry                                                |NA-NA)                   |
|1.8058   |howsegoe                    |thomas                                               |NA-NA)                   |
|1.8063   |doyley                      |edward                                               |NA-NA)                   |
|1.8065   |shaw                        |samuel                                               |1635-1696)               |
|1.8066   |jones                       |bassett                                              |NA-NA)                   |
|1.8067   |corbet                      |jeffrey                                              |NA-NA)                   |
|1.8071   |alured                      |matthew                                              |NA-NA)                   |
|1.8076   |pinnell                     |henry                                                |NA-NA)                   |
|1.8082   |firmin                      |giles                                                |1614-1697)               |
|1.8088   |fitz-brian                  |r                                                    |NA-NA)                   |
|1.8091   |noble                       |charles                                              |NA-NA)                   |
|1.8119   |gery                        |william                                              |NA-NA)                   |
|1.8143   |tichborne                   |robert                                               |1682-1682)               |
|1.8152   |cranwell                    |luke                                                 |1628-1683)               |
|1.8171   |NA (1622-1660)              |NA                                                   |NA                       |
|1.8191   |brégy                       |charlotte saumaise de chazan                         |1619-1693)               |
|10.370   |whetham                     |nathaniel                                            |1694-1694)               |
|3.2411   |wharton                     |george                                               |1596-1672)               |
|3.2412   |williams                    |john                                                 |???NA-NA)                |
|5.878    |beeckman                    |daniel                                               |NA-NA)                   |
|1.8210   |raikes                      |robert                                               |NA-NA)                   |
|6.1566   |stawell                     |john                                                 |1599-1622)               |
|1.8212   |collinne                    |william                                              |NA-NA)                   |
|1.8213   |bunce                       |james                                                |1670-1670)               |
|6.1568   |trevor                      |john                                                 |1673-1673)               |
|1.8220   |maudit                      |john                                                 |1619-1674)               |
|3.2420   |wake                        |isaac                                                |1580-1632)               |
|3.2426   |apollonius                  |willem                                               |1603-1657)               |
|3.2427   |spanheim                    |friedrich                                            |1600-1649)               |
|1.8250   |smith                       |william                                              |1660-1686)               |
|4.645    |NA (1617-1617)              |NA                                                   |NA                       |
|3.2429   |postlethwaite               |walter                                               |1671-1671)               |
|3.2430   |martini                     |martino                                              |1614-1661)               |
|1.8256   |cooper                      |thomas                                               |NA-NA)                   |
|3.2434   |NA (1492-1549)              |NA                                                   |NA                       |
|3.2435   |channel                     |elinor                                               |NA-NA)                   |
|1.8262   |bramstone                   |j                                                    |NA-NA)                   |
|1.8264   |leach                       |edmund                                               |NA-NA)                   |
|1.8265   |crofton                     |zachary                                              |1626-1672)               |
|4.648    |wilkinson                   |john                                                 |NA-NA)                   |
|3.2437   |johnsen                     |h                                                    |NA-NA)                   |
|1.8286   |brathwait                   |richard                                              |1588-1673)               |
|4.652    |mountagu                    |zacheus                                              |NA-NA)                   |
|1.8287   |douch                       |john                                                 |1623-1623)               |
|320.5    |warwell                     |james                                                |1663-1663)               |
|3.2446   |norwood                     |anthony                                              |NA-NA)                   |
|3.2449   |barton                      |william                                              |1598-1678)               |
|1.8291   |price                       |william                                              |1666-1666)               |
|3.2453   |balzac                      |jean-louis guez                                      |1597-1654)               |
|1.8297   |bagshaw                     |edward                                               |1629-1671)               |
|3.2460   |lupton                      |donald                                               |1676-1676)               |
|3.2463   |bayly                       |thomas                                               |1657-1657)               |
|3.2464   |foster                      |nicholas                                             |NA-NA)                   |
|4.655    |skinner                     |john                                                 |1624-1624)               |
|4.657    |homes                       |nathanael                                            |1599-1678)               |
|3.2472   |baron                       |george                                               |1652-1652)               |
|4.660    |london                      |william                                              |1658-1658)               |
|3.2473   |spry                        |robert                                               |NA-NA)                   |
|4.666    |saumaise                    |claude                                               |1588-1653)               |
|4.667    |fletcher                    |giles                                                |1549-1611)               |
|3.2483   |blois                       |w                                                    |NA-NA)                   |
|3.2489   |boteler                     |edward                                               |1670-1670)               |
|3.2492   |doughty                     |john                                                 |1598-1672)               |
|10.398   |rhodes                      |simon                                                |NA-NA)                   |
|10.400   |strickland                  |john                                                 |1601-1670)               |
|1.8318   |behr                        |hans                                                 |NA-NA)                   |
|1.8325   |essex                       |robert devereaux                                     |1591-1646)               |
|1.8327   |cole                        |william                                              |1653-1653)               |
|1.8330   |shepard                     |thomas                                               |1605-1649)               |
|1.8332   |fary                        |john                                                 |NA-NA)                   |
|3.2498   |clerke                      |gilbert                                              |1626-1697)               |
|3.2499   |dauncey                     |john                                                 |1633-1633)               |
|5.890    |NA (1665-1714)              |NA                                                   |NA                       |
|1.8339   |scudder                     |henry                                                |1659-1659)               |
|1.8346   |church                      |thomas                                               |1639-1718)               |
|1.8349   |bridges                     |w                                                    |1600-1670)               |
|4.673    |besongne                    |nicolas                                              |1697-1697)               |
|1.8357   |ince                        |peter                                                |1615-1615)               |
|3.2502   |mitton                      |peter                                                |NA-NA)                   |
|3.2503   |barnett                     |nehemiah                                             |1615-1615)               |
|10.416   |newton                      |william                                              |NA-NA)                   |
|5.914    |bulmer                      |john                                                 |NA-NA)                   |
|3.2511   |malpas                      |thomas                                               |NA-NA)                   |
|6.1782   |belcamp                     |jo v                                                 |NA-NA)                   |
|6.1783   |bagwell                     |william                                              |1593-1593)               |
|6.1784   |appleton                    |henry                                                |1650-1654)               |
|10.419   |chidley                     |katherine                                            |NA-NA)                   |
|6.1793   |knightley                   |alexander                                            |1696-1696)               |
|5.991    |tustin                      |john                                                 |NA-NA)                   |
|1.8368   |smith                       |r                                                    |NA-NA)                   |
|5.1013   |lilburne                    |elizabeth                                            |NA-NA)                   |
|5.1022   |leicester                   |john                                                 |NA-NA)                   |
|5.1023   |browne                      |george                                               |NA-NA)                   |
|5.1035   |brinkelow                   |henry                                                |1546-1546)               |
|5.1037   |cleveland                   |john                                                 |1613-1658)               |
|5.1045   |cooke                       |francis                                              |1682-1682)               |
|5.1052   |hunscot                     |joseph                                               |NA-NA)                   |
|5.1053   |gayer                       |john                                                 |1649-1649)               |
|10.464   |riders                      |thomas                                               |NA-NA)                   |
|5.1118   |mason                       |martin                                               |1650-1676)               |
|5.1127   |crisp                       |nicholas                                             |NA-NA)                   |
|5.1131   |rolph                       |edmund                                               |NA-NA)                   |
|5.1149   |avaux                       |jean-antoine de mesmes                               |1640-1709)               |
|5.1154   |frierson                    |henry                                                |NA-NA)                   |
|1.8386   |gaujac                      |peter gally de                                       |NA-NA)                   |
|5.1191   |brome                       |alexander                                            |1620-1666)               |
|5.1193   |clark                       |robert                                               |NA-NA)                   |
|5.1206   |newton                      |francis                                              |NA-NA)                   |
|5.1214   |warner                      |john                                                 |NA-NA)                   |
|3.2513   |gavin                       |antonio                                              |1726-1726)               |
|5.1279   |campion                     |robert                                               |NA-NA)                   |
|10.514   |johnstoun                   |arch                                                 |NA-NA)                   |
|5.1310   |jenkes                      |edward                                               |NA-NA)                   |
|5.1324   |cudworth                    |ralph                                                |1617-1688)               |
|6.1815   |turner                      |robert                                               |1654-1665)               |
|5.1327   |stoyte                      |edward                                               |1619-1619)               |
|5.1328   |robotham                    |charles                                              |1626-1700)               |
|5.1333   |coldwell                    |william                                              |1624-1702)               |
|5.1337   |bagge                       |william                                              |1622-1657)               |
|5.1365   |chetwind                    |philip                                               |NA-NA)                   |
|5.1369   |fell                        |margaret                                             |1614-1702)               |
|10.552   |truelove                    |richard                                              |NA-NA)                   |
|5.1379   |seaman                      |lazarus                                              |1675-1675)               |
|5.1390   |kilburne                    |william                                              |NA-NA)                   |
|5.1400   |sares                       |john                                                 |1651-1651)               |
|5.1416   |griffith                    |john                                                 |1648-1659)               |
|5.1418   |hardress                    |waller                                               |1604-1666)               |
|5.1424   |goodman                     |godfrey                                              |1583-1656)               |
|5.1430   |lockyer                     |lionel                                               |1600-1672)               |
|10.588   |mʹendez de haro             |luis                                                 |1598-1661)               |
|5.1491   |kiffin                      |william                                              |1616-1701)               |
|10.624   |willis                      |ralph                                                |1653-1653)               |
|5.1527   |richardson                  |thomas                                               |NA-NA)                   |
|5.1571   |fletcher                    |robert                                               |NA-NA)                   |
|5.1575   |bard                        |w                                                    |NA-NA)                   |
|10.644   |yolkney                     |walter                                               |NA-NA)                   |
|5.1589   |williams                    |alexander                                            |1642-1642)               |
|5.1624   |richards                    |nathaniel                                            |1611-1660)               |
|5.1630   |williams                    |oliver                                               |1657-1670)               |
|10.677   |bosevile                    |thomas                                               |NA-NA)                   |
|10.679   |paget                       |william                                              |1609-1678)               |
|5.1674   |huntley                     |lewis gordon                                         |1653-1653)               |
|5.1675   |smyth                       |anne                                                 |NA-NA)                   |
|5.1679   |poyntz                      |john                                                 |1647-1650)               |
|5.1686   |tuttell                     |richard                                              |NA-NA)                   |
|5.1687   |vassall                     |samuel                                               |1586-1667)               |
|5.1692   |caddy                       |william                                              |NA-NA)                   |
|5.1702   |philpot                     |thomas                                               |NA-NA)                   |
|5.1706   |dendy                       |edward                                               |NA-NA)                   |
|10.688   |NA ( 466- 511)              |NA                                                   |NA                       |
|5.1708   |rupert                      |count palatine                                       |1619-1682)               |
|5.1713   |barker                      |john                                                 |1708-1748)               |
|5.1715   |starbuck                    |william                                              |NA-NA)                   |
|1.8413   |hudson                      |samuel                                               |NA-NA)                   |
|1.8414   |enniskillen                 |connor maguire                                       |1616-1645)               |
|5.1743   |harbotle                    |henry                                                |NA-NA)                   |
|5.1759   |sanders                     |john                                                 |1700-1700)               |
|5.1779   |bacon                       |nathaniel                                            |1593-1660)               |
|5.1794   |hollar                      |wenceslaus                                           |1607-1677)               |
|1.8434   |charleton                   |job                                                  |1614-1697)               |
|5.1810   |waersegger                  |abraham                                              |NA-NA)                   |
|1.8439   |purefoy                     |george                                               |NA-NA)                   |
|1.8446   |NA (1645-1645)              |NA                                                   |NA                       |
|5.1830   |herbert of cherbury         |edward                                               |1633-1678)               |
|1.8453   |innes                       |james                                                |NA-NA)                   |
|1.8456   |vaughan                     |charles                                              |NA-NA)                   |
|5.1849   |hatton                      |elizabeth                                            |1578-1646)               |
|5.1856   |bulwarke                    |william                                              |NA-NA)                   |
|1.8474   |jemmat                      |william                                              |1596-1678)               |
|1.8481   |herle                       |charles                                              |1598-1659)               |
|5.1871   |gosling                     |william                                              |NA-NA)                   |
|1.8490   |chadlicot                   |thomas                                               |NA-NA)                   |
|1.8494   |hales                       |edward                                               |1576-1654)               |
|5.1874   |harington                   |henry                                                |1642-1642)               |
|1.8522   |sedgwick                    |obadiah                                              |1600-1658)               |
|1.8532   |boate                       |arnold                                               |1600-1653)               |
|1.8544   |fin                         |charles de                                           |NA-NA)                   |
|1.8547   |harcourt                    |simon                                                |1603-1642)               |
|1.8560   |norcroft                    |john                                                 |NA-NA)                   |
|1.8584   |ocane                       |donell                                               |NA-NA)                   |
|1.8603   |stair                       |james dalrymple                                      |1619-1695)               |
|1.8607   |knight                      |william                                              |1680-1699)               |
|1.8617   |andrews                     |edward                                               |1642-1642)               |
|1.8618   |brooke                      |samuel                                               |1631-1631)               |
|6.1851   |brunskell                   |percival                                             |NA-NA)                   |
|6.1858   |camões                      |luís de                                              |1524-1580)               |
|5.1906   |orford                      |edward russell                                       |1653-1727)               |
|5.1914   |gogor                       |william                                              |1681-1681)               |
|5.1915   |gower                       |humphrey                                             |1638-1711)               |
|1.8642   |white                       |ignatius                                             |NA-NA)                   |
|4.685    |astell                      |mary                                                 |1668-1731)               |
|1.8648   |lane                        |john                                                 |NA-NA)                   |
|10.768   |fage                        |robert                                               |NA-NA)                   |
|5.1933   |rutland                     |john manners                                         |1604-1679)               |
|1.8655   |lombard                     |andré                                                |NA-NA)                   |
|1.8658   |fortescue                   |anthony                                              |NA-NA)                   |
|5.1938   |good                        |thomas                                               |1609-1678)               |
|1.8672   |mullinax                    |john                                                 |NA-NA)                   |
|3.2532   |english gentleman           |the court of the king of great britain               |NA-NA)                   |
|1.8676   |renwick                     |james                                                |1662-1688)               |
|3.2534   |rowlandson                  |mary white                                           |1678-1678)               |
|5.1947   |blagrave                    |charles                                              |NA-NA)                   |
|1.8689   |whitehead                   |john                                                 |1630-1696)               |
|4.687    |bundy                       |john                                                 |NA-NA)                   |
|3.2536   |mayhew                      |matthew                                              |1648-1710)               |
|10.792   |cosin                       |john                                                 |1594-1672)               |
|1.8701   |millington                  |edward                                               |1703-1703)               |
|5.1974   |eliot                       |george                                               |NA-NA)                   |
|5.1976   |NA (1642-1693)              |NA                                                   |NA                       |
|6.1904   |carew                       |george                                               |NA-NA)                   |
|5.1978   |richards                    |james                                                |1685-1685)               |
|1.8721   |cole                        |william                                              |1616-1698)               |
|1.8723   |conring                     |hermann                                              |1606-1681)               |
|1.8724   |cooke                       |edward                                               |1658-1670)               |
|3.2541   |dickinson                   |jonathan                                             |1663-1722)               |
|3.2542   |docwra                      |anne                                                 |1624-1710)               |
|6.1909   |atholl                      |john murray                                          |1660-1724)               |
|1.8737   |norton                      |edward                                               |1641-1641)               |
|1.8742   |foulis                      |henry                                                |1608-1643)               |
|5.1992   |magrath                     |james                                                |NA-NA)                   |
|6.1913   |browne                      |john                                                 |1700-1700)               |
|3.2546   |fletcher                    |henry                                                |NA-NA)                   |
|6.1916   |dyer                        |william                                              |NA-NA)                   |
|9.102    |thompson                    |henry                                                |NA-NA)                   |
|3.2548   |feyens                      |jean                                                 |1585-1585)               |
|5.2002   |guillims                    |george                                               |NA-NA)                   |
|10.839   |NA (1533-1603)              |NA                                                   |NA                       |
|10.843   |williams                    |roger                                                |???NA-NA)                |
|1.8776   |gardener                    |henry                                                |1629-1629)               |
|5.2026   |geōrgarinēs                   |iōsēph                                                 |NA-NA)                   |
|3.2553   |beauvais                    |charles de                                           |NA-NA)                   |
|1.8791   |hamilton                    |frederick                                            |1590-1647)               |
|1.8795   |greene                      |thomas                                               |1634-1699)               |
|1.8797   |greenway                    |r                                                    |NA-NA)                   |
|1.8802   |de la march                 |john                                                 |1589-1651)               |
|1.8803   |du moulin                   |louis                                                |NA-NA)                   |
|1.8804   |le grosse                   |robert                                               |NA-NA)                   |
|3.2554   |leslie                      |william lewis                                        |NA-NA)                   |
|1.8807   |knell                       |paul                                                 |1615-1664)               |
|6.1941   |sidney                      |algernon                                             |1622-1683)               |
|4.706    |de laune                    |thomas                                               |1685-1685)               |
|1.8826   |draper                      |robert                                               |1659-1659)               |
|1.8827   |dugard                      |william                                              |1606-1662)               |
|1.8834   |harby                       |thomas                                               |NA-NA)                   |
|3.2558   |nye                         |stephen                                              |1648-1719)               |
|1.8840   |jenney                      |henry                                                |1608-1608)               |
|3.2561   |love                        |jeremiah                                             |NA-NA)                   |
|1.8842   |love                        |john                                                 |1721-1721)               |
|6.1948   |rycaut                      |paul                                                 |1628-1628)               |
|3.2562   |rochefoucauld               |françois                                             |1613-1680)               |
|1.8843   |leith                       |patrick                                              |1647-1647)               |
|1.8845   |mascall                     |william                                              |NA-NA)                   |
|1.8852   |heblethwaite                |robert                                               |1648-1648)               |
|1.8855   |hedworth                    |john                                                 |NA-NA)                   |
|1.8856   |elmeston                    |john                                                 |NA-NA)                   |
|1.8857   |lloyd                       |lodowick                                             |1573-1610)               |
|15.119   |NA (1503-1566)              |NA                                                   |NA                       |
|6.1961   |ramsay                      |thomas                                               |1631-1631)               |
|1.8867   |jacob                       |john                                                 |1598-1666)               |
|5.2048   |taubman                     |matthew                                              |1690-1690)               |
|21.2     |kilburne                    |richard                                              |1605-1678)               |
|1.8878   |knaggs                      |thomas                                               |1661-1724)               |
|3.2575   |kuhlmann                    |quirin                                               |1651-1689)               |
|5.2052   |crewe                       |nathaniel                                            |1633-1721)               |
|1.8889   |palmer                      |john                                                 |1650-1700)               |
|1.8891   |harold                      |thomas                                               |NA-NA)                   |
|3.2579   |raymond                     |george                                               |NA-NA)                   |
|4.715    |sheppard                    |william                                              |1675-1675)               |
|6.1972   |NA (1596-1667)              |NA                                                   |NA                       |
|3.2583   |pontier                     |gédéon                                                 |1709-1709)               |
|6.1977   |marsham                     |john                                                 |1602-1685)               |
|1.8910   |ross                        |alexander                                            |1647-1720)               |
|3.2585   |mingzeis                    |alexander                                            |NA-NA)                   |
|3.2586   |newcome                     |henry                                                |1627-1695)               |
|1.8913   |norton                      |andrew                                               |NA-NA)                   |
|3.2590   |robertson                   |john                                                 |NA-NA)                   |
|4.719    |yonge                       |james                                                |1647-1721)               |
|4.720    |young                       |robert                                               |1674-1674)               |
|1.8933   |rogers                      |thomas                                               |1616-1616)               |
|3.2591   |ruthven                     |patrick                                              |1566-1566)               |
|5.2070   |morley                      |thomas                                               |1689-1689)               |
|5.2074   |penruddock                  |arundell                                             |NA-NA)                   |
|4.721    |phillippes                  |henry                                                |1677-1677)               |
|1.8944   |farmer                      |ralph                                                |NA-NA)                   |
|5.2076   |fox                         |margaret askew fell                                  |1614-1702)               |
|10.867   |fisher                      |abigail                                              |NA-NA)                   |
|1.8947   |gibson                      |thomas                                               |NA-NA)                   |
|4.722    |waller                      |william                                              |1699-1699)               |
|5.2079   |wallis                      |john                                                 |1616-1703)               |
|5.2089   |scamler                     |robert                                               |1654-1654)               |
|5.2092   |percy                       |james                                                |1619-1690)               |
|4.724    |scobell                     |henry                                                |1660-1660)               |
|1.8984   |hill                        |oliver                                               |NA-NA)                   |
|4.728    |petto                       |samuel                                               |1624-1711)               |
|1.8992   |noddel                      |daniel                                               |NA-NA)                   |
|1.8996   |vaux                        |anthony                                              |NA-NA)                   |
|10.876   |sydenham                    |william                                              |1738-1738)               |
|1.8998   |tenison                     |thomas                                               |1636-1715)               |
|6.1999   |neale                       |thomas                                               |1699-1699)               |
|6.2000   |tonge                       |ezerel                                               |1621-1680)               |
|1.9024   |westfield                   |thomas                                               |1573-1644)               |
|1.9025   |ponteus                     |john                                                 |NA-NA)                   |
|10.882   |prynne                      |william                                              |1660-1669)               |
|6.2004   |van laitz                   |w                                                    |NA-NA)                   |
|1.9040   |robinson                    |john                                                 |1672-1672)               |
|258.79   |rocket                      |john                                                 |NA-NA)                   |
|4.740    |tomkins                     |john                                                 |1663-1706)               |
|6.2006   |russell                     |james                                                |NA-NA)                   |
|6.2011   |hutchinson                  |william                                              |active 1676-1679)        |
|3.2611   |jackson                     |joseph                                               |1702-1702)               |
|1.9062   |jerome                      |stephen                                              |1604-1650)               |
|1.9063   |wotton                      |henry                                                |1568-1639)               |
|5.2125   |griffin                     |lewis                                                |NA-NA)                   |
|10.887   |chamberlain                 |robert                                               |1607-1607)               |
|6.2012   |staley                      |william                                              |1678-1678)               |
|1.9074   |money                       |william                                              |NA-NA)                   |
|5.2148   |lindsey                     |major                                                |NA-NA)                   |
|1.9085   |portington                  |henry                                                |NA-NA)                   |
|4.745    |philipps                    |edward                                               |1630-1696)               |
|1.9125   |thomson                     |r                                                    |NA-NA)                   |
|5.2169   |wentworth                   |william                                              |1685-1685)               |
|4.748    |ken                         |thomas                                               |1637-1711)               |
|1.9139   |willis                      |thomas                                               |1652-1701)               |
|3.2622   |wiltens                     |nikolaas                                             |NA-NA)                   |
|6.2027   |woodroffe                   |benjamin                                             |1638-1711)               |
|1.9156   |hewlett                     |james                                                |1645-1645)               |
|208.39   |mills                       |thomas                                               |NA-NA)                   |
|3.2625   |consett                     |henry                                                |NA-NA)                   |
|3.2626   |cornwallis                  |charles                                              |1629-1629)               |
|3.2631   |pora                        |charles                                              |NA-NA)                   |
|4.750    |smithurst                   |benjamine                                            |NA-NA)                   |
|1.9173   |flower                      |john                                                 |1624-1624)               |
|208.40   |pugh                        |robert                                               |1609-1679)               |
|1.9195   |price                       |john                                                 |1502-1555)               |
|1.9196   |stanhope                    |george                                               |1660-1728)               |
|5.2182   |starhemberg                 |guidobald                                            |1657-1737)               |
|1.9197   |stearne                     |john                                                 |1660-1745)               |
|6.2036   |wilson                      |john                                                 |1626-1696)               |
|1.9201   |stocall                     |james                                                |NA-NA)                   |
|3.2642   |tarlton                     |john                                                 |NA-NA)                   |
|10.926   |weston                      |charles                                              |NA-NA)                   |
|6.2049   |turberville                 |edward                                               |1648-1681)               |
|1.9255   |budd                        |thomas                                               |1698-1698)               |
|1.9261   |walby                       |anthony                                              |NA-NA)                   |
|10.938   |fingall                     |luke plunkett                                        |1684-1684)               |
|1.9285   |lee                         |obadiah                                              |1637-1700)               |
|5.2209   |hamiltoun                   |alexander                                            |NA-NA)                   |
|5.2210   |knowles                     |tobias                                               |NA-NA)                   |
|5.2218   |derby                       |charles stanley                                      |1628-1672)               |
|10.965   |derby                       |william george richard stanley                       |1655-1702)               |
|4.769    |graile                      |edmond                                               |1577-1577)               |
|1.9368   |gardiner                    |robert                                               |1649-1649)               |
|4.770    |NA (1705-1705)              |NA                                                   |NA                       |
|3.2663   |groeneveldt                 |jan                                                  |1647-1710)               |
|3.2664   |grybius                     |johannes                                             |NA-NA)                   |
|1.9373   |ryck                        |de                                                   |NA-NA)                   |
|6.2196   |crécy                       |louis verjus                                         |1629-1709)               |
|10.989   |wollrich                    |humphry                                              |1633-1707)               |
|10.990   |printall                    |henry                                                |NA-NA)                   |
|10.1002  |case                        |w                                                    |NA-NA)                   |
|25.16    |maynard                     |john                                                 |1592-1658)               |
|5.2304   |knight                      |john                                                 |1718-1718)               |
|5.2307   |griebe                      |conrade                                              |NA-NA)                   |
|1.9470   |wall                        |samuel                                               |NA-NA)                   |
|1.9477   |bond                        |sampson                                              |1618-1618)               |
|5.2352   |hamilton                    |robert                                               |1650-1701)               |
|5.2381   |hamilton                    |james douglas                                        |1658-1712)               |
|1.9492   |badiley                     |richard                                              |1657-1657)               |
|1.9493   |rowe                        |matthew                                              |NA-NA)                   |
|10.1156  |ayscue                      |george                                               |1646-1671)               |
|3.2689   |bradley                     |thomas                                               |1597-1670)               |
|3.2691   |wotton                      |william                                              |1666-1727)               |
|1.9537   |parr                        |richard                                              |1617-1691)               |
|5.2429   |allen                       |john                                                 |???NA-NA)                |
|3.2695   |saunders                    |richard                                              |1613-1675)               |
|6.2247   |bland                       |john                                                 |NA-NA)                   |
|1.9539   |brookes                     |william                                              |NA-NA)                   |
|5.2432   |fitz-gerald                 |maurice                                              |NA-NA)                   |
|5.2434   |colledge                    |stephen                                              |1635-1681)               |
|1.9552   |petter                      |john                                                 |1662-1700)               |
|3.2701   |bilain                      |antoine                                              |1672-1672)               |
|5.2447   |marchmont                   |patrick hume                                         |1641-1724)               |
|1.9561   |griffyth                    |w                                                    |NA-NA)                   |
|3.2703   |russell                     |john                                                 |1660-1660)               |
|1.9562   |warwick                     |philip                                               |1609-1683)               |
|6.2252   |white                       |samuel                                               |1650-1689)               |
|5.2456   |howard of escrick           |william                                              |1626-1694)               |
|3.2708   |scottow                     |joshua                                               |1618-1698)               |
|5.2461   |bold                        |henry                                                |1627-1683)               |
|1.9574   |foy                         |nathaniel                                            |1707-1707)               |
|3.2710   |stafford                    |john                                                 |NA-NA)                   |
|1.9588   |prideaux                    |john                                                 |1578-1650)               |
|3.2715   |polwheile                   |theophilus                                           |1689-1689)               |
|6.2257   |pontis                      |louis                                                |1583-1670)               |
|1.9591   |reeve                       |thomas                                               |1594-1672)               |
|1.9610   |scott                       |john                                                 |1639-1695)               |
|1.9614   |wyndham                     |anne                                                 |NA-NA)                   |
|1.9615   |wyndham                     |edmond                                               |NA-NA)                   |
|1.9617   |yarranton                   |andrew                                               |1616-1684)               |
|1.9625   |bromwich                    |isaac                                                |NA-NA)                   |
|3.2722   |ferrarius                   |gulielmus                                            |NA-NA)                   |
|3.2723   |higgons                     |thomas                                               |1624-1691)               |
|3.2724   |hill                        |samuel                                               |1648-1716)               |
|1.9639   |rowe                        |robert                                               |NA-NA)                   |
|1.9645   |stoughton                   |william                                              |1584-1584)               |
|3.2730   |swinnock                    |george                                               |1627-1673)               |
|3.2732   |varet                       |alexandre-louis                                      |1632-1676)               |
|5.2475   |freeman                     |elizabeth                                            |NA-NA)                   |
|1.9655   |burd                        |richard                                              |NA-NA)                   |
|1.9656   |courten                     |william                                              |1642-1702)               |
|5.2480   |franklin                    |william                                              |1731-1813)               |
|15.159   |gill                        |george                                               |NA-NA)                   |
|1.9661   |goddard                     |ezekiel                                              |NA-NA)                   |
|5.2489   |tour                        |filliberto sallier de                                |NA-NA)                   |
|15.160   |miles                       |abraham                                              |NA-NA)                   |
|1.9670   |moseley                     |humphrey                                             |1661-1661)               |
|6.2279   |ness                        |christopher                                          |1621-1705)               |
|6.2280   |pett                        |peter                                                |1630-1699)               |
|5.2504   |pierson                     |t                                                    |NA-NA)                   |
|15.166   |poyntz                      |john                                                 |1606-1606)               |
|6.2284   |tavernier                   |jean-baptiste                                        |1605-1689)               |
|3.2748   |NA (1610-1693)              |NA                                                   |NA                       |
|3.2749   |watson                      |john                                                 |1597-1597)               |
|1.9674   |willes                      |john                                                 |1647-1700)               |
|1.9679   |baston                      |samuel                                               |NA-NA)                   |
|1.9697   |eyre                        |william                                              |NA-NA)                   |
|6.2298   |christian                   |edward                                               |NA-NA)                   |
|258.108  |claridge                    |richard                                              |1649-1723)               |
|1.9707   |clement                     |simon                                                |NA-NA)                   |
|1.9714   |borfet                      |abiel                                                |NA-NA)                   |
|10.1311  |NA (1656-1656)              |NA                                                   |NA                       |
|15.176   |bromley                     |richard                                              |NA-NA)                   |
|1.9736   |duckett                     |thomas                                               |NA-NA)                   |
|6.2310   |eames                       |john                                                 |NA-NA)                   |
|5.2538   |lloyd                       |thomas                                               |1689-1689)               |
|6.2311   |jones                       |james                                                |1683-1684)               |
|10.1369  |killigrew                   |william                                              |1606-1695)               |
|6.2313   |leech                       |benjamin                                             |NA-NA)                   |
|6.2318   |NA (1727-1727)              |NA                                                   |NA                       |
|6.2326   |mathew                      |john                                                 |NA-NA)                   |
|1.9765   |baudouin                    |françois                                              |1520-1573)               |
|1.9771   |owen                        |david                                                |1623-1623)               |
|5.2583   |etherege                    |george                                               |1635-1691)               |
|6.2332   |keble                       |samuel                                               |NA-NA)                   |
|5.2587   |huddleston                  |ferdinando                                           |NA-NA)                   |
|1.9786   |maplet                      |john                                                 |1592-1592)               |
|1.9789   |silvester                   |john                                                 |NA-NA)                   |
|1.9793   |blake                       |james                                                |1649-1728)               |
|5.2601   |brady                       |nicholas                                             |1659-1726)               |
|1.9795   |st nichlas                  |thomas                                               |NA-NA)                   |
|15.279   |brooke                      |humphrey                                             |1617-1693)               |
|1.9796   |burnett                     |andrew                                               |NA-NA)                   |
|6.2354   |cock                        |charles george                                       |NA-NA)                   |
|1.9800   |burlington                  |richard boyle                                        |1612-1698)               |
|1.9803   |elborough                   |robert                                               |NA-NA)                   |
|1.9806   |ford                        |richard                                              |1678-1678)               |
|1.9807   |slingsby                    |henry                                                |1602-1658)               |
|1.9814   |goodaire                    |thomas                                               |1693-1693)               |
|1.9816   |brome                       |james                                                |1719-1719)               |
|1.9829   |spencer                     |thomas                                               |NA-NA)                   |
|6.2366   |monluc                      |blaise                                               |1500-1577)               |
|10.1464  |crane                       |richard                                              |1659-1665)               |
|6.2368   |croke                       |richard                                              |NA-NA)                   |
|1.9843   |mornay                      |philippe de                                          |1549-1623)               |
|15.286   |erroll                      |john hay                                             |NA-NA)                   |
|1.9848   |fowler                      |robert                                               |NA-NA)                   |
|1.9851   |taylor                      |zachary                                              |1653-1705)               |
|6.2375   |trinder                     |charles                                              |NA-NA)                   |
|4.832    |hyde                        |edward                                               |1607-1659)               |
|3.2788   |marguerite                  |queen consort of henry iv king of france             |1553-1615)               |
|1.9864   |pullen                      |tobias                                               |1648-1713)               |
|15.294   |purnell                     |robert                                               |1666-1666)               |
|2.9      |colbert                     |jean baptiste                                        |1619-1683)               |
|1.9870   |lyford                      |william                                              |1598-1653)               |
|1.9887   |wilson                      |timothy                                              |1642-1705)               |
|1.9888   |thomas                      |dalby                                                |NA-NA)                   |
|3.2794   |tillam                      |thomas                                               |NA-NA)                   |
|1.9900   |washbourne                  |thomas                                               |1606-1687)               |
|3.2796   |welles                      |john                                                 |NA-NA)                   |
|1.9905   |welchman                    |edward                                               |1665-1739)               |
|5.2644   |bagaley                     |humphrey                                             |NA-NA)                   |
|1.9908   |bakewell                    |thomas                                               |1619-1619)               |
|334      |berault                     |peter                                                |NA-NA)                   |
|1.9918   |graevius                    |joannes georgius                                     |1632-1703)               |
|3.2804   |cullen                      |francis grant                                        |1658-1726)               |
|1.9927   |turner                      |john                                                 |1650-1650)               |
|3.2806   |skene                       |alexander                                            |NA-NA)                   |
|6.2394   |macdonnel                   |alexander                                            |NA-NA)                   |
|3.2807   |huet                        |pierre-daniel                                        |1630-1721)               |
|1.9942   |lyngue                      |john                                                 |NA-NA)                   |
|3.2808   |le grand                    |antoine                                              |1699-1699)               |
|1.9947   |chaumont                    |alexandre                                            |1710-1710)               |
|1.9949   |hannes                      |edward                                               |1710-1710)               |
|1.9950   |hare                        |hugh                                                 |1668-1707)               |
|1.9951   |valkenburgh                 |johannes velmont van                                 |NA-NA)                   |
|25.18    |clark                       |henry                                                |NA-NA)                   |
|6.2421   |graves                      |edward                                               |1679-1679)               |
|1.9970   |googe                       |barnabe                                              |1540-1594)               |
|5.2685   |cotton                      |john                                                 |1640-1699)               |
|1.9971   |bullord                     |john                                                 |NA-NA)                   |
|1.9973   |rehakosht                   |p                                                    |NA-NA)                   |
|5.2696   |lowman                      |r                                                    |NA-NA)                   |
|5.2698   |poole                       |matthew                                              |1624-1679)               |
|6.2430   |townshend                   |hayward                                              |NA-NA)                   |
|5.2713   |bastwick                    |susanna                                              |NA-NA)                   |
|1.9984   |bathurst                    |charles                                              |1700-1700)               |
|15.373   |bennet                      |dorcas                                               |NA-NA)                   |
|1.9990   |coales                      |john                                                 |NA-NA)                   |
|3.2828   |glencairn                   |william cunningham                                   |1610-1664)               |
|1.10001  |willsford                   |john                                                 |NA-NA)                   |
|5.2724   |hales                       |edward                                               |1670-1690)               |
|1.10020  |crisp                       |stephen                                              |1628-1692)               |
|1.10035  |gearing                     |william                                              |NA-NA)                   |
|3.2838   |lambarde                    |william                                              |1536-1601)               |
|1.10041  |groby                       |thomas grey                                          |1623-1657)               |
|4.849    |norris                      |john                                                 |1657-1711)               |
|1.10052  |pugh                        |thomas                                               |NA-NA)                   |
|6.2452   |argyll                      |archibald campbell earl of                           |1629-1685)               |
|3.2848   |barbaro                     |francesco                                            |1398-1454)               |
|3.2849   |glanius                     |w                                                    |NA-NA)                   |
|15.400   |NA (1567-1622)              |NA                                                   |NA                       |
|1.10074  |holdsworth                  |richard                                              |1590-1649)               |
|1.10095  |shaftesbury                 |anthony ashly cooper                                 |1621-1683)               |
|5.2778   |mcgrigor                    |evan                                                 |NA-NA)                   |
|6.2475   |lloyd                       |richard                                              |1634-1686)               |
|10.1765  |white                       |l                                                    |NA-NA)                   |
|5.2816   |deane                       |john                                                 |NA-NA)                   |
|4.861    |conti                       |louise-marguerite de lorraine                        |1574-1631)               |
|10.1827  |butter                      |nathaniel                                            |1664-1664)               |
|313.102  |benlowes                    |edward                                               |1603-1676)               |
|10.1829  |murray                      |adam                                                 |1700-1700)               |
|5.2855   |cooper                      |edmund                                               |NA-NA)                   |
|5.2856   |quarles                     |john                                                 |1624-1665)               |
|5.2864   |rich                        |jeremiah                                             |1664-1664)               |
|1.10158  |devenish                    |thomas                                               |NA-NA)                   |
|3.2872   |gander                      |joseph                                               |NA-NA)                   |
|5.2886   |lacy                        |margaret                                             |NA-NA)                   |
|15.433   |sympson                     |thomas                                               |NA-NA)                   |
|1.10261  |hill                        |william                                              |1662-1662)               |
|1.10262  |whittington                 |john                                                 |NA-NA)                   |
|1.10263  |wendelin                    |marcus friedrich                                     |1584-1652)               |
|3.2892   |nisbet                      |william                                              |NA-NA)                   |
|6.2570   |lander                      |thomas                                               |NA-NA)                   |
|15.461   |nihell                      |james                                                |NA-NA)                   |
|3.2896   |labrune                     |jean de                                              |NA-NA)                   |
|1.10278  |gardiner                    |james                                                |NA-NA)                   |
|15.485   |hoffman                     |john                                                 |1602-1602)               |
|1.10286  |lenthall                    |john                                                 |NA-NA)                   |
|1.10287  |grenville                   |denis                                                |1637-1703)               |
|15.491   |machell                     |thomas                                               |NA-NA)                   |
|1.10289  |langrish                    |hercules                                             |NA-NA)                   |
|1.10296  |dudley                      |gamaliel                                             |NA-NA)                   |
|3.2902   |gott                        |samuel                                               |1613-1671)               |
|6.2577   |crawford                    |william lindsay                                      |1698-1698)               |
|4.873    |monipennie                  |john                                                 |NA-NA)                   |
|4.876    |rousseau de la valette      |michel                                               |NA-NA)                   |
|15.559   |rule                        |gilbert                                              |1629-1701)               |
|15.560   |seal                        |james                                                |NA-NA)                   |
|5.2986   |newcomb                     |thomas                                               |1691-1691)               |
|5.2987   |baldwin                     |d                                                    |NA-NA)                   |
|5.2989   |gormanston                  |anthony preston                                      |1716-1716)               |
|5.2990   |o'neill                     |frances                                              |NA-NA)                   |
|5.2991   |wray                        |christopher                                          |NA-NA)                   |
|5.2992   |limerick                    |thomas dungan                                        |1634-1715)               |
|6.2600   |domvile                     |thomas                                               |1650-1721)               |
|5.2999   |mulledy                     |alice                                                |NA-NA)                   |
|5.3003   |eustace                     |james                                                |NA-NA)                   |
|5.3012   |wharton                     |thomas                                               |1648-1715)               |
|5.3022   |pennecuik                   |alexander                                            |1652-1722)               |
|1.10383  |adrichem                    |christiaan van                                       |1533-1585)               |
|5.3053   |hamilton                    |elizabeth                                            |1620-1659)               |
|313.111  |elliot                      |john                                                 |NA-NA)                   |
|5.3054   |salmon                      |elizabeth                                            |NA-NA)                   |
|5.3055   |hampson                     |thomas                                               |1589-1655)               |
|4.881    |cailloüé                    |jean                                                 |NA-NA)                   |
|1.10388  |border                      |d                                                    |NA-NA)                   |
|1.10394  |lawmind                     |abraham                                              |NA-NA)                   |
|5.3063   |kerby                       |margaret                                             |NA-NA)                   |
|5.3064   |downes                      |john                                                 |1666-1666)               |
|5.3066   |odling                      |edward                                               |NA-NA)                   |
|3.2920   |scandrett                   |stephen                                              |1631-1706)               |
|1.10410  |drewrey                     |h                                                    |NA-NA)                   |
|1.10421  |munday                      |anthony                                              |1553-1633)               |
|5.3092   |burhams                     |john                                                 |NA-NA)                   |
|6.2644   |lothian                     |robert kerr                                          |1636-1703)               |
|6.2648   |NA (1610-1691)              |NA                                                   |NA                       |
|1.10462  |barlow                      |william                                              |1613-1613)               |
|1.10481  |delme                       |jean                                                 |NA-NA)                   |
|5.3127   |robinson                    |tancred                                              |1748-1748)               |
|1.10507  |hildyard                    |christopher                                          |1615-1694)               |
|5.3130   |lane                        |thomas                                               |1652-1709)               |
|320.9    |leslie                      |john                                                 |1527-1596)               |
|1.10533  |cassini                     |giovanni domenico                                    |1625-1712)               |
|1.10542  |NA (1698-1698)              |NA                                                   |NA                       |
|1.10545  |harr                        |jo                                                   |NA-NA)                   |
|10.2051  |davis                       |nicolas                                              |NA-NA)                   |
|10.2063  |morton                      |robert                                               |1670-1670)               |
|5.3161   |read                        |william                                              |1715-1715)               |
|1.10636  |williams                    |reeve                                                |NA-NA)                   |
|3.2945   |bruzeau                     |paul                                                 |NA-NA)                   |
|1.10658  |lockhart                    |george                                               |1683-1683)               |
|1.10665  |ducket                      |thomas                                               |NA-NA)                   |
|10.2077  |bendish                     |thomas                                               |1674-1674)               |
|5.3201   |teviot                      |thomas livingston                                    |1652-1711)               |
|6.2742   |winter                      |john                                                 |1600-1673)               |
|10.2097  |christian                   |william                                              |1608-1663)               |
|1.10734  |cox                         |benjamin                                             |1646-1646)               |
|1.10745  |farmer                      |samuel                                               |NA-NA)                   |
|5.3225   |west                        |robert                                               |1683-1683)               |
|3.2963   |correr                      |angelo                                               |1605-1678)               |
|5.3227   |tillotson                   |john                                                 |1630-1694)               |
|10.2109  |jones                       |j                                                    |NA-NA)                   |
|10.2110  |huggins                     |john                                                 |1693-1693)               |
|10.2122  |finch                       |john                                                 |1693-1693)               |
|10.2137  |massey                      |peter                                                |NA-NA)                   |
|5.3232   |martyn                      |richard                                              |NA-NA)                   |
|1.10776  |marshall                    |marmaduke                                            |NA-NA)                   |
|1.10783  |lambert                     |thomas                                               |1616-1694)               |
|6.2757   |hatt                        |martha arundel                                       |NA-NA)                   |
|5.3239   |hamilton                    |richard                                              |1717-1717)               |
|1.10798  |NA (1226-1286)              |NA                                                   |NA                       |
|10.2197  |cobb                        |william                                              |1628-1695)               |
|10.2198  |dutton                      |richard                                              |1694-1694)               |
|5.3248   |fleetwood                   |richard                                              |NA-NA)                   |
|5.3253   |schomberg                   |charles                                              |1645-1693)               |
|5.3261   |tart                        |john                                                 |NA-NA)                   |
|1.10817  |sanderson                   |john                                                 |NA-NA)                   |
|10.2217  |sibley                      |thomas                                               |NA-NA)                   |
|10.2243  |rigbey                      |richard                                              |NA-NA)                   |
|5.3274   |plot                        |robert                                               |1640-1696)               |
|5.3276   |loe                         |lawrence                                             |NA-NA)                   |
|5.3277   |parkhurst                   |ferdinando                                           |NA-NA)                   |
|307.3    |papillon                    |thomas                                               |1623-1702)               |
|9.154    |perkins                     |joseph                                               |1658-1658)               |
|3.2987   |wydows                      |daniel                                               |NA-NA)                   |
|5.3286   |wyat                        |devereux                                             |NA-NA)                   |
|5.3289   |wren                        |christopher                                          |1632-1723)               |
|3.2989   |woodcock                    |josiah                                               |NA-NA)                   |
|5.3291   |wood                        |p                                                    |NA-NA)                   |
|1.10848  |wine                        |richard                                              |NA-NA)                   |
|3.2993   |williamson                  |caesar                                               |1658-1662)               |
|1.10850  |williams                    |william                                              |1613-1613)               |
|1.10854  |wilson                      |john                                                 |???NA-NA)                |
|5.3310   |wilkinson                   |thomas                                               |NA-NA)                   |
|5.3311   |wilkinson                   |richard                                              |NA-NA)                   |
|1.10857  |whitfeld                    |raphe                                                |NA-NA)                   |
|9.156    |whally                      |henry                                                |NA-NA)                   |
|5.3319   |warner                      |john                                                 |1648-1648)               |
|1.10863  |wattes                      |jeremiah                                             |NA-NA)                   |
|3.2996   |luna                        |miguel de                                            |NA-NA)                   |
|1.10864  |warner                      |john                                                 |1628-1692)               |
|1.10865  |warner                      |eliz                                                 |NA-NA)                   |
|10.2276  |waite                       |thomas                                               |NA-NA)                   |
|3.2999   |wadsworth                   |james                                                |1572-1623)               |
|5.3320   |waddel                      |john                                                 |NA-NA)                   |
|5.3328   |NA (1666-1732)              |NA                                                   |NA                       |
|1.10883  |gogh                        |michiel van                                          |NA-NA)                   |
|5.3334   |vaughan                     |thomas                                               |1669-1696)               |
|3.3005   |tyso                        |john                                                 |1700-1700)               |
|1.10897  |turner                      |francis                                              |1638-1700)               |
|10.2285  |witherings                  |william                                              |NA-NA)                   |
|5.3348   |canning                     |william                                              |1686-1690)               |
|9.157    |treby                       |george                                               |1644-1700)               |
|5.3358   |tourville                   |anne-hilarion de cotentin                            |1642-1701)               |
|3.3007   |touchet                     |george                                               |1689-1689)               |
|10.2296  |brookbank                   |joseph                                               |1612-1612)               |
|1.10946  |evelyn                      |john                                                 |1655-1699)               |
|6.2790   |tilly                       |jean t'serclaes                                      |1559-1632)               |
|1.10956  |thompson                    |john of bingley                                      |NA-NA)                   |
|1.10961  |synge                       |francis                                              |NA-NA)                   |
|5.3410   |stubs                       |philip                                               |1665-1738)               |
|5.3412   |street                      |william                                              |NA-NA)                   |
|10.2325  |stewart                     |archibald                                            |NA-NA)                   |
|5.3420   |somers                      |nathan                                               |NA-NA)                   |
|5.3427   |snelling                    |thomas                                               |1712-1773)               |
|1.10983  |smith                       |stephen                                              |1623-1678)               |
|5.3428   |smith                       |richard                                              |1566-1655)               |
|3.3019   |smith                       |humphry                                              |NA-NA)                   |
|1.10991  |sibbald                     |james                                                |1590-1650)               |
|7.16     |gooday                      |george                                               |NA-NA)                   |
|1.10994  |crow                        |sackville                                            |1683-1683)               |
|5.3430   |culliford                   |william                                              |1698-1698)               |
|5.3432   |sherdley                    |r                                                    |NA-NA)                   |
|1.11000  |sheppard                    |william                                              |1724-1724)               |
|1.11001  |shaw                        |john                                                 |1614-1689)               |
|1.11013  |seller                      |abednego                                             |1646-1705)               |
|1.11015  |scultetus                   |abraham                                              |1566-1624)               |
|1.11019  |scarlet                     |philip                                               |1627-1685)               |
|5.3498   |savery                      |isaac                                                |NA-NA)                   |
|5.3499   |sandys                      |samuel                                               |NA-NA)                   |
|5.3501   |NA (1691-1691)              |NA                                                   |NA                       |
|10.2415  |sabrin                      |syl                                                  |NA-NA)                   |
|1.11023  |NA (1646-1646)              |NA                                                   |NA                       |
|10.2430  |pakington                   |john                                                 |1621-1680)               |
|1.11028  |russell                     |thomas                                               |1642-1642)               |
|5.3522   |rowland                     |t                                                    |NA-NA)                   |
|10.2432  |NA (1643-1643)              |NA                                                   |NA                       |
|6.2834   |rich                        |john                                                 |1661-1661)               |
|25.24    |rhodes                      |samuel                                               |NA-NA)                   |
|3.3030   |reynell                     |carew                                                |1636-1690)               |
|4.920    |reilly                      |hugh                                                 |1695-1695)               |
|10.2440  |reading                     |john                                                 |1588-1667)               |
|1.11038  |raynsford                   |john                                                 |NA-NA)                   |
|3.3031   |rayner                      |allen                                                |NA-NA)                   |
|10.2441  |hodges                      |richard                                              |1651-1651)               |
|1.11039  |ranson                      |william                                              |1644-1644)               |
|6.2839   |raleigh                     |walter sir                                           |1552-1618)               |
|1.11040  |rainton                     |e                                                    |NA-NA)                   |
|1.11041  |rabisha                     |william                                              |NA-NA)                   |
|1.11046  |puttock                     |richard                                              |NA-NA)                   |
|5.3566   |gould                       |ignatius                                             |NA-NA)                   |
|1.11052  |charnock                    |robert                                               |1696-1696)               |
|5.3569   |meese                       |elizabeth                                            |1697-1697)               |
|10.2459  |pollexfen                   |henry                                                |1632-1691)               |
|10.2460  |polden                      |morgan                                               |NA-NA)                   |
|1.11062  |pinhorne                    |henry                                                |NA-NA)                   |
|1.11065  |piggott                     |john                                                 |1713-1713)               |
|6.2846   |gissard                     |john                                                 |NA-NA)                   |
|15.597   |edwards                     |george                                               |1674-1674)               |
|5.3583   |pechell                     |richard                                              |NA-NA)                   |
|6.2850   |paton                       |george                                               |NA-NA)                   |
|5.3617   |north                       |j                                                    |NA-NA)                   |
|5.3620   |bassa                       |calvin                                               |NA-NA)                   |
|15.601   |moret                       |francois                                             |NA-NA)                   |
|10.2502  |morden                      |john                                                 |1623-1708)               |
|4.924    |NA (1650-1700)              |NA                                                   |NA                       |
|10.2504  |mitchel                     |edward                                               |1674-1674)               |
|10.2505  |prinn                       |john                                                 |NA-NA)                   |
|5.3629   |miles                       |john                                                 |1684-1684)               |
|5.3630   |middleton                   |charles                                              |1650-1719)               |
|6.2866   |mead                        |e                                                    |NA-NA)                   |
|3.3044   |marlow                      |isaac                                                |NA-NA)                   |
|5.3638   |mainwaring                  |randall                                              |NA-NA)                   |
|1.11121  |manlove                     |edward                                               |1667-1667)               |
|5.3644   |lynam                       |margaret                                             |1697-1697)               |
|10.2511  |long                        |richard                                              |NA-NA)                   |
|5.3652   |NA (1638-1715)              |NA                                                   |NA                       |
|5.3663   |lineall                     |john                                                 |NA-NA)                   |
|4.930    |lindsay                     |david                                                |1490-1555)               |
|1.11132  |limborch                    |philippus van                                        |1633-1712)               |
|3.3052   |NA (1470-1492)              |NA                                                   |NA                       |
|1.11134  |leyburn                     |george                                               |1593-1677)               |
|5.3678   |thököly                     |imre                                                 |1657-1705)               |
|4.933    |le ragois                   |claude                                               |NA-NA)                   |
|5.3694   |NA (1652-1688)              |NA                                                   |NA                       |
|1.11161  |kaye                        |william                                              |NA-NA)                   |
|1.11164  |killigrew                   |henry                                                |NA-NA)                   |
|1.11167  |ker                         |gilbert                                              |NA-NA)                   |
|1.11168  |jackson                     |richard                                              |1621-1671)               |
|1.11175  |jephson                     |michael                                              |NA-NA)                   |
|5.3706   |ronquillo                   |pedro                                                |1635-1635)               |
|1.11187  |NA (1615-1700)              |NA                                                   |NA                       |
|6.2900   |hamilton                    |basil                                                |1671-1701)               |
|1.11199  |ibeson                      |james                                                |NA-NA)                   |
|5.3725   |hyde                        |thomas                                               |1636-1703)               |
|5.3728   |houston                     |david                                                |NA-NA)                   |
|5.3729   |carstares                   |william                                              |1649-1715)               |
|3.3061   |houschone                   |william                                              |NA-NA)                   |
|9.176    |houghton                    |thomas                                               |NA-NA)                   |
|1.11214  |hiobey                      |william                                              |NA-NA)                   |
|1.11215  |holles                      |denzil holles baron                                  |NA-NA)                   |
|6.2919   |harris                      |benjamin                                             |1716-1716)               |
|3.3066   |mauger                      |claude                                               |NA-NA)                   |
|6.2921   |hartley                     |ralph                                                |NA-NA)                   |
|1.11232  |guthrie                     |john                                                 |1632-1669)               |
|5.3743   |gregory                     |robert                                               |NA-NA)                   |
|3.3071   |godwin                      |edmond                                               |NA-NA)                   |
|10.2683  |gardiner                    |james                                                |1637-1705)               |
|4.941    |gaetani                     |enrico                                               |1550-1599)               |
|1.11250  |glover                      |henry                                                |1625-1625)               |
|1.11251  |glover                      |habakkuk                                             |NA-NA)                   |
|5.3761   |rippon                      |thomas                                               |NA-NA)                   |
|5.3773   |cleveland                   |thomas wentworth                                     |1591-1667)               |
|1.11265  |flower                      |christopher                                          |NA-NA)                   |
|3.3074   |fisher                      |jo                                                   |NA-NA)                   |
|6.2938   |croft                       |herbert                                              |1603-1691)               |
|1.11308  |craford                     |thomas                                               |NA-NA)                   |
|77.14    |edgeworth                   |john                                                 |1700-1700)               |
|3.3080   |dordevic                    |bartolomej                                           |NA-NA)                   |
|1.11354  |dominick                    |andrew                                               |1614-1614)               |
|1.11360  |dawson                      |richard                                              |1698-1698)               |
|6.2976   |dalrymple                   |hew                                                  |1652-1737)               |
|5.3834   |bulkeley                    |lancelot                                             |1568-1650)               |
|5.3835   |bates                       |william                                              |1625-1699)               |
|1.11397  |archer                      |elias                                                |NA-NA)                   |
|5.3869   |graham                      |john                                                 |1648-1689)               |
|5.3870   |dundas                      |william                                              |NA-NA)                   |
|1.11484  |edmonds                     |hugh                                                 |NA-NA)                   |
|5.3881   |donne                       |john                                                 |1604-1662)               |
|5.3884   |lamplugh                    |thomas                                               |1615-1691)               |
|6.3021   |NA (1671-1671)              |NA                                                   |NA                       |
|1.11497  |deloney                     |thomas                                               |1543-1600)               |
|1.11503  |damon                       |william                                              |1642-1642)               |
|1.11504  |dakins                      |thomas                                               |NA-NA)                   |
|1.11506  |deacon                      |john                                                 |NA-NA)                   |
|5.3906   |clarton                     |f                                                    |NA-NA)                   |
|10.2773  |christian                   |philip                                               |NA-NA)                   |
|1.11538  |chesterfield                |philip stanhope                                      |1584-1656)               |
|3.3091   |l'estrange                  |hamon                                                |1583-1654)               |
|5.3928   |starkey                     |john                                                 |NA-NA)                   |
|5.3929   |hunt                        |william                                              |NA-NA)                   |
|10.2797  |thompson                    |thomas                                               |1698-1698)               |
|10.2799  |dorchester                  |catherine sedley                                     |1657-1717)               |
|6.3044   |macclesfield                |charles gerard                                       |1618-1694)               |
|5.3936   |leisler                     |jacob                                                |1691-1691)               |
|1.11581  |buxtorf                     |johann                                               |1564-1629)               |
|15.638   |jones                       |david                                                |active 1676-1720)        |
|1.11583  |stewart                     |james                                                |1635-1713)               |
|1.11589  |somner                      |john                                                 |NA-NA)                   |
|3.3097   |brémond                      |sébastien                                             |1645-1645)               |
|1.11592  |breedon                     |zacheus                                              |NA-NA)                   |
|10.2815  |moore of drogheda           |alice                                                |1649-1649)               |
|1.11600  |brague                      |thomas                                               |NA-NA)                   |
|5.3958   |borlace                     |nicholas                                             |NA-NA)                   |
|10.2818  |bishop                      |henry                                                |NA-NA)                   |
|9.186    |bew                         |thomas                                               |NA-NA)                   |
|1.11608  |beridge                     |john                                                 |NA-NA)                   |
|10.2822  |bellomont                   |richard coote                                        |1636-1701)               |
|10.2823  |beckman                     |martin                                               |1702-1702)               |
|1.11610  |sclater                     |william                                              |1609-1661)               |
|1.11631  |lee                         |richard                                              |1639-1678)               |
|4.968    |batchiler                   |john                                                 |1615-1674)               |
|1.11653  |ellis                       |humphrey                                             |1676-1676)               |
|1.11667  |d'assigny                   |samuel                                               |1674-1674)               |
|5.3991   |cunningham                  |james                                                |1697-1697)               |
|357      |crumby                      |alexander                                            |NA-NA)                   |
|3.3107   |craig                       |thomas                                               |1538-1608)               |
|10.2855  |couch                       |robert                                               |NA-NA)                   |
|9.195    |croom                       |george                                               |NA-NA)                   |
|358      |caus                        |isaac de                                             |1590-1648)               |
|10.2881  |caseley                     |samuel                                               |NA-NA)                   |
|10.2882  |crake                       |michael                                              |NA-NA)                   |
|10.2883  |darrell                     |marmaduke                                            |NA-NA)                   |
|5.4010   |clavell                     |edward                                               |1744-1744)               |
|5.4011   |burnet                      |gilbert bishop                                       |NA-NA)                   |
|1.11718  |carter                      |w                                                    |NA-NA)                   |
|4.973    |boyer                       |p                                                    |1700-1700)               |
|3.3109   |boyd                        |zacharie                                             |1585-1653)               |
|1.11724  |bonifield                   |abraham                                              |1692-1694)               |
|6.3084   |blight                      |francis                                              |NA-NA)                   |
|1.11727  |birchensha                  |john                                                 |1664-1672)               |
|131.9    |berault                     |pierre                                               |NA-NA)                   |
|3.3111   |beaulieu                    |luke                                                 |1645-1723)               |
|1.11731  |argyll                      |archibald campbell                                   |1629-1685)               |
|15.643   |green                       |christopher                                          |1691-1691)               |
|3.3114   |burroughs                   |cornelius                                            |NA-NA)                   |
|4.977    |bourk                       |john                                                 |NA-NA)                   |
|5.4033   |smith                       |samuel                                               |1620-1698)               |
|5.4040   |deane                       |richard                                              |1610-1653)               |
|1.11764  |waring                      |robert                                               |1614-1658)               |
|5.4050   |pelling                     |thomas                                               |1598-1598)               |
|5.4051   |southwell                   |robert                                               |1635-1702)               |
|15.663   |parry                       |william                                              |1585-1585)               |
|3.3121   |avant                       |philip                                               |1643-1643)               |
|5.4065   |craven                      |john                                                 |1690-1690)               |
|10.2937  |fitch                       |john                                                 |1698-1698)               |
|10.2938  |lingard                     |john                                                 |1695-1695)               |
|6.3115   |harris                      |john                                                 |1690-1690)               |
|10.2939  |osbolston                   |robert                                               |NA-NA)                   |
|10.2941  |hopkin                      |philip                                               |NA-NA)                   |
|10.2942  |kettle                      |elizabeth                                            |NA-NA)                   |
|10.2943  |townsend                    |edward                                               |NA-NA)                   |
|10.2945  |londonderry                 |robert ridgeway                                      |1656-1714)               |
|10.2946  |ford                        |henry                                                |1693-1693)               |
|10.2948  |northcote                   |william                                              |1648-1648)               |
|10.2949  |northcote                   |francis                                              |1659-1709)               |
|10.2950  |owen                        |philip                                               |1699-1699)               |
|10.2951  |saunders                    |robert                                               |1699-1699)               |
|10.2952  |peacock                     |thomas                                               |NA-NA)                   |
|5.4076   |spooner                     |henry                                                |1692-1692)               |
|5.4079   |saiers                      |giles                                                |NA-NA)                   |
|1.11865  |byard                       |george                                               |NA-NA)                   |
|5.4085   |vaughan                     |john                                                 |NA-NA)                   |
|5.4086   |underwood                   |robert                                               |1643-1648)               |
|1.11900  |hughes                      |lewes                                                |1620-1620)               |
|3.3136   |du bartas                   |guillaume de salluste                                |1544-1590)               |
|3.3137   |powel                       |joan                                                 |NA-NA)                   |
|1.11907  |nixon                       |anthony                                              |NA-NA)                   |
|3.3138   |lyte                        |henry                                                |1529-1607)               |
|3.3140   |rogers                      |john                                                 |active 1560-1580)        |
|1.11913  |sclater                     |william                                              |1575-1626)               |
|3.3141   |morison                     |thomas                                               |1558-1603)               |
|3.3143   |ursinus                     |zacharias                                            |1534-1583)               |
|3.3144   |avila y çuñiga                |luis de                                              |1500-1564)               |
|3.3145   |serres                      |jean de                                              |1540-1598)               |
|1.11924  |aske                        |james                                                |NA-NA)                   |
|1.11925  |ascham                      |roger                                                |1515-1568)               |
|3.3147   |NA (1543-1592)              |NA                                                   |NA                       |
|1.11934  |penry                       |john                                                 |1559-1593)               |
|1.11936  |stirling                    |william alexander                                    |1568-1640)               |
|4.994    |ryves                       |thomas                                               |1583-1652)               |
|3.3149   |baronio                     |cesare                                               |1538-1607)               |
|1.11941  |williams                    |roger                                                |1540-1595)               |
|3.3151   |stow                        |john                                                 |1525-1605)               |
|10.2978  |redman                      |william                                              |1602-1602)               |
|1.11947  |muriell                     |christopher                                          |NA-NA)                   |
|3.3154   |standish                    |john                                                 |1507-1570)               |
|3.3155   |shaw                        |john                                                 |1559-1625)               |
|1.11954  |windebank                   |francis                                              |1582-1646)               |
|4.995    |NA (1582-1582)              |NA                                                   |NA                       |
|3.3162   |proctor                     |john                                                 |1521-1584)               |
|3.3163   |barnaud                     |nicholas                                             |1539-1539)               |
|3.3164   |nichols                     |josias                                               |1555-1639)               |
|1.11962  |NA (1573-1642)              |NA                                                   |NA                       |
|3.3167   |granvelle                   |antoine perrenot de                                  |1517-1586)               |
|1.11968  |aureli                      |giovan battista                                      |1538-1597)               |
|3.3168   |renniger                    |michael                                              |1530-1609)               |
|3.3169   |rosdell                     |christopher                                          |1554-1554)               |
|10.2984  |tavernier                   |melchior                                             |1641-1641)               |
|1.11976  |scott                       |edmund                                               |NA-NA)                   |
|1.11978  |beroald                     |matthieu                                             |1576-1576)               |
|1.11979  |escalante                   |bernardino de                                        |NA-NA)                   |
|3.3170   |speed                       |joshua                                               |NA-NA)                   |
|1.11982  |valdés                       |alfonso de                                           |1532-1532)               |
|1.11983  |wilkins                     |george                                               |1607-1607)               |
|1.11984  |felice                      |costanzo                                             |NA-NA)                   |
|1.11991  |figueiro                    |vasco                                                |NA-NA)                   |
|1.11993  |hooker                      |john                                                 |1526-1601)               |
|1.11995  |whately                     |william                                              |1583-1639)               |
|1.11996  |goulart                     |simon                                                |1543-1628)               |
|3.3174   |colville                    |john                                                 |1542-1605)               |
|1.11999  |pole                        |reginald                                             |1500-1558)               |
|10.2985  |verslyn                     |francis                                              |NA-NA)                   |
|3.3176   |blackwood                   |adam                                                 |1539-1613)               |
|1.12009  |mansell                     |robert                                               |1569-1656)               |
|1.12012  |schomberg                   |henri de                                             |1575-1632)               |
|1.12016  |blenerhasset                |thomas                                               |NA-NA)                   |
|1.12017  |frégeville                  |jean de                                              |NA-NA)                   |
|1.12021  |rusdorf                     |johann joachim von                                   |1589-1640)               |
|1.12023  |fulwell                     |ulpian                                               |1586-1586)               |
|1.12026  |fulbecke                    |william                                              |1560-1603)               |
|5.4117   |droeshout                   |john                                                 |NA-NA)                   |
|1.12028  |neville                     |alexander                                            |1544-1614)               |
|1.12029  |NA (1612-1640)              |NA                                                   |NA                       |
|6.3361   |parker                      |matthew                                              |1504-1575)               |
|1.12031  |sempill                     |robert                                               |1530-1595)               |
|1.12039  |leslie                      |henry                                                |1580-1661)               |
|1.12040  |whittingham                 |william                                              |1579-1579)               |
|3.3178   |giovio                      |paolo                                                |1483-1552)               |
|1.12043  |glanville                   |john                                                 |1586-1661)               |
|1.12044  |godwin                      |francis                                              |1562-1633)               |
|3.3181   |ribaut                      |jean                                                 |1520-1565)               |
|3.3182   |newton                      |thomas                                               |1542-1607)               |
|1.12049  |scot                        |patrick                                              |NA-NA)                   |
|3.3183   |speed                       |john                                                 |1552-1629)               |
|3.3184   |NA (1555-1555)              |NA                                                   |NA                       |
|3.3185   |goodman                     |christopher                                          |1520-1603)               |
|1.12052  |trigge                      |francis                                              |1547-1606)               |
|1.12053  |huntly                      |george gordon                                        |1649-1649)               |
|1.12054  |gordon                      |john                                                 |1544-1619)               |
|3.3186   |grafton                     |richard                                              |1572-1572)               |
|1.12057  |norden                      |john                                                 |1548-1625)               |
|1.12058  |NA (1554-1623)              |NA                                                   |NA                       |
|1.12061  |guevara                     |antonio de                                           |1545-1545)               |
|3.3190   |NA (1595-1595)              |NA                                                   |NA                       |
|1.12062  |martelière                   |pierre de                                            |1631-1631)               |
|3.3193   |whitaker                    |william                                              |1548-1595)               |
|3.3194   |NA ( 636- 636)              |NA                                                   |NA                       |
|3.3197   |hardyng                     |john                                                 |1378-1465)               |
|3.3199   |harrison                    |james                                                |1547-1547)               |
|1.12065  |hart                        |william                                              |1713-1784)               |
|6.3365   |hondius                     |hendrik                                              |1573-1573)               |
|1.12082  |higgins                     |john                                                 |1570-1602)               |
|3.3205   |hubert                      |francis                                              |1629-1629)               |
|3.3207   |morison                     |richard                                              |1556-1556)               |
|1.12090  |hurault                     |michel                                               |1592-1592)               |
|1.12095  |NA (1626-1626)              |NA                                                   |NA                       |
|1.12101  |isselt                      |michael von                                          |1597-1597)               |
|1.12103  |blandie                     |william                                              |NA-NA)                   |
|3.3210   |saint german                |christopher                                          |1460-1540)               |
|3.3211   |mosellanus                  |petrus                                               |1493-1524)               |
|1.12105  |ker                         |george                                               |NA-NA)                   |
|1.12107  |burghley                    |william cecil                                        |1520-1598)               |
|1.12109  |chapman                     |john                                                 |1596-1596)               |
|3.3213   |geuffroy                    |antoine                                              |NA-NA)                   |
|1.12110  |churchyard                  |thomas                                               |1520-1604)               |
|1.12112  |polo                        |marco                                                |1254-1323)               |
|1.12113  |copland                     |patrick                                              |1655-1655)               |
|1.12116  |clere-ville                 |bartholomé de                                         |NA-NA)                   |
|1.12117  |powel                       |gabriel                                              |1576-1611)               |
|1.12119  |crompton                    |richard                                              |1573-1599)               |
|1.12120  |daunce                      |edward                                               |NA-NA)                   |
|3.3217   |NA (1583-1583)              |NA                                                   |NA                       |
|1.12122  |dekker                      |thomas                                               |1572-1632)               |
|3.3220   |du nesme                    |jean                                                 |NA-NA)                   |
|3.3223   |elder                       |john                                                 |1555-1555)               |
|1.12130  |willoughby de eresby        |peregrine bertie                                     |1555-1601)               |
|3.3225   |elviden                     |edmund                                               |NA-NA)                   |
|1.12136  |froissart                   |jean                                                 |1338-1410)               |
|1.12140  |meteren                     |emmanuel van                                         |1535-1612)               |
|1.12143  |gray                        |robert                                               |1762-1834)               |
|1.12144  |greene                      |robert                                               |1558-1592)               |
|1.12146  |gurney                      |arthur                                               |NA-NA)                   |
|3.3232   |bruni                       |leonardo                                             |1369-1444)               |
|1.12147  |hamor                       |ralph                                                |1626-1626)               |
|3.3234   |tymme                       |thomas                                               |1620-1620)               |
|3.3236   |bradshaw                    |william                                              |1571-1618)               |
|3.3238   |diggs                       |thomas                                               |NA-NA)                   |
|1.12155  |NA (1118-1118)              |NA                                                   |NA                       |
|3.3239   |NA (1533-1584)              |NA                                                   |NA                       |
|1.12156  |hariot                      |thomas                                               |1560-1621)               |
|6.3371   |dee                         |john                                                 |1527-1608)               |
|1.12161  |broughton                   |hugh                                                 |1549-1612)               |
|6.3373   |fabyan                      |robert                                               |1513-1513)               |
|1.12162  |knight                      |francis                                              |NA-NA)                   |
|1.12163  |loyseleur                   |pierre                                               |1530-1590)               |
|3.3241   |le challeux                 |nicolas                                              |NA-NA)                   |
|3.3242   |bullinger                   |heinrich                                             |1504-1575)               |
|6.3376   |hugo                        |herman                                               |1588-1629)               |
|6.3377   |boece                       |hector                                               |1465-1536)               |
|1.12171  |NA (1602-1602)              |NA                                                   |NA                       |
|6.3379   |bunny                       |edmund                                               |1540-1619)               |
|6.3387   |NA (1617-1680)              |NA                                                   |NA                       |
|6.3391   |dallington                  |robert                                               |1561-1637)               |
|1.12173  |cambini                     |andrea                                               |1527-1527)               |
|1.12175  |thornborough                |john                                                 |1551-1641)               |
|1.12177  |cottington                  |r                                                    |NA-NA)                   |
|3.3249   |johnstoun                   |arthur                                               |1587-1641)               |
|1.12195  |wimbledon                   |edward cecil                                         |1572-1638)               |
|1.12196  |norton                      |thomas                                               |1532-1584)               |
|1.12197  |chaloner                    |thomas                                               |1521-1565)               |
|3.3253   |philpot                     |john                                                 |1516-1555)               |
|3.3258   |marnix van st aldegonde     |philips van                                          |1538-1598)               |
|1.12205  |johnston                    |john                                                 |1570-1611)               |
|4.1007   |clapham                     |henoch                                               |NA-NA)                   |
|1.12208  |clapham                     |john                                                 |1566-1566)               |
|3.3263   |grey                        |jane                                                 |1537-1554)               |
|1.12214  |hatton                      |christopher                                          |1540-1591)               |
|3.3265   |belloy                      |pierre de                                            |1540-1613)               |
|1.12220  |noue                        |françois de                                          |1531-1591)               |
|1.12222  |winzet                      |ninian                                               |1518-1592)               |
|6.3397   |caoursin                    |guillaume                                            |1501-1501)               |
|1.12225  |colynet                     |antony                                               |NA-NA)                   |
|1.12227  |lever                       |christopher                                          |1627-1627)               |
|1.12228  |lightfoot                   |william                                              |NA-NA)                   |
|6.3398   |conestaggio                 |gerolamo franchi di                                  |NA-NA)                   |
|1.12233  |contarini                   |gasparo                                              |1483-1542)               |
|3.3272   |georgijević                  |bartolomej                                           |1566-1566)               |
|1.12234  |nicanor                     |lysimachus                                           |1603-1641)               |
|3.3273   |lively                      |edward                                               |1545-1605)               |
|1.12250  |castanheda                  |fer~nao lopes de                                     |1559-1559)               |
|1.12254  |covell                      |william                                              |1614-1614)               |
|1.12257  |lópez de gómara               |francisco                                            |1511-1564)               |
|1.12259  |nanni                       |giovanni                                             |1432-1502)               |
|3.3281   |lydiat                      |thomas                                               |1572-1646)               |
|1.12260  |lydgate                     |john                                                 |NA-NA)                   |
|3.3282   |bèze                        |théodore de                                          |1519-1605)               |
|1.12261  |billerbeg                   |franciscus de                                        |NA-NA)                   |
|1.12262  |crashaw                     |william                                              |1572-1626)               |
|1.12263  |hainault                    |jean de                                              |NA-NA)                   |
|1.12264  |salisbury                   |robert cecil                                         |1563-1612)               |
|1.12266  |crosse                      |william                                              |1590-1590)               |
|1.12267  |bonoeil                     |john                                                 |NA-NA)                   |
|3.3285   |champneys                   |john                                                 |1548-1548)               |
|1.12268  |curione                     |celio augustino                                      |1538-1567)               |
|3.3287   |becon                       |thomas                                               |1512-1567)               |
|1.12272  |jonson                      |ben                                                  |1573-1637)               |
|1.12273  |danett                      |thomas                                               |1566-1601)               |
|1.12278  |NA (1170-1240)              |NA                                                   |NA                       |
|1.12281  |laudonnière                  |rené goulaine de                                      |NA-NA)                   |
|1.12287  |lodge                       |thomas                                               |1558-1625)               |
|6.3403   |NA (1314-1314)              |NA                                                   |NA                       |
|1.12291  |de dominis                  |marco antonio                                        |1560-1624)               |
|1.12293  |dowriche                    |anne                                                 |1589-1589)               |
|3.3291   |churchson                   |john                                                 |NA-NA)                   |
|1.12296  |marten                      |anthony                                              |1597-1597)               |
|1.12298  |middleton                   |thomas                                               |1627-1627)               |
|1.12300  |nelson                      |thomas                                               |1580-1580)               |
|3.3295   |NA (1491-1547)              |NA                                                   |NA                       |
|1.12308  |peele                       |george                                               |1556-1596)               |
|3.3296   |barnes                      |robert                                               |1495-1540)               |
|1.12309  |bradford                    |william                                              |1588-1657)               |
|3.3297   |NA (1587-1587)              |NA                                                   |NA                       |
|1.12310  |NA (1590-1590)              |NA                                                   |NA                       |
|1.12313  |NA (1585-1616)              |NA                                                   |NA                       |
|1.12315  |abell                       |thomas                                               |1540-1540)               |
|3.3301   |cancellar                   |james                                                |1564-1564)               |
|3.3302   |samuel                      |william                                              |1551-1569)               |
|3.3307   |bale                        |john                                                 |1495-1563)               |
|1.12327  |digges                      |thomas                                               |1595-1595)               |
|1.12329  |place                       |pierre de                                            |1520-1572)               |
|3.3308   |somerset                    |edward seymour                                       |1506-1552)               |
|1.12330  |smith                       |john                                                 |1580-1631)               |
|1.12331  |smith                       |thomas                                               |1558-1625)               |
|1.12334  |skelton                     |john                                                 |1460-1529)               |
|1.12338  |cowell                      |john                                                 |1554-1611)               |
|1.12339  |cranmer                     |thomas                                               |1489-1556)               |
|3.3313   |cecil                       |john                                                 |1588-1626)               |
|3.3314   |faber                       |johannes                                             |1478-1541)               |
|3.3316   |NA (1217-1274)              |NA                                                   |NA                       |
|1.12346  |warner                      |william                                              |1558-1609)               |
|1.12347  |waterhouse                  |edward                                               |NA-NA)                   |
|3.3317   |bibliander                  |theodorus                                            |1504-1564)               |
|1.12348  |webbe                       |william                                              |NA-NA)                   |
|1.12349  |de la warr                  |thomas west                                          |1577-1618)               |
|1.12350  |white                       |john                                                 |1575-1648)               |
|1.12351  |wilkinson                   |edw                                                  |1600-1603)               |
|1.12354  |wood                        |william                                              |active 1629-1635)        |
|1.12356  |zárate                       |agustin de                                           |1514-1514)               |
|6.3408   |rastell                     |john                                                 |1536-1536)               |
|1.12357  |loiseau de tourval          |jean                                                 |NA-NA)                   |
|1.12359  |gentili                     |alberico                                             |NA-NA)                   |
|3.3323   |erondelle                   |pierre                                               |1586-1609)               |
|1.12361  |martinengo                  |nestore                                              |NA-NA)                   |
|3.3330   |grimald                     |nicholas                                             |1519-1562)               |
|3.3332   |harchies                    |josse de                                             |1580-1580)               |
|3.3335   |valera                      |cipriano de                                          |1532-1625)               |
|3.3337   |gentillet                   |innocent                                             |1595-1595)               |
|3.3338   |bradford                    |john                                                 |NA-NA)                   |
|1.12378  |NA (1581-1581)              |NA                                                   |NA                       |
|1.12379  |NA (1592-1597)              |NA                                                   |NA                       |
|3.3341   |fulke                       |william                                              |1538-1589)               |
|1.12380  |batman                      |stephen                                              |1584-1584)               |
|1.12381  |NA (1432-1481)              |NA                                                   |NA                       |
|1.12383  |milton                      |richard                                              |NA-NA)                   |
|3.3343   |carr                        |nicholas                                             |1524-1568)               |
|3.3347   |NA (1549-1608)              |NA                                                   |NA                       |
|3.3348   |hooper                      |john                                                 |1555-1555)               |
|6.3424   |hall                        |edward                                               |1547-1547)               |
|1.12395  |nettles                     |stephen                                              |NA-NA)                   |
|1.12396  |orlers                      |jan janszn                                           |1570-1646)               |
|1.12400  |barrow                      |henry                                                |1550-1593)               |
|1.12406  |münster                      |sebastian                                            |1489-1552)               |
|6.3441   |leroy                       |louis                                                |1577-1577)               |
|1.12417  |lesdiguières                |françois de bonne                                    |1543-1626)               |
|1.12431  |whetstone                   |george                                               |1544-1587)               |
|6.3444   |machiavelli                 |niccolò                                               |1469-1527)               |
|6.3445   |edmondes                    |clement                                              |1567-1622)               |
|1.12435  |thémines                     |pons de lauzière                                      |1553-1627)               |
|3.3363   |derricke                    |john                                                 |NA-NA)                   |
|1.12439  |brereton                    |henry                                                |NA-NA)                   |
|3.3364   |patten                      |william                                              |active 1548-1580)        |
|6.3448   |matthieu                    |pierre                                               |1563-1621)               |
|1.12443  |pelegromius                 |simon                                                |1507-1572)               |
|3.3371   |meara                       |dermitius                                            |NA-NA)                   |
|1.12447  |dalechamp                   |caleb                                                |NA-NA)                   |
|15.672   |nichols                     |edward                                               |1617-1617)               |
|1.12452  |philipot                    |john                                                 |1589-1645)               |
|3.3374   |pilkington                  |james                                                |1520-1576)               |
|1.12453  |farley                      |henry                                                |NA-NA)                   |
|3.3375   |thomson                     |george                                               |NA-NA)                   |
|3.3380   |potter                      |christopher                                          |1591-1646)               |
|3.3381   |NA (1100-1154)              |NA                                                   |NA                       |
|1.12466  |powel                       |daniel                                               |NA-NA)                   |
|1.12467  |NA (1578-1637)              |NA                                                   |NA                       |
|1.12472  |bagshaw                     |christopher                                          |1625-1625)               |
|4.1013   |puteanus                    |erycius                                              |1574-1646)               |
|1.12474  |sully                       |maximilien de béthune                                 |1559-1641)               |
|1.12479  |seton                       |john                                                 |NA-NA)                   |
|3.3392   |bazan                       |álvaro de                                            |1526-1588)               |
|3.3393   |carliell                    |robert                                               |1622-1622)               |
|6.3463   |richardson                  |gabriel                                              |1642-1642)               |
|1.12489  |spilbergen                  |joris van                                            |1568-1620)               |
|1.12490  |NA (1613-1613)              |NA                                                   |NA                       |
|1.12492  |cotton                      |roger                                                |NA-NA)                   |
|1.12505  |NA (1553-1610)              |NA                                                   |NA                       |
|3.3404   |góis                         |damião de                                             |1502-1574)               |
|1.12509  |white                       |andrew                                               |1579-1656)               |
|1.12515  |schwarzenberg               |georg ludwig                                         |1586-1646)               |
|6.3467   |balcanquhall                |walter                                               |1586-1645)               |
|1.12520  |lothian                     |william kerr                                         |1605-1675)               |
|1.12551  |bancroft                    |richard                                              |1544-1610)               |
|3.3412   |gascoigne                   |george                                               |1542-1577)               |
|10.3114  |awdelay                     |john                                                 |1559-1577)               |
|3.3415   |balmford                    |james                                                |1556-1556)               |
|1.12565  |NA (1621-1621)              |NA                                                   |NA                       |
|6.3473   |slatyer                     |william                                              |1587-1647)               |
|1.12568  |pendryck                    |william                                              |1583-1650)               |
|1.12571  |soranzo                     |lazzaro                                              |NA-NA)                   |
|1.12573  |gibbon                      |charles                                              |1589-1604)               |
|1.12576  |stella                      |johannes                                             |NA-NA)                   |
|1.12587  |angelus                     |christophorus                                        |1638-1638)               |
|1.12588  |stubbes                     |phillip                                              |NA-NA)                   |
|6.3490   |campion                     |edmund                                               |1540-1581)               |
|6.3491   |walsingham                  |thomas                                               |1360-1420)               |
|1.12593  |watts                       |william                                              |1590-1649)               |
|1.12594  |hubbock                     |william                                              |1560-1560)               |
|3.3430   |carew                       |thomas                                               |NA-NA)                   |
|3.3433   |hastings                    |francis                                              |1610-1610)               |
|1.12603  |hay                         |peter                                                |NA-NA)                   |
|3.3434   |anjou                       |françois                                             |1554-1584)               |
|1.12606  |leighton                    |alexander                                            |1568-1649)               |
|6.3493   |le petit                    |jean françois                                         |1615-1615)               |
|1.12625  |twyne                       |brian                                                |1576-1644)               |
|3.3436   |twyne                       |john                                                 |1501-1581)               |
|1.12630  |beringer                    |joachim                                              |NA-NA)                   |
|3.3438   |southwell                   |robert                                               |1561-1595)               |
|1.12634  |hall                        |arthur                                               |1539-1605)               |
|1.12637  |NA (1588-1588)              |NA                                                   |NA                       |
|3.3446   |NA ( 505- 505)              |NA                                                   |NA                       |
|3.3447   |NA (1545-1592)              |NA                                                   |NA                       |
|3.3449   |alba                        |fernando alvarez de toledo                           |1507-1582)               |
|1.12648  |loper                       |christian                                            |NA-NA)                   |
|10.3117  |kirkham                     |william                                              |NA-NA)                   |
|3.3453   |guise                       |françois de lorraine                                 |1519-1563)               |
|6.3498   |holinshed                   |raphael                                              |1580-1580)               |
|1.12660  |nun                         |thomas                                               |1557-1599)               |
|1.12664  |tyrone                      |hugh o'neill                                         |1540-1616)               |
|1.12672  |jonghe                      |ellert de                                            |NA-NA)                   |
|1.12673  |kempe                       |william                                              |NA-NA)                   |
|1.12674  |waerdenburgh                |dirk van                                             |NA-NA)                   |
|3.3462   |harpsfield                  |john                                                 |1516-1578)               |
|8.13     |hay                         |john                                                 |1546-1607)               |
|1.12681  |rider                       |john                                                 |1562-1632)               |
|3.3468   |woodhouse                   |john                                                 |NA-NA)                   |
|1.12694  |wilkinson                   |robert                                               |NA-NA)                   |
|1.12698  |wittenhorst                 |walraven van                                         |1623-1623)               |
|3.3476   |kelton                      |arthur                                               |NA-NA)                   |
|1.12714  |bure                        |anders                                               |1571-1646)               |
|1.12716  |vignier                     |nicolas                                              |NA-NA)                   |
|1.12725  |verheiden                   |jacob                                                |1590-1590)               |
|1.12736  |montmartin                  |esaïe du mats de                                     |NA-NA)                   |
|1.12737  |oldenbarnevelt              |johan van                                            |1547-1619)               |
|3.3483   |brinckmair                  |l                                                    |NA-NA)                   |
|3.3484   |vincent                     |philip                                               |1600-1600)               |
|10.3151  |gibbon                      |nicholas                                             |1605-1697)               |
|1.12749  |harrison                    |john                                                 |active 1610-1638)        |
|1.12753  |opitz                       |martin                                               |1597-1639)               |
|6.3513   |fumée                        |martin                                               |1590-1590)               |
|6.3514   |popelinière                 |lancelot-voisin                                      |1541-1608)               |
|6.3521   |fougasses                   |thomas de                                            |NA-NA)                   |
|6.3529   |NA (1124-1124)              |NA                                                   |NA                       |
|3.3486   |studley                     |christopher                                          |NA-NA)                   |
|1.12766  |ofwod                       |stephen                                              |NA-NA)                   |
|10.3159  |elderton                    |william                                              |1592-1592)               |
|10.3162  |norris                      |ralph                                                |1577-1577)               |
|10.3163  |phillips                    |john                                                 |active 1570-1591)        |
|10.3164  |preston                     |thomas                                               |1537-1598)               |
|10.3165  |sterrie                     |d                                                    |NA-NA)                   |
|6.3542   |prempart                    |jacques                                              |NA-NA)                   |
|1.12771  |muggins                     |william                                              |NA-NA)                   |
|1.12773  |whitaker                    |alexander                                            |1585-1617)               |
|3.3498   |fleetwood                   |william                                              |1535-1594)               |
|10.3167  |harrison                    |stephen                                              |NA-NA)                   |
|6.3549   |isaacson                    |henry                                                |1581-1654)               |
|3.3501   |cresswell                   |joseph                                               |1556-1623)               |
|1.12780  |agard                       |arthur                                               |1540-1615)               |
|3.3502   |paradin                     |claude                                               |NA-NA)                   |
|1.12781  |minadoi                     |giovanni tommaso                                     |1545-1618)               |
|6.3553   |darcie                      |abraham                                              |1625-1625)               |
|5.4163   |mill                        |tom                                                  |NA-NA)                   |
|3.3505   |étampes-valençay              |léonor d'                                             |1585-1651)               |
|1.12788  |hildebrandt                 |andreas                                              |1637-1637)               |
|1.12795  |rich                        |richard                                              |1610-1610)               |
|1.12811  |holbein                     |hans                                                 |1497-1543)               |
|1.12824  |forbes                      |john                                                 |1593-1648)               |
|6.3564   |llwyd                       |humphrey                                             |1527-1568)               |
|15.676   |rastell                     |william                                              |1508-1565)               |
|1.12918  |NA (1601-1643)              |NA                                                   |NA                       |
|3.3516   |barnaud                     |nicolas                                              |1539-1539)               |
|1.12919  |throckmorton                |job                                                  |1545-1601)               |
|3.3517   |neve                        |john                                                 |1626-1626)               |
|362      |NA (1546-1546)              |NA                                                   |NA                       |
|15.682   |carter                      |richard                                              |NA-NA)                   |
|1.12921  |helwys                      |gervase                                              |1561-1615)               |
|1.12923  |cipriano                    |giovanni                                             |NA-NA)                   |
|3.3519   |melanchthon                 |philipp                                              |1497-1560)               |
|1.12932  |browne                      |robert                                               |1550-1633)               |
|15.687   |NA (1129-1164)              |NA                                                   |NA                       |
|1.12935  |bilbrough                   |john                                                 |NA-NA)                   |
|366      |lindsay                     |david                                                |1641-1641)               |
|15.695   |lingham                     |john                                                 |NA-NA)                   |
|15.720   |traheron                    |bartholomew                                          |1510-1558)               |
|3.3528   |NA (1604-1639)              |NA                                                   |NA                       |
|5.4174   |caddell                     |peter                                                |NA-NA)                   |
|1.12945  |norris                      |sylvester                                            |1572-1630)               |
|3.3532   |langley                     |thomas                                               |NA-NA)                   |
|15.734   |morton                      |william douglas                                      |1584-1648)               |
|6.3589   |milles                      |tho                                                  |1550-1627)               |
|5.4179   |bargrave                    |john                                                 |NA-NA)                   |
|10.3278  |wolsey                      |thomas                                               |1475-1530)               |
|1.12962  |trolloppe                   |thomas                                               |NA-NA)                   |
|313.125  |NA (1495-1566)              |NA                                                   |NA                       |
|15.759   |jones                       |william                                              |???NA-NA)                |
|1.12973  |gurth                       |alexander                                            |NA-NA)                   |
|3.3539   |jewel                       |john                                                 |1522-1571)               |
|1.12975  |peck                        |pierre                                               |1562-1625)               |
|15.775   |tedder                      |william                                              |NA-NA)                   |
|15.781   |smyth                       |thomas                                               |NA-NA)                   |
|15.789   |chambers                    |john                                                 |NA-NA)                   |
|15.804   |rhodes                      |math                                                 |NA-NA)                   |
|15.805   |bennet                      |john                                                 |1627-1627)               |
|15.807   |scot                        |john                                                 |NA-NA)                   |
|15.811   |falkland                    |henry cary                                           |1633-1633)               |
|3.3541   |cheke                       |john                                                 |1514-1557)               |
|15.813   |aston of forfar             |walter                                               |1584-1639)               |
|15.814   |wyche                       |peter                                                |1643-1643)               |
|15.815   |philips                     |thomas                                               |NA-NA)                   |
|15.818   |ros                         |william cecil                                        |1590-1618)               |
|15.819   |reginald                    |henry                                                |NA-NA)                   |
|15.821   |edmondes                    |thomas                                               |1563-1639)               |
|10.3322  |crimsal                     |richard                                              |NA-NA)                   |
|15.831   |donne                       |george                                               |NA-NA)                   |
|15.835   |zouche of harringworth      |edward la                                            |1625-1625)               |
|15.837   |russell                     |thomas                                               |NA-NA)                   |
|3.3542   |phillips                    |george                                               |1597-1597)               |
|15.1012  |stafford                    |thomas                                               |1633-1633)               |
|15.1032  |elliots                     |william                                              |NA-NA)                   |
|3.3543   |teixera                     |josé                                                  |1543-1620)               |
|5.4194   |heywood                     |john                                                 |1497-1580)               |
|6.3602   |holinshead                  |raphael                                              |1580-1580)               |
|10.3368  |NA (1386-1456)              |NA                                                   |NA                       |
|362.2    |anderton                    |james                                                |1624-1624)               |
|1.12982  |leicester                   |robert dudley                                        |1532-1588)               |
|15.1047  |peckham                     |john                                                 |1292-1292)               |
|1.12989  |parsons                     |bartholomew                                          |1574-1642)               |
|15.1068  |montmorency                 |henri                                                |1534-1614)               |
|3.3552   |pagit                       |eusebius                                             |1547-1617)               |
|1.12997  |rejaule                     |v                                                    |NA-NA)                   |
|15.1072  |robertson                   |george                                               |1633-1633)               |
|1.13010  |tailboys                    |samuel                                               |NA-NA)                   |
|1.13018  |buonaccorsi                 |andrea                                               |NA-NA)                   |
|1.13029  |shmid von schmiedebach      |augustin                                             |NA-NA)                   |
|178.3    |vulcanius                   |bonaventura                                          |1538-1614)               |
|10.3398  |buckingham                  |george villiers                                      |1592-1628)               |
|10.3399  |tunstall                    |cuthbert                                             |1474-1559)               |
|1.13040  |taylor                      |john                                                 |???NA-NA)                |
|3.3572   |rochfort                    |luke                                                 |NA-NA)                   |
|1.13051  |primrose                    |david                                                |1651-1651)               |
|10.3413  |morgan                      |george                                               |1621-1621)               |
|3.3582   |melville                    |james                                                |1556-1614)               |
|1.13207  |mayenne                     |henri de lorraine                                    |1578-1621)               |
|10.3423  |howard                      |thomas                                               |NA-NA)                   |
|77.15    |hitching                    |thomas                                               |NA-NA)                   |
|3.3596   |helwys                      |thomas                                               |1550-1616)               |
|3.3597   |hawkes                      |thomas                                               |1555-1555)               |
|3.3599   |gwynneth                    |john                                                 |NA-NA)                   |
|3.3601   |frampton                    |john                                                 |1577-1596)               |
|9.221    |fliegen                     |eve                                                  |1575-1575)               |
|10.3497  |deye                        |william                                              |NA-NA)                   |
|4.1032   |bennet                      |henry                                                |NA-NA)                   |
|3.3611   |NA (1193-1280)              |NA                                                   |NA                       |
|3.3612   |plowden                     |edmund                                               |1518-1585)               |
|187.1    |udall                       |william                                              |NA-NA)                   |
|24.45    |godet                       |giles                                                |NA-NA)                   |
|1.13277  |brooke                      |ralph                                                |1553-1625)               |
|3.3617   |worthington                 |thomas                                               |1549-1627)               |
|1.13280  |ronsard                     |pierre de                                            |1524-1585)               |
|3.3620   |averell                     |w                                                    |NA-NA)                   |
|3.3624   |taverner                    |richard                                              |1505-1575)               |
|315.29   |graham                      |dougal                                               |1724-1779)               |
|315.33   |alembert                    |jean le rond d'                                      |1717-1783)               |
|15.1083  |terry                       |garnet                                               |NA-NA)                   |
|1.13303  |oswald                      |james                                                |1711-1769)               |
|4.1034   |williams                    |helen maria                                          |1762-1827)               |
|1.13307  |craufurd                    |george                                               |NA-NA)                   |
|1.13308  |grant                       |james                                                |NA-NA)                   |
|1.13309  |garnett                     |john                                                 |1709-1782)               |
|1.13310  |lambert                     |ralph                                                |1665-1731)               |
|3.3635   |holwell                     |j z                                                  |1711-1798)               |
|4.1038   |bell                        |henry                                                |1647-1711)               |
|1.13312  |ayloffe                     |joseph                                               |1709-1781)               |
|3.3638   |caillaud                    |john                                                 |1810-1810)               |
|1.13313  |hales                       |stephen                                              |1677-1761)               |
|1.13314  |harris                      |john                                                 |1670-1670)               |
|4.1039   |hamill                      |william                                              |NA-NA)                   |
|1.13317  |revel                       |james                                                |NA-NA)                   |
|3.3651   |howlett                     |john                                                 |1731-1804)               |
|3.3652   |brand                       |john                                                 |1808-1808)               |
|10.3549  |harley                      |robert                                               |1661-1724)               |
|5.4229   |ormonde                     |james butler                                         |1665-1745)               |
|3.3653   |melmoth                     |william                                              |1710-1799)               |
|3.3654   |burgess                     |thomas                                               |1756-1837)               |
|3.3656   |morrison                    |john                                                 |NA-NA)                   |
|3.3658   |kippis                      |andrew                                               |1725-1795)               |
|3.3661   |towers                      |joseph                                               |1737-1799)               |
|3.3666   |wishart                     |george                                               |1703-1785)               |
|6.3646   |price                       |robert                                               |1655-1733)               |
|4.1041   |rawlet                      |john                                                 |1642-1686)               |
|3.3667   |chandler                    |benjamin                                             |1729-1729)               |
|3.3668   |tillard                     |richard                                              |1732-1786)               |
|3.3670   |shove                       |alured henry                                         |1760-1807)               |
|1.13323  |standen                     |joseph                                               |NA-NA)                   |
|1.13324  |rundle                      |thomas                                               |1688-1743)               |
|3.3674   |plowden                     |charles                                              |1743-1821)               |
|5.4232   |van leute                   |william                                              |NA-NA)                   |
|3.3677   |salt                        |aylmer                                               |NA-NA)                   |
|3.3679   |golding                     |christopher                                          |1710-1710)               |
|3.3682   |erskine                     |thomas                                               |1750-1823)               |
|4.1043   |baretti                     |giuseppe                                             |1719-1789)               |
|3.3687   |moir                        |j                                                    |NA-NA)                   |
|3.3690   |davies                      |samuel                                               |1723-1761)               |
|1.13330  |maddox                      |isaac                                                |1697-1759)               |
|3.3691   |smalridge                   |george                                               |1663-1719)               |
|1.13331  |pretyman                    |george                                               |1750-1827)               |
|1.13332  |watson                      |james                                                |1722-1722)               |
|3.3703   |mores                       |edward rowe                                          |1730-1778)               |
|3.3704   |tilly                       |william                                              |1675-1675)               |
|3.3705   |drummond                    |james                                                |1713-1746)               |
|1.13333  |bateman                     |christopher                                          |1698-1730)               |
|3.3707   |de courcy                   |richard                                              |1743-1803)               |
|3.3708   |williams                    |william                                              |???NA-NA)                |
|3.3712   |barlow                      |joel                                                 |1754-1812)               |
|3.3713   |triebner                    |christopher frederic                                 |NA-NA)                   |
|3.3716   |rous                        |george                                               |1744-1802)               |
|4.1050   |palmer                      |samuel                                               |1741-1813)               |
|3.3723   |gay                         |john                                                 |1685-1732)               |
|3.3724   |brine                       |john                                                 |1703-1765)               |
|3.3725   |davis                       |james                                                |1706-1755)               |
|1.13335  |ibbot                       |benjamin                                             |1680-1725)               |
|3.3732   |jenyns                      |soame                                                |1704-1787)               |
|3.3735   |skerret                     |r                                                    |1681-1751)               |
|3.3736   |romaine                     |william                                              |1714-1795)               |
|3.3738   |withers                     |john                                                 |1669-1729)               |
|6.3721   |kenrick                     |w                                                    |1725-1779)               |
|3.3740   |heckforth                   |reymer                                               |NA-NA)                   |
|3.3741   |NA (1788-1788)              |NA                                                   |NA                       |
|6.3722   |chippendale                 |thomas                                               |1718-1779)               |
|3.3747   |chandler                    |samuel                                               |1693-1766)               |
|3.3748   |osgood                      |david                                                |1747-1822)               |
|3.3751   |chelsum                     |james                                                |1740-1801)               |
|3.3752   |weatherhead                 |lawrence                                             |NA-NA)                   |
|3.3753   |dunning                     |richard                                              |NA-NA)                   |
|4.1067   |rhodes                      |benjamin                                             |1743-1816)               |
|4.1068   |henshaw                     |joseph                                               |1603-1679)               |
|6.3724   |ivers                       |thomas                                               |NA-NA)                   |
|3.3759   |nichols                     |john                                                 |1745-1826)               |
|3.3762   |gregory                     |joseph                                               |1761-1802)               |
|3.3764   |bean                        |charles                                              |1675-1731)               |
|1.13340  |sawkins                     |charles                                              |1758-1818)               |
|3.3769   |richardson                  |john                                                 |1664-1747)               |
|3.3776   |gerahty                     |james                                                |NA-NA)                   |
|3.3778   |collis                      |john                                                 |NA-NA)                   |
|3.3779   |swift                       |theophilus                                           |1746-1815)               |
|3.3784   |french                      |robert                                               |NA-NA)                   |
|3.3789   |emmet                       |mary anne                                            |1773-1773)               |
|1.13342  |gower                       |foote                                                |1726-1780)               |
|6.3726   |hoadly                      |benjamin                                             |1676-1761)               |
|3.3796   |oelsner                     |konrad engelbert                                     |1764-1828)               |
|3.3797   |foote                       |samuel                                               |1720-1777)               |
|3.3800   |gregory                     |david                                                |1659-1708)               |
|3.3802   |carte                       |thomas                                               |1686-1754)               |
|3.3804   |voght                       |c                                                    |1752-1839)               |
|3.3807   |knowles                     |charles                                              |1704-1777)               |
|3.3810   |balcarres                   |colin lindsay                                        |1652-1722)               |
|3.3811   |parkinson                   |james                                                |1755-1824)               |
|3.3814   |hopper                      |robert                                               |1755-1835)               |
|3.3820   |burgh                       |james                                                |1714-1775)               |
|3.3822   |cannon                      |robert                                               |1663-1722)               |
|3.3823   |pepperrell                  |william                                              |1696-1759)               |
|1.13354  |pindar                      |peter                                                |1738-1819)               |
|3.3830   |west                        |temple                                               |1713-1757)               |
|3.3832   |ayliffe                     |john                                                 |1676-1732)               |
|5.4245   |mathew                      |george                                               |NA-NA)                   |
|3.3833   |tomkins                     |martin                                               |1755-1755)               |
|3.3841   |duigenan                    |patrick                                              |1735-1816)               |
|3.3846   |finch                       |thomas                                               |NA-NA)                   |
|3.3853   |harper                      |william                                              |NA-NA)                   |
|1.13360  |roberts                     |john                                                 |1785-1785)               |
|3.3861   |NA (1193-1193)              |NA                                                   |NA                       |
|3.3862   |hilliard                    |samuel                                               |1676-1742)               |
|3.3864   |hall-stevenson              |john                                                 |1718-1785)               |
|3.3865   |ged                         |william                                              |1690-1749)               |
|3.3868   |squire                      |samuel                                               |1713-1766)               |
|1.13362  |tovey                       |d'blossiers                                          |1692-1745)               |
|1.13363  |dorset                      |michael                                              |1775-1782)               |
|3.3872   |gittins                     |daniel                                               |1761-1761)               |
|3.3873   |nowell                      |thomas                                               |1730-1801)               |
|3.3876   |burnet                      |gilbert                                              |1690-1726)               |
|3.3877   |cornwallis                  |charles                                              |1738-1805)               |
|3.3878   |geddes                      |alexander                                            |1737-1802)               |
|3.3881   |pilonnière                   |françois de                                           |1680-1680)               |
|3.3882   |prat                        |daniel                                               |1683-1723)               |
|1.13364  |monboddo                    |james burnet                                         |1714-1799)               |
|3.3883   |heberden                    |william                                              |1710-1801)               |
|3.3885   |fleming                     |caleb                                                |1698-1779)               |
|3.3889   |morgan                      |david thomas                                         |1695-1746)               |
|1.13366  |holliday                    |john                                                 |1730-1801)               |
|3.3893   |hawker                      |robert                                               |1753-1827)               |
|3.3894   |monier                      |antoine alexandre                                    |NA-NA)                   |
|3.3899   |norris                      |richard                                              |NA-NA)                   |
|6.3736   |palladio                    |andrea                                               |1508-1580)               |
|1.13367  |burford                     |john                                                 |1743-1743)               |
|3.3904   |pitcairn                    |archibald                                            |1652-1713)               |
|3.3909   |pasquin                     |anthony                                              |1761-1818)               |
|3.3914   |thomas                      |george andrew                                        |1767-1804)               |
|1.13373  |bryant                      |jacob                                                |1715-1804)               |
|3.3922   |turnbull                    |gordon                                               |NA-NA)                   |
|3.3923   |peel                        |robert                                               |1750-1830)               |
|1.13374  |stennett                    |joseph                                               |1663-1713)               |
|3.3928   |gay                         |nicholas                                             |NA-NA)                   |
|3.3929   |clarke                      |thomas brooke                                        |NA-NA)                   |
|3.3930   |martin                      |benjamin                                             |1705-1782)               |
|3.3931   |rimius                      |henry                                                |1757-1757)               |
|3.3933   |stinstra                    |johannes                                             |1708-1790)               |
|3.3938   |lowman                      |moses                                                |1680-1752)               |
|5.4258   |drake                       |james                                                |1667-1707)               |
|3.3939   |frey                        |andreas                                              |NA-NA)                   |
|3.3952   |morant                      |philip                                               |1700-1770)               |
|3.3954   |gent                        |thomas                                               |1693-1778)               |
|3.3956   |hornby                      |charles                                              |1739-1739)               |
|3.3957   |hunter                      |henry                                                |1741-1802)               |
|3.3958   |sabourn                     |reay                                                 |NA-NA)                   |
|3.3961   |breval                      |john                                                 |1680-1738)               |
|3.3965   |halloran                    |laurence hynes                                       |1766-1831)               |
|3.3967   |dyde                        |william                                              |NA-NA)                   |
|4.1089   |fletcher                    |john                                                 |1729-1785)               |
|3.3982   |morris                      |corbyn                                               |1710-1779)               |
|3.3988   |bisse                       |thomas                                               |1731-1731)               |
|3.3989   |bush                        |william                                              |1777-1777)               |
|3.3990   |crookshank                  |william                                              |1712-1769)               |
|3.3992   |wilkes                      |john                                                 |1725-1797)               |
|3.4002   |melville                    |henry dundas                                         |1742-1811)               |
|3.4004   |molyneux                    |capel                                                |1750-1832)               |
|3.4005   |grady                       |thomas                                               |1842-1842)               |
|3.4006   |jervis                      |john jervis white                                    |1766-1830)               |
|3.4010   |minto                       |gilbert elliot                                       |1751-1814)               |
|3.4013   |wycliffe                    |thomas                                               |NA-NA)                   |
|3.4014   |hutchinson                  |william                                              |1732-1814)               |
|1.13390  |dowsing                     |william                                              |1596-1679)               |
|3.4033   |walker                      |hovenden                                             |1656-1728)               |
|3.4034   |NA (1793-1793)              |NA                                                   |NA                       |
|3.4040   |venn                        |richard                                              |1691-1740)               |
|3.4045   |billingsley                 |john                                                 |1657-1722)               |
|3.4048   |burney                      |fanny                                                |1752-1840)               |
|3.4052   |owen                        |n                                                    |1752-1811)               |
|3.4055   |cibber                      |theophilus                                           |1703-1758)               |
|3.4056   |booth                       |george                                               |NA-NA)                   |
|1.13393  |berriman                    |william                                              |1688-1750)               |
|3.4060   |dodsley                     |robert                                               |1703-1764)               |
|3.4065   |owen                        |john                                                 |???NA-NA)                |
|3.4076   |adams                       |amos                                                 |1728-1775)               |
|3.4080   |alexander                   |william                                              |1726-1783)               |
|3.4082   |thompson                    |william                                              |1730-1800)               |
|3.4087   |trydell                     |john                                                 |NA-NA)                   |
|3.4088   |jackson                     |william                                              |1730-1803)               |
|3.4089   |NA (1798-1798)              |NA                                                   |NA                       |
|3.4099   |rokeby                      |matthew robinson-morris                              |1713-1800)               |
|3.4102   |morgann                     |maurice                                              |1726-1802)               |
|3.4106   |dulany                      |daniel                                               |1722-1797)               |
|3.4110   |keate                       |william                                              |1739-1795)               |
|1.13399  |topham                      |john                                                 |1746-1803)               |
|4.1095   |ogden                       |james                                                |1718-1802)               |
|3.4111   |labelye                     |charles                                              |1705-1781)               |
|3.4113   |koops                       |matthias                                             |NA-NA)                   |
|3.4119   |knox                        |john                                                 |1720-1790)               |
|3.4129   |burton                      |john                                                 |1696-1771)               |
|3.4130   |bear                        |john                                                 |NA-NA)                   |
|3.4133   |huddesford                  |william                                              |1732-1772)               |
|3.4135   |barnard                     |john                                                 |1685-1764)               |
|1.13405  |hardinge                    |george                                               |1743-1816)               |
|3.4136   |peirce                      |james                                                |1673-1726)               |
|1.13406  |le moine                    |abraham                                              |1757-1757)               |
|3.4141   |povey                       |charles                                              |1652-1743)               |
|3.4143   |chubb                       |thomas                                               |1679-1747)               |
|3.4147   |whiston                     |william                                              |1667-1752)               |
|6.3749   |combrune                    |michael                                              |NA-NA)                   |
|3.4150   |fitzpatrick                 |thaddeus                                             |NA-NA)                   |
|1.13413  |keate                       |george                                               |1729-1797)               |
|3.4155   |bulstrode                   |whitelocke                                           |1650-1724)               |
|3.4157   |richardson                  |william                                              |active 1778-1815)        |
|3.4158   |blackmore                   |richard                                              |1729-1729)               |
|1.13418  |hadley                      |george                                               |1798-1798)               |
|3.4185   |herne                       |thomas                                               |1722-1722)               |
|3.4191   |brooke                      |henry                                                |1703-1783)               |
|3.4202   |sewell                      |john                                                 |1734-1802)               |
|3.4207   |young                       |arthur                                               |1741-1820)               |
|1.13427  |denina                      |carlo                                                |1731-1813)               |
|9.230    |tatham                      |edward                                               |1749-1834)               |
|4.1106   |NA (1672-1680)              |NA                                                   |NA                       |
|3.4218   |misson                      |maximilien                                           |1650-1722)               |
|3.4220   |owen                        |charles                                              |1746-1746)               |
|1.13432  |oldys                       |william                                              |1696-1761)               |
|3.4223   |asplin                      |samuel                                               |NA-NA)                   |
|3.4225   |witherspoon                 |john                                                 |1723-1794)               |
|1.13433  |sharp                       |john                                                 |1645-1714)               |
|1.13434  |middleton                   |john                                                 |1680-1744)               |
|3.4229   |howdell                     |william                                              |1700-1700)               |
|3.4230   |lightfoote                  |robert                                               |1666-1726)               |
|3.4231   |duché                       |jacob                                                |1738-1798)               |
|5.4278   |shepheard                   |james                                                |1718-1718)               |
|3.4232   |tooke                       |john horne                                           |1736-1812)               |
|3.4233   |irwin                       |eyles                                                |1751-1817)               |
|3.4250   |stoughton                   |william                                              |1718-1718)               |
|1.13436  |bruce                       |lewis                                                |NA-NA)                   |
|1.13438  |NA (1688-1766)              |NA                                                   |NA                       |
|4.1111   |smith                       |william                                              |1728-1793)               |
|1.13439  |ellis                       |john                                                 |1710-1776)               |
|3.4257   |platts                      |john                                                 |1716-1719)               |
|3.4258   |suckling                    |george                                               |NA-NA)                   |
|1.13444  |costansó                     |miguel                                               |NA-NA)                   |
|3.4260   |NA (1747-1823)              |NA                                                   |NA                       |
|6.3754   |salmon                      |n                                                    |1675-1742)               |
|1.13445  |throsby                     |john                                                 |1740-1803)               |
|4.1112   |kincaid                     |alexander                                            |NA-NA)                   |
|1.13447  |hawes                       |robert                                               |1665-1731)               |
|3.4263   |andrews                     |james pettit                                         |1737-1797)               |
|3.4265   |crawford                    |william                                              |1739-1800)               |
|3.4273   |caille                      |jean de                                              |NA-NA)                   |
|1.13450  |abreu de galindo            |juan de                                              |NA-NA)                   |
|3.4278   |weaver                      |john                                                 |1673-1760)               |
|3.4279   |brookes                     |r                                                    |1721-1763)               |
|3.4280   |lewis                       |thomas                                               |1689-1749)               |
|1.13452  |alexander                   |william                                              |1783-1783)               |
|3.4292   |pead                        |deuel                                                |1727-1727)               |
|1.13453  |barrington                  |shute                                                |1734-1826)               |
|1.13459  |newton                      |benjamin                                             |1787-1787)               |
|3.4294   |dickson                     |adam                                                 |1721-1776)               |
|3.4296   |rose                        |john                                                 |1757-1841)               |
|3.4302   |elking                      |henry                                                |NA-NA)                   |
|3.4303   |franklin                    |benjamin                                             |1706-1790)               |
|3.4304   |malouet                     |pierre-victor                                        |1740-1814)               |
|3.4306   |heathcote                   |ralph                                                |1721-1795)               |
|3.4311   |jesse                       |william                                              |1737-1814)               |
|1.13466  |NA (1794-1794)              |NA                                                   |NA                       |
|3.4323   |hughes                      |rice                                                 |NA-NA)                   |
|3.4328   |massie                      |j                                                    |1784-1784)               |
|3.4333   |abingdon                    |willoughby bertie                                    |1740-1799)               |
|6.3781   |eusden                      |laurence                                             |1688-1730)               |
|3.4337   |watson                      |john                                                 |1725-1783)               |
|3.4338   |cartwright                  |john                                                 |1740-1824)               |
|3.4351   |fuller                      |p                                                    |NA-NA)                   |
|3.4361   |eddis                       |william                                              |1738-1825)               |
|3.4362   |roubaud                     |pierre joseph antoine                                |1724-1724)               |
|4.1129   |millar                      |john                                                 |1735-1801)               |
|3.4365   |penn                        |john                                                 |1760-1834)               |
|3.4372   |matthisson                  |friedrich von                                        |NA-NA)                   |
|3.4383   |NA (1761-1852)              |NA                                                   |NA                       |
|3.4385   |gaynam                      |j                                                    |NA-NA)                   |
|3.4388   |turreau de garambouville    |louis-marie                                          |1756-1816)               |
|3.4395   |trenck                      |franz                                                |1711-1749)               |
|3.4398   |philips                     |ambrose                                              |1674-1749)               |
|4.1130   |millan                      |john                                                 |1782-1782)               |
|3.4405   |ambrose                     |john                                                 |1705-1771)               |
|3.4406   |stebbing                    |henry                                                |1687-1763)               |
|3.4407   |donaldson                   |john                                                 |1790-1795)               |
|1.13477  |howe                        |william                                              |1729-1814)               |
|3.4413   |figueiredo                  |antonio pereira de                                   |1725-1797)               |
|3.4414   |morris                      |valentine                                            |1789-1789)               |
|3.4420   |wills                       |william                                              |NA-NA)                   |
|4.1131   |campbell                    |george                                               |1719-1796)               |
|6.3785   |berkley                     |george                                               |1747-1747)               |
|3.4429   |heath                       |george                                               |NA-NA)                   |
|3.4430   |thomas                      |joshua                                               |1719-1797)               |
|3.4432   |still                       |john                                                 |1795-1795)               |
|3.4435   |montagu                     |matthew                                              |1762-1831)               |
|3.4436   |nott                        |job                                                  |NA-NA)                   |
|3.4439   |NA (1743-1743)              |NA                                                   |NA                       |
|1.13482  |palmer                      |samuel                                               |1732-1732)               |
|3.4453   |acres                       |joseph                                               |1667-1746)               |
|3.4467   |thrum                       |tam                                                  |NA-NA)                   |
|3.4470   |pitt                        |william                                              |1708-1778)               |
|3.4477   |sewell                      |george                                               |1726-1726)               |
|6.3790   |parker                      |e                                                    |1717-1717)               |
|3.4486   |stanhope                    |james                                                |1673-1721)               |
|3.4488   |conybeare                   |john                                                 |1692-1755)               |
|4.1141   |hill                        |john                                                 |1714-1775)               |
|1.13489  |holdsworth                  |e                                                    |1684-1746)               |
|1.13490  |lyttelton                   |thomas                                               |1744-1779)               |
|1.13491  |ogilvie                     |john                                                 |1732-1813)               |
|1.13493  |tait                        |john                                                 |1748-1817)               |
|3.4509   |ziegenbalg                  |bartholomaeus                                        |1683-1719)               |
|3.4510   |paterson                    |william                                              |1658-1719)               |
|3.4515   |shorey                      |william                                              |1689-1754)               |
|3.4518   |fitz-crambo                 |patrick                                              |NA-NA)                   |
|3.4519   |etches                      |john                                                 |NA-NA)                   |
|3.4520   |johnson                     |samuel                                               |1709-1784)               |
|1.13498  |bowen                       |thomas                                               |1787-1799)               |
|3.4529   |prinsep                     |john                                                 |1746-1830)               |
|3.4531   |wallin                      |benjamin                                             |1711-1782)               |
|3.4535   |applegarth                  |robert                                               |NA-NA)                   |
|3.4537   |loveling                    |benjamin                                             |1673-1727)               |
|3.4538   |marshall                    |nathaniel                                            |1730-1730)               |
|3.4540   |staunton                    |william                                              |NA-NA)                   |
|3.4545   |dillon                      |arthur-roger                                         |1751-1810)               |
|3.4551   |pope                        |alexander                                            |1688-1744)               |
|3.4553   |pitt                        |w m                                                  |1755-1836)               |
|6.3794   |rudder                      |samuel                                               |1726-1801)               |
|3.4568   |curteis                     |thomas                                               |1660-1747)               |
|4.1152   |walpole                     |horace                                               |1717-1797)               |
|3.4575   |calamy                      |edmund                                               |1671-1732)               |
|3.4577   |fordyce                     |james                                                |1720-1796)               |
|3.4578   |sterling                    |james                                                |1701-1763)               |
|3.4581   |roberts                     |john                                                 |1712-1772)               |
|3.4584   |oldfield                    |joshua                                               |1656-1729)               |
|6.3796   |auckmuty                    |robert                                               |NA-NA)                   |
|6.3797   |durell                      |philip                                               |1766-1766)               |
|6.3799   |ingoldsby                   |richard                                              |1759-1759)               |
|6.3800   |moll                        |herman                                               |1732-1732)               |
|1.13506  |kerrich                     |walter                                               |1803-1803)               |
|1.13507  |crowe                       |william                                              |1745-1829)               |
|1.13509  |horne                       |george                                               |1730-1792)               |
|3.4589   |cagliostro                  |alssenadro                                           |1743-1795)               |
|3.4590   |merrey                      |walter                                               |1723-1799)               |
|3.4591   |scrafton                    |luke                                                 |NA-NA)                   |
|1.13510  |terrick                     |richard                                              |1710-1777)               |
|1.13511  |downes                      |john                                                 |1691-1760)               |
|3.4594   |scott                       |william                                              |1726-1726)               |
|3.4595   |harrison                    |sedgwick                                             |1683-1727)               |
|3.4596   |anstie                      |john                                                 |NA-NA)                   |
|5.4310   |stretzer                    |thomas                                               |1738-1738)               |
|1.13520  |duncombe                    |john                                                 |1729-1786)               |
|1.13522  |apthorp                     |east                                                 |1733-1816)               |
|1.13523  |butler                      |john                                                 |1717-1802)               |
|3.4600   |cappe                       |newcome                                              |1733-1800)               |
|1.13524  |finch                       |leopold william                                      |1663-1702)               |
|3.4604   |odier                       |louis                                                |1748-1817)               |
|1.13526  |NA (1737-1812)              |NA                                                   |NA                       |
|1.13527  |nugent                      |nicholas                                             |1813-1813)               |
|3.4613   |gibbs                       |philip                                               |1715-1740)               |
|3.4614   |moore                       |george                                               |NA-NA)                   |
|3.4615   |clinch                      |william                                              |NA-NA)                   |
|3.4616   |madox                       |thomas                                               |1666-1727)               |
|1.13530  |bagot                       |lewis                                                |1741-1802)               |
|1.13532  |markham                     |william                                              |1719-1807)               |
|1.13533  |phillips                    |robert                                               |1670-1735)               |
|1.13535  |watts                       |george                                               |1704-1772)               |
|1.13536  |thomas                      |john                                                 |1691-1766)               |
|1.13537  |hough                       |nathaniel                                            |1737-1737)               |
|1.13538  |arias                       |juan luis                                            |NA-NA)                   |
|1.13539  |twiss                       |richard                                              |1747-1821)               |
|1.13541  |benfield                    |paul                                                 |1740-1810)               |
|3.4624   |gorani                      |giuseppe                                             |1740-1819)               |
|3.4625   |gamble                      |robert                                               |NA-NA)                   |
|3.4629   |jefferys                    |thomas                                               |1771-1771)               |
|3.4633   |kennedy                     |matthew                                              |NA-NA)                   |
|3.4634   |NA (1753-1815)              |NA                                                   |NA                       |
|3.4635   |jortin                      |john                                                 |1698-1770)               |
|3.4636   |strachey                    |henry                                                |1736-1810)               |
|3.4637   |caius                       |thomas                                               |1572-1572)               |
|323.3    |hardy                       |john                                                 |1796-1796)               |
|6.3810   |harrison                    |walter                                               |NA-NA)                   |
|3.4640   |hervey                      |frederic                                             |NA-NA)                   |
|3.4642   |saxby                       |henry                                                |NA-NA)                   |
|3.4643   |watson                      |robert                                               |1730-1781)               |
|3.4644   |horler                      |joseph                                               |1701-1701)               |
|3.4647   |blackburne                  |francis                                              |1705-1787)               |
|6.3813   |lediard                     |thomas                                               |1685-1743)               |
|3.4651   |richards                    |william                                              |1749-1818)               |
|3.4655   |morellet                    |andré                                                |1727-1819)               |
|3.4656   |shuckford                   |samuel                                               |1694-1754)               |
|3.4657   |leighton                    |robert                                               |1611-1684)               |
|3.4663   |macgill                     |stevenson                                            |1765-1840)               |
|3.4664   |campbell                    |thomas                                               |1733-1795)               |
|1.13550  |mason                       |william                                              |1725-1797)               |
|3.4674   |mounier                     |jean joseph                                          |1758-1806)               |
|1.13552  |morgan                      |j                                                    |1739-1739)               |
|4.1164   |cantillon                   |richard                                              |1734-1734)               |
|1.13553  |barnard                     |thomas                                               |1728-1806)               |
|3.4683   |mayer                       |charles-joseph                                       |1825-1825)               |
|3.4686   |lioy                        |félix                                                |NA-NA)                   |
|4.1165   |NA (1719-1776)              |NA                                                   |NA                       |
|4.1166   |chevrières                  |jean-guillaume de                                    |NA-NA)                   |
|3.4689   |goodwin                     |r                                                    |NA-NA)                   |
|3.4692   |coote                       |charles                                              |1761-1835)               |
|4.1168   |victor                      |benjamin                                             |1778-1778)               |
|6.3819   |menteith                    |robert                                               |NA-NA)                   |
|3.4697   |malmesbury                  |james harris                                         |1746-1820)               |
|4.1169   |mairobert                   |mathieu françois pidanzat de                          |1727-1779)               |
|3.4704   |mackintosh                  |james                                                |1765-1832)               |
|4.1172   |NA (1714-1788)              |NA                                                   |NA                       |
|4.1173   |panciroli                   |guido                                                |1523-1599)               |
|1.13559  |shaw                        |lachlan                                              |1692-1777)               |
|4.1175   |mason                       |william                                              |1719-1791)               |
|3.4712   |mcgill                      |william                                              |1732-1807)               |
|4.1177   |worcester                   |edward somerset                                      |1601-1667)               |
|3.4740   |stanyan                     |temple                                               |1677-1752)               |
|3.4743   |bailly                      |jean sylvain                                         |1736-1793)               |
|3.4744   |yvon                        |claude                                               |1714-1791)               |
|3.4746   |panzani                     |gregorio                                             |1662-1662)               |
|3.4787   |heriot                      |j                                                    |1760-1833)               |
|3.4788   |gast                        |john                                                 |1716-1788)               |
|3.4792   |wilson                      |william                                              |1762-1800)               |
|4.1187   |hooper                      |jacob                                                |NA-NA)                   |
|3.4799   |webster                     |h                                                    |NA-NA)                   |
|4.1188   |motte                       |jeanne de saint-rémy de valois                       |1756-1791)               |
|3.4802   |NA (1214-1284)              |NA                                                   |NA                       |
|4.1189   |rogers                      |nathan                                               |1668-1708)               |
|3.4808   |sadler                      |ralph                                                |1507-1587)               |
|3.4814   |lejeune                     |j                                                    |NA-NA)                   |
|3.4819   |lally-tolendal              |trophime-gerard                                      |1751-1830)               |
|3.4825   |macnaghten                  |edmond alexander                                     |1762-1832)               |
|3.4829   |skelton                     |philip                                               |1707-1787)               |
|3.4838   |clarendon                   |henry hyde                                           |1638-1709)               |
|3.4844   |paulden                     |thomas                                               |1710-1710)               |
|6.3832   |thurloe                     |john                                                 |1616-1668)               |
|4.1200   |griffiths                   |ralph                                                |1720-1803)               |
|4.1201   |NA (1711-1797)              |NA                                                   |NA                       |
|3.4882   |antraigues                  |emmanuel-louis-henri-alexandre de launay             |1754-1812)               |
|1.13572  |rooke                       |hayman                                               |1722-1806)               |
|3.4902   |mason                       |john monck                                           |1726-1809)               |
|3.4912   |NA (1756-1819)              |NA                                                   |NA                       |
|3.4913   |montlosier                  |françois-dominique de reynaud                        |1755-1838)               |
|5.4328   |wharton                     |philip                                               |1698-1731)               |
|3.4915   |young                       |matthew                                              |1750-1800)               |
|3.4919   |jacotius                    |desiderius                                           |NA-NA)                   |
|3.4929   |trant                       |dominick                                             |NA-NA)                   |
|3.4941   |reading                     |william                                              |1674-1744)               |
|16.8     |goupil                      |pierre étienne auguste                               |NA-NA)                   |
|1.13576  |tickell                     |john                                                 |NA-NA)                   |
|4.1225   |dawson                      |charles                                              |NA-NA)                   |
|4.1226   |entick                      |john                                                 |1703-1773)               |
|3.4965   |lindsey                     |theophilus                                           |1723-1808)               |
|3.4966   |annet                       |peter                                                |1693-1769)               |
|3.4968   |mcfarlane                   |james                                                |NA-NA)                   |
|3.4969   |wallis                      |ninian                                               |NA-NA)                   |
|3.4985   |m'cleaver                   |sawney                                               |NA-NA)                   |
|4.1234   |lamotte                     |charles                                              |NA-NA)                   |
|381      |bemetzrieder                |anton                                                |1743-1817)               |
|4.1238   |comerford                   |t                                                    |NA-NA)                   |
|3.5003   |mauvillon                   |éléazar de                                           |1712-1779)               |
|4.1241   |NA (1698-1776)              |NA                                                   |NA                       |
|4.1243   |valabregue                  |israël-bernard de                                    |NA-NA)                   |
|3.5018   |haighton                    |john                                                 |1755-1823)               |
|3.5022   |NA (1751-1775)              |NA                                                   |NA                       |
|3.5028   |béraud                      |paul-emilien                                         |1751-1836)               |
|3.5029   |NA (1677-1766)              |NA                                                   |NA                       |
|3.5038   |coigly                      |james                                                |1762-1798)               |
|1.13589  |crusius                     |lewis                                                |1701-1775)               |
|3.5059   |NA (1747-1819)              |NA                                                   |NA                       |
|3.5060   |elder                       |john                                                 |1692-1779)               |
|3.5063   |bicknell                    |john                                                 |NA-NA)                   |
|3.5067   |meredith                    |william                                              |1725-1790)               |
|3.5073   |boisguillebert              |pierre le pesant                                     |1646-1714)               |
|3.5078   |bradney                     |joseph                                               |NA-NA)                   |
|3.5079   |NA (1741-1790)              |NA                                                   |NA                       |
|3.5090   |publicola                   |horatius                                             |NA-NA)                   |
|1.13592  |macbride                    |john                                                 |1651-1718)               |
|3.5094   |ker                         |john                                                 |1673-1726)               |
|3.5095   |throckmorton                |john                                                 |1753-1819)               |
|3.5098   |ramkins                     |alexander                                            |1672-1719)               |
|4.1271   |NA (1704-1771)              |NA                                                   |NA                       |
|4.1273   |cayley                      |cornelius                                            |1729-1780)               |
|3.5106   |baine                       |james                                                |1710-1790)               |
|3.5111   |brown                       |andrew                                               |active 1679-1706)        |
|7.34     |pope                        |luke                                                 |NA-NA)                   |
|3.5124   |rosse                       |lawrence parsons                                     |1758-1841)               |
|3.5126   |gordon                      |walter                                               |NA-NA)                   |
|3.5130   |connolly                    |john                                                 |1750-1813)               |
|4.1280   |crowley                     |miles                                                |NA-NA)                   |
|3.5147   |le mesurier                 |havilland                                            |1758-1806)               |
|3.5151   |dallas                      |george                                               |1758-1833)               |
|3.5154   |jebb                        |ann                                                  |1735-1812)               |
|1.13609  |thoroton                    |robert                                               |1623-1678)               |
|3.5158   |touche                      |james digges                                         |1709-1709)               |
|3.5159   |law                         |john                                                 |1671-1729)               |
|3.5161   |romilly                     |samuel                                               |1757-1818)               |
|3.5162   |struensee                   |johann friedrich                                     |1737-1772)               |
|3.5168   |ball                        |charles                                              |NA-NA)                   |
|4.1294   |myles                       |william                                              |NA-NA)                   |
|3.5179   |edwards                     |jonathan                                             |1703-1758)               |
|1.13616  |raper                       |matthew                                              |1778-1778)               |
|3.5183   |stevenson                   |john                                                 |NA-NA)                   |
|4.1299   |ryland                      |john                                                 |1723-1792)               |
|4.1309   |damiens de gomicourt        |auguste-pierre                                       |1723-1790)               |
|4.1310   |mairobert                   |mathieu françois pidanzat de                         |1727-1779)               |
|15.1085  |radclyffe                   |m                                                    |NA-NA)                   |
|1.13617  |madden                      |samuel                                               |1686-1765)               |
|3.5203   |NA (1790-1790)              |NA                                                   |NA                       |
|3.5204   |bousfield                   |benjamin                                             |NA-NA)                   |
|4.1318   |berington                   |thomas                                               |NA-NA)                   |
|3.5214   |stevens                     |william                                              |1732-1807)               |
|3.5224   |toplady                     |augustus                                             |1740-1778)               |
|3.5231   |o'connor                    |roger                                                |1762-1834)               |
|3.5232   |eden                        |adam                                                 |NA-NA)                   |
|4.1334   |porter                      |john                                                 |NA-NA)                   |
|4.1335   |morgan                      |j                                                    |1752-1752)               |
|3.5240   |o'conor                     |daniel roderick                                      |NA-NA)                   |
|3.5241   |beddoes                     |thomas                                               |1760-1808)               |
|3.5249   |clarke                      |richard                                              |NA-NA)                   |
|3.5250   |leggett                     |richard                                              |NA-NA)                   |
|3.5252   |lavater                     |johann caspar                                        |1741-1801)               |
|1.13623  |williamson                  |james                                                |1743-1743)               |
|3.5255   |mitchell                    |hugh                                                 |1815-1815)               |
|3.5261   |workman                     |james                                                |1832-1832)               |
|3.5262   |king                        |william                                              |1663-1712)               |
|4.1351   |yapp                        |b                                                    |NA-NA)                   |
|4.1352   |crébillon                   |claude prosper jolyot de                             |1707-1777)               |
|3.5270   |wilks                       |mark                                                 |1748-1819)               |
|3.5271   |gordon                      |george                                               |1751-1793)               |
|4.1353   |pescod                      |joseph                                               |NA-NA)                   |
|3.5272   |cicero                      |marcus tullius                                       |NA-NA)                   |
|1.13627  |gough                       |richard                                              |1735-1809)               |
|3.5277   |green                       |andrew                                               |1774-1774)               |
|3.5281   |nixon                       |robert                                               |1620-1620)               |
|3.5282   |abelard                     |peter                                                |1079-1142)               |
|3.5286   |haldan                      |bernard                                              |1726-1805)               |
|3.5291   |martin                      |david                                                |1639-1721)               |
|3.5294   |ranken                      |alexander                                            |1755-1827)               |
|3.5305   |battye                      |thomas                                               |NA-NA)                   |
|4.1371   |dickinson                   |jonathan                                             |1688-1747)               |
|3.5319   |harpe                       |jean-françois de                                     |1739-1803)               |
|3.5320   |stephenson                  |george                                               |1759-1759)               |
|4.1375   |du barry                    |jeanne bécu                                          |1743-1793)               |
|6.3860   |keith                       |robert                                               |1681-1757)               |
|4.1380   |harris                      |r                                                    |NA-NA)                   |
|3.5341   |rippon                      |john                                                 |1751-1836)               |
|3.5346   |bladen                      |martin                                               |1680-1745)               |
|4.1385   |hey                         |richard                                              |1745-1835)               |
|4.1386   |freeman                     |stephen                                              |NA-NA)                   |
|3.5353   |lewis                       |richard                                              |NA-NA)                   |
|1.13641  |grose                       |francis                                              |1731-1791)               |
|3.5355   |mullala                     |james                                                |NA-NA)                   |
|3.5363   |campbell                    |john                                                 |NA-NA)                   |
|3.5365   |lynch                       |john                                                 |1673-1673)               |
|1.13642  |clarendon                   |r v                                                  |NA-NA)                   |
|3.5374   |NA (1672-1725)              |NA                                                   |NA                       |
|7.36     |chapman                     |thomas                                               |1790-1803)               |
|3.5383   |cawthorne                   |joseph                                               |NA-NA)                   |
|3.5389   |greer                       |john                                                 |NA-NA)                   |
|4.1398   |pirie                       |alexander                                            |1737-1804)               |
|6.3865   |jessop                      |william                                              |1745-1814)               |
|1.13647  |douglas                     |basil william                                        |1763-1794)               |
|3.5393   |destutt de tracy            |antoine louis claude                                 |1754-1836)               |
|3.5395   |NA (1741-1820)              |NA                                                   |NA                       |
|6.3868   |geminiani                   |francesco                                            |1687-1762)               |
|1.13650  |macmahon                    |hugh                                                 |1737-1737)               |
|3.5400   |roe                         |robert                                               |NA-NA)                   |
|3.5402   |larrey                      |isaac de                                             |1638-1719)               |
|5.4362   |brodrick                    |alan                                                 |1656-1728)               |
|3.5405   |lee                         |charles                                              |1731-1782)               |
|3.5414   |manuel                      |louis-pierre                                         |1751-1793)               |
|3.5416   |maillet                     |benoı̂t de                                             |1656-1738)               |
|3.5418   |croix                       |de                                                   |1704-1704)               |
|3.5420   |williams                    |griffith                                             |1720-1765)               |
|3.5421   |piers                       |henry                                                |1695-1769)               |
|3.5425   |clubbe                      |john                                                 |1703-1773)               |
|4.1427   |waldron                     |george                                               |1690-1730)               |
|4.1428   |stedman                     |john                                                 |1791-1791)               |
|3.5444   |panisset                    |françois thérèse                                     |1729-1809)               |
|6.3875   |catrou                      |françois                                              |1659-1737)               |
|3.5463   |hamilton                    |james edward                                         |NA-NA)                   |
|1.13668  |durell                      |d                                                    |1728-1775)               |
|3.5467   |clarke                      |john                                                 |1791-1791)               |
|3.5468   |english                     |george                                               |NA-NA)                   |
|1.13671  |denne                       |samuel                                               |1730-1799)               |
|4.1448   |bowles                      |thomas                                               |1694-1773)               |
|3.5476   |velly                       |paul françois                                         |NA-NA)                   |
|3.5481   |luchet                      |jean-pierre-louis de                                 |1740-1792)               |
|3.5483   |stonestreet                 |george griffin                                       |NA-NA)                   |
|5.4374   |hasted                      |edward                                               |1732-1812)               |
|9.241    |charlton                    |lionel                                               |1720-1788)               |
|3.5485   |hooke                       |andrew                                               |1753-1753)               |
|6.3882   |barrett                     |william                                              |1733-1789)               |
|4.1452   |hampson                     |john                                                 |1760-1817)               |
|9.242    |gillingwater                |edmund                                               |1736-1813)               |
|3.5495   |taylor                      |herbert                                              |1775-1839)               |
|6.3883   |folkes                      |martin                                               |1690-1754)               |
|4.1454   |saavedra fajardo            |diego de                                             |1584-1648)               |
|4.1455   |button                      |edward                                               |NA-NA)                   |
|4.1456   |carruthers                  |john                                                 |1796-1796)               |
|1.13673  |home                        |john                                                 |1722-1808)               |
|3.5503   |crane                       |john                                                 |NA-NA)                   |
|1.13674  |macghie                     |william                                              |NA-NA)                   |
|1.13676  |bonner                      |charles                                              |1829-1829)               |
|6.3884   |parne                       |thomas                                               |1694-1751)               |
|3.5514   |money                       |john                                                 |1752-1817)               |
|6.3885   |douglas                     |james                                                |1744-1744)               |
|3.5524   |hurrion                     |john                                                 |1705-1750)               |
|3.5533   |willis                      |browne                                               |1682-1760)               |
|1.13683  |browne                      |william                                              |1692-1774)               |
|6.3889   |manchester                  |henry montagu                                        |1563-1642)               |
|4.1472   |clayton                     |robert                                               |1695-1758)               |
|1.13684  |le marchant                 |william                                              |NA-NA)                   |
|4.1474   |maxwel                      |hugh                                                 |1682-1751)               |
|3.5557   |parisot                     |pierre-curel                                         |1679-1769)               |
|1.13688  |bullingbrooke               |edward                                               |NA-NA)                   |
|1.13690  |NA (1162-1231)              |NA                                                   |NA                       |
|3.5571   |raymond                     |anthony                                              |1675-1675)               |
|3.5575   |polhill                     |charles                                              |NA-NA)                   |
|3.5580   |adams                       |john                                                 |1750-1814)               |
|6.3892   |scott                       |david                                                |1675-1742)               |
|3.5586   |bruce                       |william                                              |1630-1710)               |
|3.5589   |NA (1068-1148)              |NA                                                   |NA                       |
|1.13693  |orme                        |robert                                               |1728-1801)               |
|1.13696  |o'halloran                  |sylvester                                            |1728-1807)               |
|3.5596   |beatson                     |robert                                               |1742-1818)               |
|7.37     |riley                       |george                                               |NA-NA)                   |
|4.1492   |macbean                     |william                                              |NA-NA)                   |
|3.5604   |hay                         |george                                               |1729-1811)               |
|4.1495   |NA (1685-1745)              |NA                                                   |NA                       |
|5.4392   |cahal                       |philip                                               |1666-1666)               |
|3.5616   |cockburne                   |robert                                               |NA-NA)                   |
|6.3895   |ralph                       |james                                                |1762-1762)               |
|382      |boreman                     |thomas                                               |1730-1743)               |
|4.1501   |NA (1717-1799)              |NA                                                   |NA                       |
|3.5636   |beauvais                    |bertrand poirier de                                  |1755-1827)               |
|6.3899   |ashburton                   |charles alfred                                       |NA-NA)                   |
|6.3902   |haldane                     |george cockburn                                      |1729-1799)               |
|1.13702  |maclean                     |allan                                                |1725-1784)               |
|1.13703  |haddington                  |thomas hamilton                                      |1721-1794)               |
|1.13705  |buccleuch                   |henry scott                                          |1746-1812)               |
|1.13707  |baker                       |james                                                |NA-NA)                   |
|3.5663   |scott                       |alexander                                            |NA-NA)                   |
|4.1519   |NA (1734-1806)              |NA                                                   |NA                       |
|1.13711  |douglas                     |anne jean                                            |NA-NA)                   |
|3.5671   |l'isle                      |evrard de                                            |1741-1823)               |
|6.3906   |mountague                   |william henry                                        |NA-NA)                   |
|1.13713  |montrose                    |william graham                                       |1712-1790)               |
|3.5679   |howard                      |gorges edmond                                        |1715-1786)               |
|1.13714  |adam-lauder                 |helen                                                |NA-NA)                   |
|1.13715  |shanks                      |archibald                                            |NA-NA)                   |
|1.13718  |beveridge                   |andrew                                               |NA-NA)                   |
|3.5684   |hennessy                    |george                                               |NA-NA)                   |
|5.4416   |walker                      |robert                                               |NA-NA)                   |
|4.1529   |lanjuinais                  |joseph                                               |1808-1808)               |
|3.5700   |stith                       |william                                              |1707-1755)               |
|3.5706   |mordaunt                    |john                                                 |1697-1780)               |
|1.13725  |grieve                      |john                                                 |NA-NA)                   |
|3.5710   |NA (1751-1841)              |NA                                                   |NA                       |
|1.13730  |arnot                       |james                                                |NA-NA)                   |
|3.5713   |dermody                     |thomas                                               |1775-1802)               |
|4.1534   |bellamy                     |d                                                    |1687-1687)               |
|3.5719   |guthrie                     |william                                              |1708-1770)               |
|3.5726   |johnson                     |anthony                                              |NA-NA)                   |
|3.5727   |swit                        |william                                              |NA-NA)                   |
|383      |villiers                    |george                                               |1785-1790)               |
|5.4437   |mitchel                     |william                                              |1671-1740)               |
|3.5742   |phelps                      |william                                              |NA-NA)                   |
|1.13734  |edmeston                    |william                                              |NA-NA)                   |
|4.1548   |murray                      |robert                                               |NA-NA)                   |
|3.5747   |armstrong                   |mostyn john                                          |NA-NA)                   |
|3.5752   |gabriel                     |r b                                                  |NA-NA)                   |
|3.5753   |lindsay                     |w c                                                  |NA-NA)                   |
|1.13737  |bremner                     |james                                                |NA-NA)                   |
|328.5    |orme                        |daniel                                               |1767-1767)               |
|3.5757   |hutchins                    |john                                                 |1698-1773)               |
|1.13738  |ford                        |emanuel                                              |NA-NA)                   |
|3.5765   |trusler                     |john                                                 |1735-1820)               |
|6.3949   |boisgelin de cucé           |jean de dieu-raymond de                              |1732-1804)               |
|1.13742  |NA (1787-1787)              |NA                                                   |NA                       |
|4.1563   |goguet                      |antoine-yves                                         |1716-1758)               |
|5.4453   |abercromby                  |james                                                |1747-1747)               |
|1.13747  |caraccioli                  |charles alexander                                    |NA-NA)                   |
|3.5785   |talma                       |julie                                                |1756-1805)               |
|6.3953   |le mercier                  |magdalen                                             |NA-NA)                   |
|3.5795   |sieyès                      |emmanuel joseph                                      |1748-1836)               |
|4.1574   |moylan                      |francis                                              |1735-1815)               |
|3.5801   |cornwall                    |frederick                                            |1677-1748)               |
|3.5803   |logan                       |george                                               |1678-1755)               |
|3.5807   |acherley                    |roger                                                |1665-1740)               |
|6.3954   |newton                      |william                                              |1735-1790)               |
|3.5844   |jones                       |william                                              |1746-1794)               |
|3.5845   |chevalier                   |thomas                                               |1767-1824)               |
|3.5846   |dawson                      |benjamin                                             |1729-1814)               |
|1.13759  |clerk                       |john                                                 |1676-1755)               |
|3.5849   |newcome                     |william                                              |1729-1800)               |
|1.13760  |baker                       |george                                               |1722-1809)               |
|6.3967   |newcourt                    |richard                                              |1716-1716)               |
|1.13763  |henriques                   |jacob                                                |1683-1768)               |
|3.5856   |chamberlayne                |john                                                 |1666-1723)               |
|3.5869   |imlay                       |gilbert                                              |1754-1828)               |
|1.13765  |palm                        |karl josef von                                       |NA-NA)                   |
|3.5872   |simpson                     |david                                                |1745-1799)               |
|3.5889   |home                        |charles                                              |NA-NA)                   |
|3.5891   |brown                       |john                                                 |1735-1788)               |
|6.3968   |chamberlen                  |paul                                                 |NA-NA)                   |
|3.5900   |smith                       |elisha                                               |1683-1740)               |
|4.1600   |blackwall                   |anthony                                              |1674-1730)               |
|4.1601   |iliff                       |edward henry                                         |NA-NA)                   |
|3.5907   |smith                       |william                                              |1651-1735)               |
|4.1604   |boëtie                      |etienne de                                           |NA-NA)                   |
|4.1606   |stanhope                    |philip dormer                                        |1752-1752)               |
|3.5914   |dobbs                       |francis                                              |1750-1811)               |
|3.5917   |sheridan                    |richard brinsley                                     |1751-1816)               |
|3.5920   |dickinson                   |john                                                 |1732-1808)               |
|3.5921   |martin                      |samuel                                               |1788-1788)               |
|3.5923   |black                       |william                                              |1749-1829)               |
|3.5926   |mckenna                     |theobald                                             |1808-1808)               |
|3.5931   |champion                    |richard                                              |1743-1791)               |
|3.5959   |downes                      |joseph                                               |NA-NA)                   |
|4.1609   |kimber                      |edward                                               |1719-1769)               |
|3.5964   |townsend                    |joseph                                               |1739-1816)               |
|1.13783  |symson                      |andrew                                               |1638-1712)               |
|3.5969   |gastrell                    |francis                                              |1662-1725)               |
|3.5970   |rotheram                    |john                                                 |1725-1789)               |
|3.5971   |blackstone                  |william                                              |1723-1780)               |
|3.5974   |conway                      |george                                               |NA-NA)                   |
|3.5975   |wood                        |william                                              |1688-1688)               |
|4.1614   |kilham                      |alexander                                            |1762-1798)               |
|3.5977   |ferrand                     |antoine-françois-claude                              |1751-1825)               |
|3.5982   |hunt                        |jeremiah                                             |1678-1744)               |
|1.13786  |yonge                       |francis                                              |NA-NA)                   |
|1.13790  |meadowcourt                 |richard                                              |1695-1760)               |
|3.5993   |mackerell                   |benjamin                                             |1738-1738)               |
|3.5995   |wollaston                   |francis                                              |1731-1815)               |
|3.5998   |skinner                     |john                                                 |1721-1807)               |
|3.6000   |disney                      |daniel                                               |NA-NA)                   |
|3.6002   |savage                      |samuel morton                                        |1721-1791)               |
|3.6004   |douglas                     |john                                                 |1721-1807)               |
|6.3981   |greenshields                |james                                                |NA-NA)                   |
|3.6007   |twining                     |richard                                              |NA-NA)                   |
|3.6009   |gage                        |thomas                                               |1603-1656)               |
|3.6019   |morrison                    |thomas hooper                                        |1769-1824)               |
|3.6024   |knox                        |vicesimus                                            |1752-1821)               |
|3.6027   |smith                       |george                                               |1693-1756)               |
|3.6033   |fielding                    |henry                                                |1707-1754)               |
|1.13798  |cunnynghame                 |alexander                                            |1780-1780)               |
|1.13800  |waddel                      |george                                               |NA-NA)                   |
|3.6051   |radcliff                    |ebenezer                                             |NA-NA)                   |
|1.13804  |potter                      |r                                                    |1721-1804)               |
|3.6059   |chalkley                    |thomas                                               |1675-1741)               |
|3.6060   |walker                      |richard                                              |NA-NA)                   |
|3.6065   |hind                        |thomas                                               |1683-1748)               |
|3.6070   |hargrove                    |ely                                                  |1742-1818)               |
|3.6071   |laneham                     |robert                                               |NA-NA)                   |
|3.6074   |verdad                      |pedro de la                                          |NA-NA)                   |
|3.6077   |dandridge                   |isaac                                                |NA-NA)                   |
|4.1647   |nott                        |john                                                 |1751-1825)               |
|1.13810  |carmichael                  |james                                                |NA-NA)                   |
|1.13811  |ellis                       |george                                               |1753-1815)               |
|4.1651   |garrick                     |david                                                |1717-1779)               |
|3.6091   |whalley                     |peter                                                |1722-1791)               |
|3.6097   |lansdowne                   |george granville                                     |1667-1735)               |
|3.6100   |edwards                     |thomas                                               |1699-1757)               |
|3.6103   |eyre                        |francis                                              |1804-1804)               |
|4.1658   |johnson                     |r                                                    |1734-1793)               |
|3.6109   |weston                      |stephen                                              |1747-1830)               |
|3.6110   |jourgniac saint-méard       |françois de                                          |1745-1827)               |
|3.6117   |thomson                     |james                                                |1768-1855)               |
|3.6120   |pechell                     |john                                                 |1718-1778)               |
|1.13817  |pocock                      |robert                                               |1760-1830)               |
|4.1664   |dodsworth                   |william                                              |1792-1814)               |
|4.1665   |shrubsole                   |william                                              |1729-1797)               |
|3.6139   |cardale                     |paul                                                 |1705-1775)               |
|3.6140   |NA (1736-1815)              |NA                                                   |NA                       |
|3.6142   |duppa                       |richard                                              |1770-1831)               |
|6.4002   |rowe                        |nicholas                                             |1674-1718)               |
|3.6151   |de grey                     |amabel hume-campbell                                 |1751-1833)               |
|3.6152   |sewell                      |john                                                 |1793-1793)               |
|3.6157   |mildmay                     |william                                              |1705-1771)               |
|3.6158   |hole                        |matthew                                              |1640-1730)               |
|3.6162   |small                       |robert                                               |1732-1808)               |
|3.6163   |macneven                    |william james                                        |1763-1841)               |
|3.6164   |sclater                     |william                                              |1638-1717)               |
|1.13819  |rodney                      |george brydges                                       |1727-1811)               |
|8.31     |NA (1762-1830)              |NA                                                   |NA                       |
|3.6178   |paterson                    |samuel                                               |1728-1802)               |
|1.13822  |milner                      |john                                                 |1752-1826)               |
|3.6181   |milner                      |joseph                                               |1744-1797)               |
|4.1674   |pote                        |joseph                                               |1704-1787)               |
|3.6193   |boerhaave                   |herman                                               |1668-1738)               |
|3.6206   |fleming                     |robert                                               |1660-1716)               |
|3.6214   |davies                      |thomas                                               |1713-1785)               |
|4.1677   |o'keeffe                    |john                                                 |1747-1833)               |
|8.33     |aitken                      |james                                                |1752-1777)               |
|3.6223   |croker                      |temple henry                                         |1730-1790)               |
|4.1680   |plantavit de la pause       |guillaume                                            |1685-1760)               |
|3.6227   |malham                      |john                                                 |1747-1821)               |
|4.1681   |slush                       |barnaby                                              |NA-NA)                   |
|3.6228   |kershaw                     |james                                                |NA-NA)                   |
|4.1683   |marmontel                   |jean-françois                                        |1723-1799)               |
|4.1685   |corn-cob                    |jonathan                                             |NA-NA)                   |
|3.6237   |glenbervie                  |sylvester douglas                                    |1743-1823)               |
|3.6244   |bentham                     |edward                                               |1707-1776)               |
|3.6251   |elibank                     |patrick murray                                       |1703-1778)               |
|3.6254   |dallas                      |robert                                               |1756-1824)               |
|3.6259   |dameto                      |juan bautista                                        |1554-1633)               |
|3.6260   |abernethy                   |john                                                 |1680-1740)               |
|3.6261   |lovelass                    |peter                                                |1786-1812)               |
|1.13841  |NA (1686-1743)              |NA                                                   |NA                       |
|3.6265   |barker                      |thomas                                               |1722-1809)               |
|3.6269   |coxe                        |william                                              |1747-1828)               |
|3.6270   |harrison                    |david                                                |NA-NA)                   |
|4.1692   |hitchcock                   |robert                                               |1809-1809)               |
|3.6274   |phillips                    |edward                                               |1730-1740)               |
|3.6275   |sharpe                      |gregory                                              |1713-1771)               |
|3.6276   |stevenson                   |robert                                               |NA-NA)                   |
|3.6277   |sydall                      |elias                                                |1734-1734)               |
|3.6278   |wills                       |benjamin                                             |1748-1748)               |
|1.13844  |porterfield                 |james                                                |NA-NA)                   |
|1.13846  |baxter                      |john                                                 |NA-NA)                   |
|4.1696   |brunet                      |jean louis                                           |1688-1747)               |
|3.6293   |NA (1748-1748)              |NA                                                   |NA                       |
|1.13851  |forbes                      |duncan                                               |1685-1747)               |
|3.6295   |lloyd                       |henry                                                |1720-1783)               |
|3.6303   |macaulay                    |aulay                                                |1758-1819)               |
|3.6314   |wall                        |martin                                               |1747-1824)               |
|4.1699   |hervey                      |elizabeth                                            |1820-1820)               |
|3.6315   |ledwich                     |edward                                               |1738-1823)               |
|4.1702   |preston                     |william                                              |1742-1818)               |
|3.6334   |ashurst                     |henry                                                |1645-1711)               |
|3.6338   |homer                       |henry sacheverell                                    |1719-1791)               |
|3.6342   |hutchinson                  |john                                                 |1674-1737)               |
|1.13906  |brown                       |william                                              |NA-NA)                   |
|3.6363   |harris                      |james                                                |1709-1780)               |
|3.6366   |hamilton                    |william                                              |1730-1803)               |
|3.6371   |keith                       |alexander                                            |1758-1758)               |
|3.6388   |adolphus                    |john                                                 |1768-1845)               |
|3.6391   |fall                        |robert                                               |NA-NA)                   |
|1.13939  |hutchesson                  |mann                                                 |NA-NA)                   |
|3.6393   |NA (1711-1785)              |NA                                                   |NA                       |
|3.6395   |berington                   |simon                                                |1680-1755)               |
|3.6416   |brett                       |thomas                                               |1667-1744)               |
|3.6420   |spencer                     |joshua                                               |NA-NA)                   |
|3.6421   |trotter                     |john bernard                                         |1775-1818)               |
|3.6424   |quesnay de saint-germain    |robert-françois-joseph                               |1751-1805)               |
|3.6433   |fogg                        |lawrence                                             |1629-1718)               |
|3.6439   |serrent                     |armand louis                                         |1736-1822)               |
|3.6441   |papon                       |jean-pierre                                          |1734-1803)               |
|3.6447   |hamond                      |j                                                    |NA-NA)                   |
|1.13959  |webster                     |james                                                |1658-1720)               |
|3.6468   |cottingham                  |james henry                                          |1762-1762)               |
|3.6471   |kerr                        |charles                                              |NA-NA)                   |
|3.6476   |fawcett                     |benjamin                                             |1715-1780)               |
|4.1735   |fenn                        |ellenor                                              |1744-1813)               |
|3.6479   |grame                       |james                                                |1638-1710)               |
|1.13961  |planta                      |joseph                                               |1744-1827)               |
|1.13962  |young                       |william                                              |1749-1815)               |
|2.35     |le noble                    |eustache                                             |1643-1711)               |
|1.13963  |savile                      |christopher                                          |1738-1819)               |
|3.6493   |barwick                     |peter                                                |1619-1705)               |
|3.6494   |greenwood                   |john cox                                             |NA-NA)                   |
|3.6497   |huntington                  |william                                              |1745-1813)               |
|1.13967  |charrier                    |j samuel                                             |NA-NA)                   |
|3.6507   |clavière                    |étienne                                              |1735-1793)               |
|6.4017   |anderson                    |james                                                |1662-1728)               |
|3.6514   |guys                        |pierre-alphonse                                      |1755-1812)               |
|3.6521   |postlethwayt                |malachy                                              |1707-1767)               |
|3.6527   |shepherd                    |r                                                    |1732-1809)               |
|1.13970  |dunsford                    |martin                                               |1807-1807)               |
|6.4018   |NA (1688-1744)              |NA                                                   |NA                       |
|3.6530   |glas                        |john                                                 |1695-1773)               |
|1.13971  |brewster                    |john                                                 |1753-1842)               |
|3.6535   |sallo desvarennes           |michel armand                                        |1802-1802)               |
|1.13973  |fiddes                      |richard                                              |1671-1725)               |
|3.6558   |sherlock                    |martin                                               |1750-1797)               |
|3.6560   |trapp                       |joseph                                               |1749-1749)               |
|3.6567   |hervey                      |james                                                |1714-1758)               |
|3.6569   |osborn                      |sarah                                                |1714-1796)               |
|3.6574   |finch                       |william                                              |1747-1810)               |
|4.1764   |macaulay                    |kenneth                                              |1723-1779)               |
|3.6583   |NA (1756-1820)              |NA                                                   |NA                       |
|3.6592   |sullivan                    |john                                                 |1749-1839)               |
|3.6596   |hearne                      |thomas                                               |1678-1735)               |
|3.6600   |calvert                     |matthias                                             |NA-NA)                   |
|3.6602   |boot                        |thomas                                               |NA-NA)                   |
|3.6603   |hudson                      |joseph                                               |1719-1811)               |
|3.6607   |woolston                    |thomas                                               |1670-1733)               |
|3.6608   |clifford                    |robert                                               |NA-NA)                   |
|3.6612   |law                         |william                                              |1686-1761)               |
|3.6621   |chénier                     |louis de                                             |1722-1795)               |
|3.6624   |gray                        |andrew                                               |1633-1656)               |
|3.6630   |smith                       |james                                                |1749-1810)               |
|3.6631   |hamilton                    |archibald                                            |1754-1754)               |
|3.6633   |greenwood                   |j                                                    |NA-NA)                   |
|3.6635   |claustre                    |andré de                                             |NA-NA)                   |
|3.6637   |wellesley                   |richard                                              |1760-1842)               |
|1.13991  |essex                       |arthur capel                                         |1631-1683)               |
|3.6642   |wilford                     |thomas                                               |1530-1604)               |
|3.6645   |scipio                      |cornelius                                            |NA-NA)                   |
|1.13995  |williams                    |david                                                |1738-1816)               |
|3.6646   |pemberton                   |henry                                                |1694-1771)               |
|1.13997  |bannatyne                   |john                                                 |1641-1707)               |
|1.13998  |knox                        |thomas                                               |1708-1708)               |
|1.13999  |spotiswood                  |john                                                 |1667-1728)               |
|3.6667   |hervey                      |thomas                                               |1699-1775)               |
|1.14014  |robertson                   |william                                              |1740-1803)               |
|4.1782   |earle                       |jabez                                                |1676-1768)               |
|3.6700   |robins                      |benjamin                                             |1707-1751)               |
|1.14029  |lyttelton                   |george                                               |1709-1773)               |
|3.6704   |hayes                       |charles                                              |1678-1760)               |
|3.6705   |sheridan                    |charles francis                                      |1750-1806)               |
|3.6710   |bareau de girac             |françois                                             |1730-1820)               |
|1.14034  |duncan                      |william                                              |NA-NA)                   |
|4.1783   |brown                       |john                                                 |1722-1787)               |
|3.6724   |marat                       |jean paul                                            |1743-1793)               |
|3.6728   |NA (1766-1817)              |NA                                                   |NA                       |
|3.6731   |burrish                     |onslow                                               |NA-NA)                   |
|3.6732   |NA (1697-1781)              |NA                                                   |NA                       |
|3.6740   |sénac de meilhan            |gabriel                                              |1736-1803)               |
|6.4036   |hunt                        |isaac                                                |1742-1809)               |
|3.6750   |perronet                    |vincent                                              |1693-1785)               |
|4.1792   |wise                        |r                                                    |NA-NA)                   |
|4.1793   |lawrie                      |john                                                 |NA-NA)                   |
|1.14080  |martin                      |thomas                                               |1697-1771)               |
|3.6762   |orléans                     |louis philippe joseph                                |1747-1793)               |
|3.6763   |pulteney                    |richard                                              |1730-1801)               |
|4.1795   |hartley                     |david                                                |1705-1757)               |
|3.6832   |randolph                    |thomas                                               |1701-1783)               |
|6.4045   |dillenius                   |johann jakob                                         |1684-1747)               |
|4.1810   |craufurd                    |david                                                |1665-1726)               |
|6.4046   |duff                        |william                                              |1721-1750)               |
|1.14100  |willison                    |john                                                 |1680-1750)               |
|3.6843   |adamson                     |h                                                    |1581-1639)               |
|4.1817   |lindsay                     |robert                                               |1500-1565)               |
|3.6844   |rowles                      |samuel                                               |1743-1820)               |
|1.14106  |forster                     |benjamin                                             |1736-1805)               |
|3.6867   |bellamy                     |d                                                    |1788-1788)               |
|3.6870   |mcculloh                    |henry                                                |1778-1778)               |
|3.6872   |dutens                      |l                                                    |1730-1812)               |
|1.14111  |martine                     |george                                               |1635-1712)               |
|1.14112  |browne                      |james                                                |NA-NA)                   |
|3.6887   |browne                      |thomas                                               |1654-1741)               |
|3.6893   |william                     |david                                                |1720-1794)               |
|3.6894   |bevan                       |joseph gurney                                        |1753-1814)               |
|3.6896   |besse                       |joseph                                               |1683-1757)               |
|3.6899   |scott                       |andrew                                               |NA-NA)                   |
|1.14126  |lovat                       |simon fraser                                         |1668-1747)               |
|1.14129  |cottle                      |joseph                                               |1770-1853)               |
|3.6931   |snodgrass                   |john                                                 |1744-1797)               |
|3.6932   |scott                       |john                                                 |1730-1783)               |
|3.6936   |NA (1765-1837)              |NA                                                   |NA                       |
|4.1840   |lawrence                    |john                                                 |1753-1839)               |
|3.6946   |horn                        |john                                                 |NA-NA)                   |
|3.6948   |ducrest                     |charles-louis                                        |1747-1824)               |
|3.6957   |thicknesse                  |philip                                               |1719-1792)               |
|3.6969   |aikin                       |john                                                 |1747-1822)               |
|3.6976   |willis                      |henry norton                                         |NA-NA)                   |
|3.6986   |potter                      |john                                                 |1754-1804)               |
|3.6990   |salmon                      |thomas                                               |1648-1706)               |
|3.6996   |robinson                    |anthony                                              |1762-1827)               |
|3.6999   |power                       |richard                                              |NA-NA)                   |
|1.14145  |worsley                     |richard                                              |1751-1805)               |
|3.7010   |williamson                  |hugh                                                 |1735-1819)               |
|6.4053   |bruce                       |alexander                                            |1729-1729)               |
|3.7016   |espagnac                    |marc-rené-marie d'amarzit de sahuguet d'             |1752-1794)               |
|3.7019   |chesterfield                |philip dormer stanhope                               |1694-1773)               |
|3.7024   |acton                       |samuel                                               |1740-1740)               |
|1.14148  |allwood                     |philip                                               |NA-NA)                   |
|3.7029   |barclay                     |james                                                |NA-NA)                   |
|1.14149  |barry                       |edward                                               |1696-1776)               |
|3.7031   |atkinson                    |benjamin andrewes                                    |1680-1765)               |
|6.4057   |nash                        |treadway russell                                     |NA-NA)                   |
|3.7045   |butler                      |alban                                                |1711-1773)               |
|3.7047   |NA (1795-1795)              |NA                                                   |NA                       |
|4.1863   |ayloffe                     |w                                                    |NA-NA)                   |
|3.7057   |lowth                       |simon                                                |1630-1720)               |
|4.1864   |atkins                      |john                                                 |1685-1757)               |
|1.14153  |anderson                    |walter                                               |1723-1800)               |
|3.7062   |kennicott                   |benjamin                                             |1718-1783)               |
|3.7063   |oswald                      |james                                                |1793-1793)               |
|3.7068   |buchan                      |david stewart erskine                                |1742-1829)               |
|3.7079   |atwood                      |thomas                                               |1793-1793)               |
|3.7085   |adair                       |robert                                               |1763-1855)               |
|3.7086   |adams                       |george                                               |1750-1795)               |
|3.7087   |sidmouth                    |henry addington                                      |1757-1844)               |
|3.7092   |verheiden                   |willem                                               |1568-1596)               |
|3.7093   |bruce                       |john                                                 |1745-1826)               |
|3.7096   |bartram                     |william                                              |1739-1823)               |
|3.7099   |mastin                      |john                                                 |NA-NA)                   |
|3.7101   |lobo                        |jerónymo                                             |1596-1678)               |
|4.1867   |chetwood                    |w r                                                  |1766-1766)               |
|3.7109   |adlerfeld                   |gustavus                                             |1671-1709)               |
|1.14169  |martinelli                  |vincenzio                                            |1702-1785)               |
|3.7120   |gordon                      |alexander                                            |1669-1752)               |
|1.14170  |swinburne                   |henry                                                |1743-1803)               |
|3.7124   |retz                        |jean françois paul de gondi de                       |1613-1679)               |
|3.7126   |grosley                     |pierre jean                                          |1718-1785)               |
|4.1874   |creuz                       |friedrich karl casimir                               |1724-1770)               |
|4.1878   |NA (1627-1693)              |NA                                                   |NA                       |
|3.7132   |larkins                     |william                                              |NA-NA)                   |
|1.14175  |bateman                     |edmund                                               |1704-1751)               |
|3.7134   |craufurd                    |q                                                    |1743-1819)               |
|1.14177  |phillips                    |j                                                    |1792-1792)               |
|3.7153   |owen                        |j                                                    |1743-1743)               |
|3.7155   |read                        |henry                                                |1686-1774)               |
|4.1882   |ryland                      |john                                                 |1753-1825)               |
|3.7158   |wood                        |james                                                |1672-1759)               |
|4.1885   |m'cormick                   |charles                                              |1755-1807)               |
|6.4068   |dodd                        |charles                                              |1672-1743)               |
|4.1888   |goodall                     |walter                                               |1706-1766)               |
|4.1890   |eunson                      |g                                                    |NA-NA)                   |
|6.4069   |goodwin                     |thomas                                               |1650-1716)               |
|323.7    |decker                      |paul                                                 |NA-NA)                   |
|6.4072   |home                        |robert                                               |1752-1834)               |
|1.14181  |maccurtin                   |hugh                                                 |1680-1755)               |
|3.7179   |trumbull                    |john                                                 |1750-1831)               |
|3.7181   |tisdall                     |william                                              |1669-1735)               |
|6.4073   |hopkins                     |ezekiel                                              |1634-1690)               |
|3.7189   |macdonald                   |john                                                 |1741-1741)               |
|3.7190   |holmes                      |john                                                 |1703-1759)               |
|3.7194   |macfarlan                   |robert                                               |1734-1804)               |
|4.1900   |meilan                      |mark anthony                                         |1743-1743)               |
|3.7207   |townsend                    |george                                               |NA-NA)                   |
|1.14188  |macgregory                  |john                                                 |NA-NA)                   |
|3.7213   |johnston                    |james                                                |1643-1737)               |
|3.7216   |meister                     |leonhard                                             |1741-1811)               |
|3.7217   |gerard                      |alexander                                            |1728-1795)               |
|3.7219   |german                      |thomas                                               |NA-NA)                   |
|3.7221   |pechel                      |samuel                                               |NA-NA)                   |
|3.7224   |axford                      |john                                                 |NA-NA)                   |
|3.7225   |secker                      |thomas                                               |1693-1768)               |
|1.14191  |NA (1727-1790)              |NA                                                   |NA                       |
|3.7226   |kilner                      |dorothy                                              |1755-1836)               |
|1.14192  |dow                         |alexander                                            |1779-1779)               |
|3.7228   |muir                        |david                                                |1708-1780)               |
|3.7229   |NA ( 748- 823)              |NA                                                   |NA                       |
|1.14197  |williams                    |john                                                 |1783-1783)               |
|4.1921   |klopstock                   |friedrich gottlieb                                   |1724-1803)               |
|3.7240   |bristol                     |frederick william hervey                             |1769-1859)               |
|4.1924   |roustan                     |ant jaq                                              |NA-NA)                   |
|3.7244   |le couteur                  |john                                                 |1761-1835)               |
|3.7248   |patono                      |benedetto                                            |NA-NA)                   |
|3.7252   |mackensie                   |simon                                                |NA-NA)                   |
|4.1927   |young                       |john                                                 |NA-NA)                   |
|3.7256   |walker                      |samuel                                               |NA-NA)                   |
|3.7258   |simcoe                      |john graves                                          |1752-1806)               |
|3.7260   |grandpre                    |john                                                 |NA-NA)                   |
|1.14204  |copley                      |john singleton                                       |1738-1815)               |
|3.7266   |barrow                      |william                                              |1754-1836)               |
|3.7267   |barry                       |james                                                |1741-1806)               |
|3.7269   |thomson                     |william                                              |1746-1817)               |
|3.7273   |drake                       |nathan                                               |1766-1836)               |
|3.7275   |williams                    |william                                              |1785-1785)               |
|3.7277   |knowles                     |thomas                                               |1723-1802)               |
|1.14206  |knox                        |john                                                 |1778-1778)               |
|1.14207  |ray                         |james                                                |1700-1700)               |
|3.7279   |rawlins                     |gershom                                              |NA-NA)                   |
|3.7282   |rabadan                     |muhammad                                             |1603-1603)               |
|4.1941   |williams                    |william                                              |1717-1791)               |
|3.7302   |NA (1718-1718)              |NA                                                   |NA                       |
|3.7306   |jackson                     |william                                              |1737-1795)               |
|3.7307   |marriott                    |james                                                |1730-1803)               |
|1.14210  |james                       |thomas                                               |1782-1782)               |
|3.7308   |morgan                      |caesar                                               |1750-1812)               |
|4.1943   |paterson                    |daniel                                               |1738-1825)               |
|1.14221  |krasheninnikov              |stepan petrovich                                     |1713-1755)               |
|3.7325   |prenties                    |samuel waller                                        |NA-NA)                   |
|3.7326   |marshal                     |ebenezer                                             |1813-1813)               |
|3.7327   |balguy                      |john                                                 |1686-1748)               |
|4.1949   |martin                      |john                                                 |1741-1820)               |
|1.14222  |popham                      |edward                                               |1739-1815)               |
|4.1950   |dodd                        |william                                              |1729-1777)               |
|3.7336   |maclean                     |neil                                                 |NA-NA)                   |
|3.7340   |palissot de montenoy        |charles                                              |1730-1814)               |
|1.14226  |crasset                     |jean                                                 |1618-1692)               |
|3.7341   |gib                         |adam                                                 |1714-1788)               |
|1.14230  |macleod                     |hugh                                                 |NA-NA)                   |
|3.7342   |macleod                     |norman                                               |1754-1801)               |
|6.4079   |quelch                      |john                                                 |1665-1704)               |
|6.4080   |giannone                    |pietro                                               |1676-1748)               |
|3.7347   |rawlinson                   |richard                                              |1690-1755)               |
|3.7348   |mcloughlin                  |martin                                               |1798-1798)               |
|3.7349   |campbell                    |archibald                                            |1726-1780)               |
|1.14232  |vivers                      |richard                                              |1727-1727)               |
|3.7358   |willich                     |f m                                                  |1776-1776)               |
|3.7361   |trapaud                     |elisha                                               |NA-NA)                   |
|6.4082   |willyams                    |cooper                                               |1762-1816)               |
|1.14234  |gibson                      |matthew                                              |1681-1741)               |
|3.7368   |gibson                      |william                                              |1725-1725)               |
|1.14235  |le courayer                 |pierre françois                                      |1681-1776)               |
|3.7382   |laurence                    |r                                                    |1670-1736)               |
|4.1962   |dodd                        |james solas                                          |1721-1805)               |
|3.7384   |holmes                      |samuel                                               |NA-NA)                   |
|3.7385   |kirby                       |john joshua                                          |1716-1774)               |
|3.7388   |wilson                      |charles henry                                        |NA-NA)                   |
|3.7389   |king                        |samuel                                               |1789-1789)               |
|328.6    |postlethwayt                |james                                                |1761-1761)               |
|4.1963   |reeve                       |clara                                                |1729-1807)               |
|1.14238  |king                        |john glen                                            |1732-1787)               |
|3.7400   |alves                       |robert                                               |1745-1794)               |
|6.4084   |kimpton                     |edward                                               |1765-1813)               |
|4.1964   |hanson                      |elizabeth                                            |1684-1737)               |
|3.7403   |seytfort                    |c g                                                  |NA-NA)                   |
|3.7406   |philpot                     |charles                                              |1760-1823)               |
|6.4085   |fischer von erlach          |johann bernhard                                      |1656-1723)               |
|3.7410   |NA (1621-1696)              |NA                                                   |NA                       |
|3.7411   |french                      |george                                               |NA-NA)                   |
|3.7416   |payba                       |abraham                                              |NA-NA)                   |
|3.7418   |reck                        |philipp georg friedrich von                          |1710-1798)               |
|3.7423   |fordun                      |john                                                 |1384-1384)               |
|3.7424   |goodwin                     |thomas                                               |1600-1680)               |
|3.7437   |dubourdieu                  |jean-armand                                          |1680-1726)               |
|3.7440   |quincy                      |josiah                                               |1744-1775)               |
|3.7441   |evanson                     |edward                                               |1731-1805)               |
|3.7443   |shirley                     |william                                              |1739-1780)               |
|5.4489   |macpherson                  |donald                                               |NA-NA)                   |
|3.7456   |tailfer                     |patrick                                              |NA-NA)                   |
|3.7458   |tallents                    |francis                                              |1619-1708)               |
|1.14259  |burke                       |william                                              |1730-1798)               |
|3.7459   |taitt                       |alexander                                            |NA-NA)                   |
|3.7461   |fitzgerald                  |gerald                                               |1740-1819)               |
|3.7462   |fitzgerald                  |george robert                                        |1746-1786)               |
|1.14261  |england                     |george                                               |NA-NA)                   |
|3.7469   |macquer                     |philippe                                             |1720-1770)               |
|4.1977   |wedgwood                    |josiah                                               |1730-1795)               |
|3.7471   |burdon                      |william                                              |1764-1818)               |
|3.7472   |berwick                     |james fitzjames                                      |1670-1734)               |
|3.7474   |willis                      |r legge                                              |NA-NA)                   |
|3.7477   |maddock                     |henry                                                |1824-1824)               |
|3.7481   |molyneux                    |william                                              |1656-1698)               |
|3.7482   |anburey                     |thomas                                               |NA-NA)                   |
|3.7486   |NA (1753-1777)              |NA                                                   |NA                       |
|4.1979   |maurice                     |matthias                                             |1684-1738)               |
|3.7493   |auld                        |william                                              |NA-NA)                   |
|3.7495   |gill                        |jeremiah                                             |1668-1709)               |
|1.14266  |ruggles                     |thomas                                               |1737-1813)               |
|6.4098   |peck                        |francis                                              |1692-1743)               |
|3.7500   |peckard                     |peter                                                |1718-1797)               |
|3.7501   |peddie                      |james                                                |1758-1845)               |
|3.7503   |thompson                    |john                                                 |NA-NA)                   |
|3.7504   |seze                        |raymond de                                           |1748-1828)               |
|3.7514   |moncrieff                   |alexander                                            |1695-1761)               |
|6.4100   |mayo                        |charles                                              |1750-1829)               |
|3.7523   |glave-kolbielski            |karol fryderyk                                       |1750-1831)               |
|3.7528   |m'ure                       |john                                                 |NA-NA)                   |
|1.14271  |oldfield                    |henry george                                         |NA-NA)                   |
|10.3911  |barrow                      |joseph charles                                       |NA-NA)                   |
|3.7536   |walch                       |christian wilhelm franz                              |1726-1784)               |
|3.7537   |wakefield                   |gilbert                                              |1756-1801)               |
|3.7538   |wakefield                   |priscilla                                            |1751-1832)               |
|3.7542   |saint-pierre                |charles irénée castel de                             |1658-1743)               |
|4.1983   |saint pierre                |charles irénée castel de                             |1658-1743)               |
|3.7545   |montagu                     |edward wortley                                       |1713-1776)               |
|3.7551   |NA (1780-1780)              |NA                                                   |NA                       |
|3.7553   |uring                       |nathaniel                                            |NA-NA)                   |
|3.7554   |smith                       |george                                               |NA-NA)                   |
|3.7555   |thorold                     |john                                                 |1703-1775)               |
|6.4103   |thou                        |jacques auguste de                                   |1553-1617)               |
|3.7561   |aumont                      |j b d'                                               |NA-NA)                   |
|3.7562   |latocnaye                   |de                                                   |NA-NA)                   |
|3.7563   |frend                       |william                                              |1757-1841)               |
|1.14276  |thornhill                   |henry                                                |NA-NA)                   |
|3.7567   |downes                      |john                                                 |1661-1719)               |
|3.7571   |morgan                      |edward                                               |1767-1767)               |
|4.1992   |thumb                       |thomas                                               |NA-NA)                   |
|3.7574   |le pointe                   |thomas                                               |NA-NA)                   |
|3.7575   |fauchet                     |joseph                                               |1761-1834)               |
|3.7584   |hewat                       |alexander                                            |NA-NA)                   |
|3.7585   |smith                       |joseph                                               |1670-1756)               |
|6.4108   |majendie                    |lewis                                                |1833-1833)               |
|3.7591   |massey                      |charles                                              |1695-1766)               |
|3.7602   |owen                        |john                                                 |1766-1822)               |
|4.1997   |NA (  18-  18)              |NA                                                   |NA                       |
|3.7603   |bedford                     |arthur                                               |1668-1745)               |
|3.7604   |hurtley                     |thomas                                               |NA-NA)                   |
|3.7605   |hutchinson                  |francis                                              |1661-1739)               |
|3.7614   |vilain                      |charles joseph françois                               |1759-1759)               |
|1.14288  |major                       |john                                                 |1469-1550)               |
|3.7615   |maittaire                   |michael                                              |1667-1747)               |
|3.7617   |bennet                      |benjamin                                             |1674-1726)               |
|3.7619   |robinson                    |benjamin                                             |1666-1724)               |
|3.7620   |birch                       |john                                                 |1745-1815)               |
|3.7622   |roberts                     |william                                              |1673-1673)               |
|4.2000   |owen                        |w                                                    |1793-1793)               |
|3.7625   |roberts                     |daniel                                               |1658-1727)               |
|3.7626   |roberts                     |john christopher                                     |1739-1810)               |
|3.7629   |glascott                    |cradock                                              |1743-1831)               |
|3.7631   |gilpin                      |william                                              |1724-1804)               |
|3.7633   |bobbin                      |tim                                                  |1708-1786)               |
|1.14292  |roberts                     |william                                              |1763-1763)               |
|3.7641   |benyowsky                   |maurice auguste                                      |1746-1786)               |
|3.7642   |dorrington                  |theophilus                                           |1715-1715)               |
|3.7643   |atkey                       |anthony                                              |1702-1734)               |
|3.7648   |robson                      |joseph                                               |NA-NA)                   |
|4.2005   |wieland                     |christoph martin                                     |1733-1813)               |
|3.7650   |carlyle                     |alexander                                            |1722-1805)               |
|3.7653   |matthews                    |john                                                 |NA-NA)                   |
|1.14298  |malet                       |jean-roland                                          |NA-NA)                   |
|3.7661   |searle                      |charles                                              |NA-NA)                   |
|3.7675   |butler                      |joseph                                               |1692-1752)               |
|3.7676   |pluche                      |noël antoine                                          |1688-1761)               |
|1.14300  |morley                      |thomas                                               |1557-1603)               |
|6.4131   |natter                      |lorenz                                               |1705-1763)               |
|3.7688   |beaumarchais                |pierre augustin caron de                             |1732-1799)               |
|3.7689   |mangey                      |thomas                                               |1688-1755)               |
|6.4133   |berkenhout                  |john                                                 |1730-1791)               |
|3.7690   |king                        |henry                                                |1592-1669)               |
|3.7694   |arlington                   |henry bennet                                         |1618-1685)               |
|1.14305  |grant                       |john                                                 |1653-1736)               |
|3.7698   |hughes                      |obadiah                                              |1695-1751)               |
|3.7702   |stennett                    |samuel                                               |1727-1795)               |
|4.2022   |belfour                     |john                                                 |NA-NA)                   |
|3.7704   |brown                       |john                                                 |1715-1766)               |
|1.14310  |strutt                      |joseph                                               |1749-1802)               |
|1.14311  |seacome                     |john                                                 |NA-NA)                   |
|3.7710   |norris                      |charles                                              |1718-1718)               |
|3.7714   |morton                      |elizabeth                                            |NA-NA)                   |
|1.14313  |gutheridge                  |james                                                |NA-NA)                   |
|3.7738   |egmont                      |john perceval                                        |1711-1770)               |
|3.7742   |montgomery                  |robert                                               |1680-1731)               |
|3.7748   |sayre                       |stephen                                              |1736-1818)               |
|3.7750   |dundonald                   |archibald cochrane                                   |1749-1831)               |
|3.7753   |fowler                      |john                                                 |1774-1774)               |
|3.7754   |NA (1770-1770)              |NA                                                   |NA                       |
|3.7759   |stone                       |francis                                              |1738-1813)               |
|1.14320  |tresham                     |henry                                                |1749-1814)               |
|3.7766   |dubos                       |abbé                                                 |1670-1742)               |
|3.7772   |stacpoole                   |george                                               |NA-NA)                   |
|4.2023   |murry                       |ann                                                  |NA-NA)                   |
|3.7776   |paul                        |george                                               |1672-1714)               |
|3.7783   |pitt                        |thomas                                               |1760-1760)               |
|3.7786   |newcome                     |susanna                                              |NA-NA)                   |
|3.7792   |cobbold                     |john spencer                                         |NA-NA)                   |
|6.4139   |rouire                      |jean                                                 |NA-NA)                   |
|3.7794   |rutherfurd                  |john                                                 |NA-NA)                   |
|3.7797   |traill                      |robert                                               |1642-1716)               |
|1.14326  |caddel                      |robert                                               |NA-NA)                   |
|4.2024   |punderson                   |ebenezer                                             |NA-NA)                   |
|3.7799   |dawes                       |m                                                    |1829-1829)               |
|3.7802   |bulkeley                    |benjamin                                             |1688-1688)               |
|3.7808   |bentham                     |jeremy                                               |1748-1832)               |
|3.7815   |delany                      |patrick                                              |1686-1768)               |
|3.7818   |kirkpatrick                 |robert                                               |NA-NA)                   |
|3.7825   |dawson                      |thomas                                               |1676-1740)               |
|6.4140   |cowley                      |charlotte                                            |NA-NA)                   |
|3.7826   |colliber                    |samuel                                               |NA-NA)                   |
|3.7827   |eveleigh                    |josiah                                               |1736-1736)               |
|3.7835   |long                        |edward                                               |1735-1813)               |
|3.7836   |croft                       |r                                                    |NA-NA)                   |
|1.14330  |clarke                      |edward                                               |1730-1786)               |
|3.7841   |winter                      |richard                                              |1720-1799)               |
|1.14331  |upton                       |catharine                                            |NA-NA)                   |
|3.7848   |stennett                    |joseph                                               |1692-1758)               |
|3.7849   |bowden                      |john                                                 |1750-1750)               |
|3.7851   |clifton                     |francis                                              |1736-1736)               |
|1.14335  |coleridge                   |john                                                 |1719-1781)               |
|3.7854   |sharpe                      |isaac                                                |1695-1718)               |
|3.7856   |flower                      |benjamin                                             |1755-1829)               |
|3.7857   |gradin                      |arvid                                                |NA-NA)                   |
|4.2037   |louvreleul                  |jean-baptiste                                        |1660-1660)               |
|1.14336  |bromley                     |robert anthony                                       |1735-1806)               |
|1.14337  |guicciardini                |lodovico                                             |1521-1589)               |
|3.7860   |sparrow                     |samuel                                               |1776-1776)               |
|3.7866   |decker                      |matthew                                              |1679-1749)               |
|4.2042   |downing                     |clement                                              |NA-NA)                   |
|3.7869   |pétis                       |françois                                             |1622-1695)               |
|3.7870   |shaw                        |james                                                |1786-1786)               |
|3.7871   |perry                       |john                                                 |1670-1732)               |
|1.14341  |diot                        |h e                                                  |NA-NA)                   |
|1.14342  |pittman                     |philip                                               |NA-NA)                   |
|3.7874   |fayette                     |marie joseph paul roche yves gilbert du motier       |1757-1834)               |
|4.2043   |cornish                     |joseph                                               |1750-1823)               |
|4.2045   |pennecuik                   |alexander                                            |1730-1730)               |
|3.7882   |somervile                   |william                                              |1675-1742)               |
|3.7886   |bouillé                     |françois-claude-amour                                |1739-1800)               |
|3.7887   |heckford                    |william                                              |NA-NA)                   |
|3.7888   |lombard                     |daniel                                               |1678-1746)               |
|3.7889   |révérend                    |dominique                                            |1648-1734)               |
|3.7891   |moodie                      |john                                                 |NA-NA)                   |
|4.2054   |motte                       |yves-joseph                                          |NA-NA)                   |
|3.7896   |sinclair                    |john gordon                                          |NA-NA)                   |
|3.7897   |smart                       |john                                                 |NA-NA)                   |
|7.43     |johnson                     |joseph                                               |1738-1809)               |
|1.14350  |eden                        |robert                                               |1701-1759)               |
|1.14352  |venault de charmilly        |p f                                                  |NA-NA)                   |
|1.14353  |evans                       |lewis                                                |1700-1756)               |
|1.14358  |jenkins                     |joseph                                               |active 1702-1736)        |
|6.4151   |spencer                     |george william                                       |NA-NA)                   |
|3.7907   |macaulay                    |alexander                                            |1766-1766)               |
|3.7911   |wheelock                    |matthew                                              |NA-NA)                   |
|4.2061   |maubert de gouvest          |jean-henri                                           |1721-1767)               |
|3.7919   |catcott                     |s                                                    |1692-1749)               |
|4.2065   |quesnel                     |pierre                                               |1699-1774)               |
|6.4154   |dennett                     |r                                                    |NA-NA)                   |
|1.14361  |ellis                       |henry                                                |1777-1869)               |
|4.2067   |loch                        |david                                                |1780-1780)               |
|3.7930   |reresby                     |john                                                 |1634-1689)               |
|3.7932   |liverpool                   |charles jenkinson                                    |1727-1808)               |
|3.7934   |phillips                    |catharine                                            |1727-1794)               |
|3.7937   |kent                        |john                                                 |1785-1785)               |
|1.14365  |bruys                       |françois                                             |1708-1738)               |
|3.7945   |hart                        |edward                                               |1672-1672)               |
|3.7948   |cobbe                       |richard                                              |NA-NA)                   |
|3.7950   |heywood                     |james                                                |1718-1787)               |
|3.7953   |dwight                      |timothy                                              |1752-1817)               |
|3.7955   |townley                     |james                                                |1714-1778)               |
|1.14371  |dillon                      |john talbot                                          |1740-1805)               |
|1.14372  |kent                        |ambrose                                              |1728-1793)               |
|3.7960   |casaux                      |charles                                              |1727-1796)               |
|5.4492   |hicks                       |francis                                              |NA-NA)                   |
|3.7977   |goudemetz                   |henry                                                |1749-1826)               |
|3.7978   |jordan                      |camille                                              |1771-1821)               |
|3.7979   |halhed                      |nathaniel brassey                                    |1751-1830)               |
|3.7980   |du roveray                  |jaques-antoine                                       |1747-1814)               |
|1.14376  |bristol                     |augustus john hervey                                 |1724-1779)               |
|3.8003   |raimbert                    |m                                                    |NA-NA)                   |
|3.8005   |NA (1752-1824)              |NA                                                   |NA                       |
|1.14381  |long                        |charles                                              |1761-1838)               |
|3.8017   |short                       |j                                                    |NA-NA)                   |
|3.8024   |archdall                    |n                                                    |NA-NA)                   |
|3.8028   |oldbottom                   |obadiah                                              |NA-NA)                   |
|1.14383  |grant                       |william                                              |1781-1781)               |
|3.8040   |euzénou de kersalaun        |jean-vincent                                         |1753-1823)               |
|4.2087   |reeves                      |george                                               |NA-NA)                   |
|3.8051   |disraeli                    |isaac                                                |1766-1848)               |
|3.8053   |elchies                     |patrick grant                                        |1690-1754)               |
|3.8054   |habesci                     |elias                                                |NA-NA)                   |
|3.8059   |despaze                     |joseph                                               |1769-1814)               |
|3.8060   |polignac                    |diane                                                |NA-NA)                   |
|3.8069   |thomas                      |m                                                    |1732-1785)               |
|3.8070   |duncan                      |alexander                                            |1816-1816)               |
|3.8073   |clarke                      |william                                              |1709-1760)               |
|3.8083   |brucker                     |johann jakob                                         |1696-1770)               |
|3.8086   |bethel                      |isaac burke                                          |NA-NA)                   |
|3.8092   |stockdale                   |percival                                             |1736-1811)               |
|3.8094   |grattan                     |james                                                |1766-1766)               |
|4.2095   |stewart                     |george                                               |1787-1787)               |
|3.8099   |russell                     |thomas                                               |1767-1803)               |
|3.8105   |ramel                       |jean-pierre                                          |1768-1815)               |
|3.8108   |NA (1744-1817)              |NA                                                   |NA                       |
|4.2100   |gibbes                      |philip                                               |1731-1815)               |
|3.8112   |ferguson                    |c                                                    |NA-NA)                   |
|3.8114   |somerville                  |thomas                                               |1741-1830)               |
|3.8116   |marche                      |jean françois de                                     |1729-1806)               |
|3.8120   |pichon                      |thomas                                               |1700-1781)               |
|3.8124   |howie                       |john                                                 |1735-1793)               |
|3.8125   |henderson                   |andrew                                               |1734-1775)               |
|4.2103   |jung                        |philippe                                             |NA-NA)                   |
|3.8133   |hanger                      |george                                               |1751-1824)               |
|1.14399  |wise                        |thomas turner                                        |NA-NA)                   |
|3.8134   |spelman                     |edward                                               |1767-1767)               |
|3.8137   |lloyd                       |john                                                 |NA-NA)                   |
|1.14400  |ker                         |john                                                 |1741-1741)               |
|3.8151   |parker                      |robert                                               |1665-1665)               |
|1.14403  |campbell                    |donald                                               |NA-NA)                   |
|3.8165   |scherer                     |jean benoı̂t                                           |1741-1741)               |
|4.2112   |schwan                      |christian friedrich                                  |NA-NA)                   |
|4.2113   |lacombe                     |jacques                                              |1724-1811)               |
|3.8169   |krusínski                   |judas thaddaeus                                      |NA-NA)                   |
|4.2118   |wilkinson                   |tate                                                 |1739-1803)               |
|4.2119   |grey                        |g                                                    |NA-NA)                   |
|3.8173   |lomonosov                   |mikhail vasilʹevich                                  |1711-1765)               |
|3.8175   |proctor                     |william                                              |NA-NA)                   |
|4.2125   |gorgy                       |jean-claude                                          |1753-1795)               |
|1.14406  |roscoe                      |william                                              |1753-1831)               |
|3.8181   |NA (1709-1785)              |NA                                                   |NA                       |
|3.8185   |hodge                       |john                                                 |1767-1767)               |
|3.8196   |o'keeffe                    |j a                                                  |NA-NA)                   |
|3.8203   |surville                    |louis-charles de hautefort                           |1658-1721)               |
|3.8206   |oakes                       |henry                                                |1756-1827)               |
|4.2134   |orem                        |william                                              |NA-NA)                   |
|1.14418  |englefield                  |henry                                                |1752-1822)               |
|3.8214   |NA (1614-1614)              |NA                                                   |NA                       |
|3.8215   |turner                      |david                                                |NA-NA)                   |
|3.8216   |walpole                     |horatio                                              |1678-1757)               |
|3.8221   |NA (1726-1773)              |NA                                                   |NA                       |
|6.4175   |le neve                     |john                                                 |1679-1741)               |
|3.8223   |hody                        |humphrey                                             |1659-1707)               |
|1.14421  |stuart                      |james                                                |1793-1793)               |
|3.8225   |schofield                   |james                                                |1798-1798)               |
|4.2140   |saint-maurice de saint-leu  |de                                                   |1743-1803)               |
|3.8227   |hertzberg                   |ewald friedrich                                      |1725-1795)               |
|1.14422  |hinderwell                  |thomas                                               |1744-1825)               |
|3.8232   |bertezen                    |salvatore                                            |1780-1792)               |
|3.8234   |mirabeau                    |gabriel-honoré de riquetti                            |1749-1791)               |
|6.4177   |borghese                    |antonio d r                                          |NA-NA)                   |
|4.2143   |perreciot                   |claude-joseph                                        |1728-1798)               |
|3.8237   |le scène-desmaisons         |jacques                                              |1750-1808)               |
|3.8238   |beckford                    |william                                              |1799-1799)               |
|3.8240   |hallet                      |joseph                                               |1692-1744)               |
|6.4180   |disney                      |john                                                 |1677-1730)               |
|1.14427  |clüver                      |philipp                                              |1580-1622)               |
|3.8246   |tily                        |joseph                                               |NA-NA)                   |
|3.8247   |raitt                       |james                                                |1777-1777)               |
|3.8250   |millar                      |robert                                               |1672-1752)               |
|1.14428  |lowth                       |robert                                               |1710-1787)               |
|3.8255   |pointis                     |jean-bernard-louis                                   |1645-1707)               |
|6.4184   |lewis                       |john                                                 |1702-1702)               |
|1.14431  |conde                       |louis                                                |1530-1569)               |
|3.8258   |stedman                     |c                                                    |1753-1812)               |
|3.8260   |rolle                       |denys                                                |1797-1797)               |
|3.8263   |artis                       |gabriel d'                                           |1730-1730)               |
|6.4186   |gordon                      |john                                                 |1715-1775)               |
|4.2152   |denis                       |jean-baptiste                                        |1676-1676)               |
|3.8273   |NA (1768-1768)              |NA                                                   |NA                       |
|3.8274   |pezron                      |paul                                                 |1639-1706)               |
|4.2159   |blair                       |john                                                 |1782-1782)               |
|1.14443  |de saumarez                 |henry                                                |1655-1655)               |
|385      |fare                        |charles-auguste                                      |1644-1712)               |
|3.8281   |comazzi                     |giovanni battista                                    |1654-1711)               |
|3.8282   |hénault                     |charles-jean-françois                                |1685-1770)               |
|3.8286   |taylor                      |james                                                |1707-1753)               |
|4.2166   |neale                       |hannah                                               |NA-NA)                   |
|3.8291   |dalrymple                   |james                                                |1714-1714)               |
|4.2167   |warburton                   |john                                                 |NA-NA)                   |
|4.2171   |fontenelle                  |bernard le bovier de                                 |1657-1757)               |
|3.8299   |NA (1744-1744)              |NA                                                   |NA                       |
|4.2172   |NA (1711-1780)              |NA                                                   |NA                       |
|4.2174   |shuttleworth                |humphrey                                             |1735-1812)               |
|1.14448  |gordon                      |john                                                 |???NA-NA)                |
|5.4496   |hall                        |jacob                                                |NA-NA)                   |
|1.14450  |randal                      |thomas                                               |NA-NA)                   |
|6.4193   |francia                     |francis                                              |NA-NA)                   |
|1.14452  |seymour                     |edward                                               |1764-1764)               |
|6.4194   |howe                        |john                                                 |1630-1705)               |
|3.8332   |deschamps                   |michel                                               |NA-NA)                   |
|3.8337   |boulter                     |hugh                                                 |1672-1742)               |
|3.8340   |rigby                       |richard                                              |1722-1788)               |
|1.14459  |keith                       |william                                              |1680-1749)               |
|3.8341   |st⁰ahlberg                  |georg georgson                                       |NA-NA)                   |
|1.14461  |horsley                     |william                                              |1701-1776)               |
|3.8342   |burton                      |philip                                               |1792-1792)               |
|3.8343   |gravina                     |gianvincenzo                                         |1664-1718)               |
|1.14462  |turretin                    |jean-alphonse                                        |1671-1737)               |
|4.2187   |NA (1658-1733)              |NA                                                   |NA                       |
|4.2188   |devérité                    |louis-alexandre                                      |1746-1818)               |
|1.14464  |forster                     |nathaniel                                            |1727-1790)               |
|3.8356   |mottraye                    |aubry de                                             |1674-1743)               |
|3.8357   |oldfield                    |t h b                                                |1755-1822)               |
|3.8358   |NA (1552-1552)              |NA                                                   |NA                       |
|1.14468  |langwith                    |benjamin                                             |1684-1743)               |
|3.8369   |turner                      |john                                                 |1660-1720)               |
|4.2193   |NA (1436-1506)              |NA                                                   |NA                       |
|6.4197   |jones                       |edward                                               |1752-1824)               |
|3.8372   |boucher                     |jonathan                                             |1738-1804)               |
|3.8375   |biscoe                      |richard                                              |1670-1748)               |
|1.14484  |accarias de sérionne        |jacques                                              |1706-1792)               |
|3.8385   |st amand                    |george                                               |NA-NA)                   |
|3.8386   |greene                      |robert                                               |1678-1730)               |
|3.8387   |webb                        |daniel                                               |1719-1798)               |
|4.2195   |rider                       |william                                              |1723-1785)               |
|3.8391   |saltoun                     |alexander fraser                                     |1758-1793)               |
|3.8392   |butler                      |charles                                              |1750-1832)               |
|1.14487  |jones                       |lewis tobias                                         |NA-NA)                   |
|1.14488  |cabrera                     |juan tomás enríquez de                               |1652-1705)               |
|3.8397   |tytler                      |james                                                |NA-NA)                   |
|3.8399   |yeats                       |g d                                                  |1773-1836)               |
|3.8400   |russell                     |alexander                                            |NA-NA)                   |
|3.8405   |mignot                      |vincent                                              |1730-1791)               |
|3.8407   |desroches de parthenay      |jean-baptiste                                        |1690-1766)               |
|3.8409   |krusinśki                    |judas thaddaeus                                      |NA-NA)                   |
|3.8410   |lirou                       |jean-françois espic de                               |1740-1806)               |
|3.8413   |jourdan                     |jean-baptiste                                        |1762-1833)               |
|1.14491  |graves                      |john                                                 |NA-NA)                   |
|6.4198   |jones                       |edward                                               |active 1771-1831)        |
|3.8417   |capellen                    |joan derk van der                                    |1741-1784)               |
|4.2202   |taylor                      |thomas                                               |1738-1816)               |
|3.8418   |dease                       |william                                              |1752-1798)               |
|1.14492  |davies                      |rowland                                              |1649-1721)               |
|3.8421   |edwards                     |thomas                                               |1729-1785)               |
|3.8426   |alembert                    |jean lerond d'                                       |1717-1783)               |
|4.2204   |burckhard                   |johann gottlieb                                      |1756-1800)               |
|3.8432   |bintinaie                   |agathon marie rené de                                |NA-NA)                   |
|3.8433   |gordon                      |william                                              |1728-1807)               |
|3.8434   |penrose                     |thomas                                               |1769-1851)               |
|3.8436   |stewart                     |john                                                 |1749-1822)               |
|3.8439   |hudson                      |thomas                                               |1765-1765)               |
|3.8440   |greene                      |john                                                 |NA-NA)                   |
|3.8441   |buonamici                   |castruccio                                           |1710-1761)               |
|3.8446   |minucius felix              |marcus                                               |NA-NA)                   |
|1.14493  |heath                       |benjamin                                             |1704-1766)               |
|3.8452   |NA (1688-1688)              |NA                                                   |NA                       |
|3.8455   |villette                    |john                                                 |1799-1799)               |
|3.8462   |bickerstaff                 |isaac                                                |NA-NA)                   |
|6.4201   |venner                      |samuel                                               |NA-NA)                   |
|1.14496  |allan                       |george                                               |1736-1800)               |
|3.8470   |ross                        |alexander                                            |???NA-NA)                |
|1.14499  |fagel                       |françois nicolaas                                    |1655-1718)               |
|3.8471   |fry                         |edmund                                               |1754-1835)               |
|3.8477   |fennell                     |james                                                |1766-1816)               |
|3.8483   |sheares                     |henry                                                |1753-1798)               |
|3.8484   |blennerhassett              |william                                              |NA-NA)                   |
|3.8485   |parker                      |benjamin                                             |1747-1747)               |
|3.8486   |m'farlan                    |john                                                 |NA-NA)                   |
|3.8495   |bradstreet                  |john                                                 |1711-1774)               |
|4.2213   |armstrong                   |john                                                 |1758-1758)               |
|4.2214   |crossman                    |henry                                                |1711-1792)               |
|3.8502   |minot                       |laurence                                             |1300-1352)               |
|6.4206   |NA (1709-1709)              |NA                                                   |NA                       |
|6.4207   |colcott                     |george                                               |NA-NA)                   |
|1.14510  |rowley                      |william                                              |1742-1806)               |
|4.2225   |turner                      |r                                                    |1753-1788)               |
|3.8510   |newton                      |william                                              |1744-1744)               |
|4.2229   |trenck                      |friedrich                                            |1726-1794)               |
|3.8513   |hall                        |r                                                    |1654-1654)               |
|323.12   |winlaw                      |william                                              |NA-NA)                   |
|4.2247   |ridgway                     |james                                                |NA-NA)                   |
|3.8517   |taylor                      |william                                              |1748-1825)               |
|3.8518   |bellomont                   |charles coote                                        |1738-1800)               |
|3.8523   |lothian                     |william                                              |1740-1783)               |
|3.8525   |ramsay                      |james                                                |1824-1824)               |
|1.14517  |sketchley                   |william                                              |NA-NA)                   |
|4.2254   |johnson                     |r                                                    |1772-1772)               |
|1.14521  |armour                      |james                                                |1702-1722)               |
|1.14522  |allen                       |richard                                              |1640-1717)               |
|3.8561   |willis                      |william                                              |1748-1827)               |
|4.2261   |dickson                     |william steel                                        |1744-1824)               |
|3.8574   |NA ( 407- 407)              |NA                                                   |NA                       |
|3.8583   |baird                       |john                                                 |1804-1804)               |
|1.14527  |kearney                     |michael                                              |1733-1814)               |
|3.8595   |pigott                      |charles                                              |1794-1794)               |
|3.8609   |symson                      |david                                                |NA-NA)                   |
|3.8617   |goulon                      |louis                                                |1640-1640)               |
|3.8623   |garat                       |dominique-joseph                                     |1749-1833)               |
|3.8624   |withy                       |n                                                    |NA-NA)                   |
|3.8626   |maistre                     |joseph marie                                         |1753-1821)               |
|3.8641   |gray                        |john                                                 |1724-1811)               |
|3.8644   |fry                         |thomas                                               |1769-1769)               |
|3.8649   |NA (1774-1774)              |NA                                                   |NA                       |
|3.8652   |short                       |thomas                                               |1690-1772)               |
|6.4219   |manton                      |thomas                                               |NA-NA)                   |
|1.14537  |mante                       |thomas                                               |1772-1772)               |
|3.8662   |manucci                     |niccolao                                             |1639-1717)               |
|3.8666   |bruce                       |archibald                                            |1746-1816)               |
|3.8682   |manwaring                   |edward                                               |NA-NA)                   |
|3.8683   |juvenel de carlencas        |félix de                                             |1679-1760)               |
|3.8685   |canne                       |john                                                 |1766-1766)               |
|3.8692   |mercy-argenteau             |florimond-claude                                     |1727-1794)               |
|6.4223   |saurin                      |jacques                                              |1677-1730)               |
|6.4224   |kaempfer                    |engelbert                                            |1651-1716)               |
|3.8697   |menin                       |nicolas                                              |1684-1770)               |
|4.2281   |deacon                      |thomas                                               |1697-1753)               |
|4.2284   |court de gébelin            |antoine                                              |1725-1784)               |
|1.14544  |meirs                       |john                                                 |NA-NA)                   |
|1.14545  |meerman                     |gerard                                               |1722-1771)               |
|3.8721   |gouge                       |thomas                                               |1609-1681)               |
|3.8725   |marchant                    |john                                                 |NA-NA)                   |
|3.8726   |furetière                   |antoine                                              |1619-1688)               |
|1.14546  |archdale                    |john                                                 |1642-1717)               |
|3.8727   |vilate                      |joachim                                              |1768-1795)               |
|3.8728   |riouffe                     |honoré                                               |1764-1813)               |
|3.8733   |partridge                   |joseph                                               |1724-1796)               |
|6.4230   |lumley                      |george                                               |1739-1739)               |
|6.4231   |luther                      |martin                                               |1483-1546)               |
|4.2292   |lussan                      |marguerite de                                        |1682-1758)               |
|3.8739   |boscawen                    |william                                              |1752-1811)               |
|3.8743   |fellows                     |john                                                 |1785-1785)               |
|4.2296   |gardenstone                 |francis garden                                       |1721-1793)               |
|3.8749   |nares                       |robert                                               |1753-1829)               |
|3.8750   |naismith                    |john                                                 |NA-NA)                   |
|3.8753   |young                       |edward                                               |1683-1765)               |
|6.4235   |blomefield                  |francis                                              |1705-1752)               |
|3.8761   |michaelis                   |johann david                                         |1717-1791)               |
|1.14551  |young                       |mary julia                                           |NA-NA)                   |
|3.8765   |curioni                     |antonio                                              |NA-NA)                   |
|3.8766   |tindal                      |william                                              |1756-1804)               |
|3.8782   |wooler                      |john                                                 |1772-1772)               |
|4.2303   |stone                       |w                                                    |NA-NA)                   |
|3.8796   |zimmermann                  |eberhard august wilhelm von                          |1743-1815)               |
|3.8804   |telltruth                   |jonathan                                             |NA-NA)                   |
|6.4284   |marsh                       |henry                                                |1720-1720)               |
|1.14556  |NA (1457-1509)              |NA                                                   |NA                       |
|3.8817   |milliken                    |john                                                 |NA-NA)                   |
|3.8829   |walter                      |john                                                 |1739-1812)               |
|3.8832   |savage                      |john                                                 |1673-1747)               |
|3.8834   |gibson                      |john                                                 |1787-1787)               |
|3.8858   |gale                        |samuel                                               |1682-1754)               |
|3.8866   |tilly                       |alexandre                                            |1764-1816)               |
|3.8869   |ramsay                      |john                                                 |1664-1724)               |
|3.8872   |downes                      |samuel                                               |1723-1723)               |
|4.2333   |arcq                        |philippe-auguste de sainte-foix                      |1721-1795)               |
|1.14571  |queensberry                 |charles douglas                                      |1698-1778)               |
|4.2334   |busnot                      |dominique                                            |NA-NA)                   |
|1.14574  |büsching                     |anton friedrich                                      |1724-1793)               |
|4.2341   |armstrong                   |john                                                 |1771-1797)               |
|3.8898   |calmet                      |augustin                                             |1672-1757)               |
|3.8900   |gurdon                      |thornhagh                                            |1663-1733)               |
|3.8901   |muñoz                       |juan bautista                                        |1745-1799)               |
|3.8904   |vansittart                  |henry                                                |1732-1770)               |
|3.8908   |grose                       |john henry                                           |1750-1783)               |
|3.8912   |lodge                       |john                                                 |1757-1830)               |
|3.8914   |lind                        |john                                                 |1737-1781)               |
|3.8928   |hamilton                    |charles                                              |1738-1800)               |
|3.8934   |geddes                      |james                                                |1710-1745)               |
|3.8936   |harris                      |william                                              |1720-1770)               |
|3.8938   |moore                       |francis                                              |NA-NA)                   |
|1.14578  |clarke                      |william                                              |1696-1771)               |
|1.14579  |astle                       |thomas                                               |1735-1803)               |
|3.8945   |hearn                       |thomas                                               |NA-NA)                   |
|4.2352   |jacob                       |joseph                                               |1667-1722)               |
|3.8960   |NA (1260-1300)              |NA                                                   |NA                       |
|3.8962   |fermin                      |philippe                                             |1720-1790)               |
|3.8963   |saunders                    |samuel                                               |NA-NA)                   |
|3.8966   |harvey                      |gideon                                               |1640-1700)               |
|3.8967   |cavallo                     |tiberius                                             |1749-1809)               |
|4.2353   |o'leary                     |arthur                                               |1729-1802)               |
|3.8969   |o'flattery                  |patrick                                              |NA-NA)                   |
|4.2355   |mahomet                     |sake deen                                            |NA-NA)                   |
|3.8973   |colden                      |cadwallader                                          |1688-1776)               |
|1.14585  |white                       |robert                                               |1781-1793)               |
|3.8976   |ely                         |thomas                                               |1711-1716)               |
|3.8977   |turner                      |sharon                                               |1768-1847)               |
|3.8980   |pagès                       |françois xavier                                      |1745-1802)               |
|3.8993   |NA (1757-1820)              |NA                                                   |NA                       |
|3.8995   |pinto                       |isaac de                                             |1715-1787)               |
|1.14590  |dalzel                      |archibald                                            |NA-NA)                   |
|3.9016   |NA (1707-1782)              |NA                                                   |NA                       |
|3.9018   |fréret                      |nicolas                                              |1688-1749)               |
|3.9019   |hamilton                    |charles                                              |1753-1792)               |
|4.2368   |wetherall                   |john                                                 |NA-NA)                   |
|4.2369   |roach                       |john                                                 |1796-1796)               |
|4.2370   |archenholz                  |johann wilhelm von                                   |1743-1812)               |
|1.14596  |leonardo y argensola        |bartolomé                                            |1562-1631)               |
|3.9033   |carter                      |edmund                                               |NA-NA)                   |
|1.14605  |archdall                    |mervyn                                               |1723-1791)               |
|3.9035   |falkland                    |charles john cary                                    |1768-1809)               |
|3.9046   |duncan                      |john                                                 |1721-1808)               |
|1.14609  |tasso                       |torquato                                             |1544-1595)               |
|1.14610  |taylor                      |john                                                 |1704-1766)               |
|3.9049   |ockley                      |simon                                                |1678-1720)               |
|3.9050   |kingsbury                   |benjamin                                             |NA-NA)                   |
|1.14614  |poulter                     |e                                                    |NA-NA)                   |
|3.9067   |armfelt                     |gustaf mauritz                                       |1757-1814)               |
|3.9078   |dunbar                      |james                                                |1798-1798)               |
|3.9081   |crosby                      |thomas                                               |1665-1768)               |
|4.2395   |coquereau                   |jean-baptiste-louis                                  |NA-NA)                   |
|4.2396   |oswald                      |john                                                 |1793-1793)               |
|3.9094   |noailles                    |louis-antoine de                                     |1651-1729)               |
|3.9095   |nimmo                       |william                                              |NA-NA)                   |
|3.9097   |nisbett                     |n                                                    |NA-NA)                   |
|3.9102   |burney                      |charles                                              |1757-1817)               |
|6.4309   |NA (1673-1723)              |NA                                                   |NA                       |
|4.2411   |denholm                     |james                                                |1772-1818)               |
|3.9111   |horsmanden                  |daniel                                               |1694-1778)               |
|8.57     |kirk                        |robert                                               |NA-NA)                   |
|1.14629  |noorthouck                  |john                                                 |1746-1816)               |
|3.9121   |NA (1725-1797)              |NA                                                   |NA                       |
|3.9140   |sharp                       |thomas                                               |1693-1758)               |
|3.9141   |richardson                  |william                                              |1743-1814)               |
|3.9142   |jackson                     |john                                                 |1686-1763)               |
|1.14637  |edwards                     |thomas                                               |1776-1810)               |
|1.14639  |milward                     |samuel                                               |1662-1662)               |
|3.9152   |webb                        |william                                              |NA-NA)                   |
|3.9162   |tournefort                  |joseph pitton de                                     |1656-1708)               |
|3.9185   |gibbons                     |thomas                                               |1720-1785)               |
|3.9189   |mickle                      |william julius                                       |1735-1788)               |
|3.9192   |estlin                      |john prior                                           |1747-1817)               |
|3.9193   |jackson                     |john                                                 |active 1795-1810)        |
|3.9195   |timberlake                  |henry                                                |1765-1765)               |
|3.9196   |pokubiatto                  |ignazy                                               |1736-1811)               |
|3.9198   |erasmus                     |desiderius                                           |1536-1536)               |
|3.9203   |guthry                      |henry                                                |1600-1676)               |
|3.9206   |vallancey                   |charles                                              |1721-1812)               |
|3.9212   |ulloa                       |antonio de                                           |1716-1795)               |
|4.2444   |jenkins                     |joseph                                               |1743-1819)               |
|1.14655  |widmore                     |richard                                              |1681-1764)               |
|3.9219   |wilkes                      |thomas                                               |1786-1786)               |
|1.14656  |toulmin                     |joshua                                               |1740-1815)               |
|3.9220   |toze                        |eobald                                               |1715-1789)               |
|3.9221   |bion                        |jean françois                                         |1735-1735)               |
|3.9223   |murray                      |henry                                                |1761-1761)               |
|3.9224   |philipps                    |j t                                                  |1755-1755)               |
|3.9226   |jacob                       |edward                                               |1710-1788)               |
|3.9231   |rudd                        |sayer                                                |1757-1757)               |
|3.9232   |albin                       |john                                                 |1791-1800)               |
|3.9234   |killingworth                |grantham                                             |1699-1778)               |
|1.14658  |savonarola                  |girolamo                                             |1452-1498)               |
|6.4341   |NA ( 635- 735)              |NA                                                   |NA                       |
|1.14660  |raphson                     |joseph                                               |1716-1716)               |
|1.14661  |darwall                     |john                                                 |1732-1828)               |
|3.9252   |triveth                     |nicolaus                                             |NA-NA)                   |
|3.9253   |trivet                      |nicolas                                              |1258-1328)               |
|3.9257   |penn                        |william                                              |1776-1845)               |
|3.9259   |ubaldini                    |petruccio                                            |1524-1600)               |
|1.14666  |ames                        |joseph                                               |1689-1759)               |
|3.9264   |whitaker                    |john                                                 |1735-1808)               |
|1.14667  |thomas                      |john                                                 |1736-1769)               |
|1.14668  |rowlands                    |henry                                                |1655-1723)               |
|3.9273   |southey                     |robert                                               |1774-1843)               |
|3.9279   |hughes                      |michael                                              |NA-NA)                   |
|1.14671  |raspe                       |rudolf erich                                         |1737-1794)               |
|3.9295   |NA (1754-1808)              |NA                                                   |NA                       |
|1.14673  |smith                       |john                                                 |1700-1700)               |
|3.9299   |neal                        |daniel                                               |1678-1743)               |
|1.14674  |richards                    |george                                               |1767-1837)               |
|3.9305   |laughton                    |george                                               |1736-1800)               |
|6.4360   |gascoigne                   |richard                                              |1716-1716)               |
|1.14675  |gardner                     |thomas                                               |NA-NA)                   |
|3.9317   |macleod                     |donald                                               |NA-NA)                   |
|3.9320   |stevenson                   |andrew                                               |NA-NA)                   |
|1.14677  |winsor                      |f a                                                  |1763-1830)               |
|4.2465   |guiche                      |armand de gramont                                    |1638-1673)               |
|1.14678  |cunningham                  |alexander                                            |NA-NA)                   |
|4.2467   |pascal                      |blaise                                               |1623-1662)               |
|3.9331   |johnson                     |john                                                 |1662-1725)               |
|4.2468   |NA (1775-1775)              |NA                                                   |NA                       |
|3.9335   |sliford                     |william                                              |NA-NA)                   |
|3.9341   |graverol                    |jean                                                 |1647-1718)               |
|3.9353   |ostervald                   |jean frédéric                                        |1663-1747)               |
|3.9362   |turenne                     |henri de la tour d'auvergne                          |1611-1675)               |
|1.14692  |arnot                       |hugo                                                 |1749-1786)               |
|1.14694  |ashmole                     |elias                                                |1617-1692)               |
|6.4375   |bayle                       |pierre                                               |1647-1706)               |
|3.9366   |jeffery                     |thomas                                               |1700-1728)               |
|3.9382   |jourgniac saint-méard        |françois de                                           |1745-1827)               |
|3.9404   |woodcock                    |john                                                 |NA-NA)                   |
|6.4382   |bingham                     |joseph                                               |1668-1723)               |
|1.14706  |bolts                       |william                                              |1740-1808)               |
|3.9415   |brockwell                   |charles                                              |NA-NA)                   |
|3.9437   |beaugé                      |jean de                                              |NA-NA)                   |
|3.9440   |reynolds                    |george                                               |1700-1769)               |
|3.9441   |coleridge                   |samuel taylor                                        |1772-1834)               |
|1.14709  |clavigero                   |francesco saverio                                    |1731-1787)               |
|3.9442   |NA (1765-1765)              |NA                                                   |NA                       |
|3.9443   |patten                      |robert                                               |1715-1715)               |
|6.4385   |phipps                      |constantine                                          |1656-1723)               |
|3.9447   |osório                      |jerónimo                                             |1506-1580)               |
|1.14710  |bowyer                      |william                                              |1699-1777)               |
|1.14711  |dorchester                  |dudley carleton                                      |1573-1632)               |
|3.9452   |puetter                     |johann stephan                                       |1725-1807)               |
|1.14712  |cockburn                    |william                                              |1662-1751)               |
|3.9453   |buckley                     |samuel                                               |1674-1741)               |
|3.9454   |riccoboni                   |luigi                                                |1676-1753)               |
|1.14713  |costard                     |george                                               |1710-1782)               |
|6.4387   |atholl                      |john murray                                          |1729-1774)               |
|3.9460   |dodington                   |george bubb                                          |1691-1762)               |
|3.9462   |concanen                    |matthew                                              |1795-1795)               |
|3.9472   |malesherbes                 |chrétien guillaume de lamoignon de                   |1721-1794)               |
|3.9475   |clendon                     |john                                                 |1719-1719)               |
|3.9494   |read                        |t                                                    |1723-1758)               |
|3.9495   |stone                       |thomas                                               |1815-1815)               |
|3.9496   |watkins                     |john                                                 |NA-NA)                   |
|1.14736  |warton                      |thomas                                               |1728-1790)               |
|1.14741  |campbell                    |alexander                                            |1764-1824)               |
|1.14743  |gregory                     |james                                                |1753-1821)               |
|3.9514   |émı̈n                         |joseph                                               |1726-1809)               |
|3.9517   |drake                       |peter                                                |1671-1671)               |
|1.14750  |deering                     |charles                                              |1695-1749)               |
|1.14753  |eden                        |frederick morton                                     |1766-1809)               |
|3.9531   |douglass                    |william                                              |1691-1752)               |
|1.14754  |yorke                       |philip                                               |1743-1804)               |
|3.9534   |whichcote                   |benjamin                                             |1609-1683)               |
|3.9554   |haller                      |albrecht von                                         |1708-1777)               |
|1.14756  |taylor                      |john                                                 |1808-1808)               |
|3.9560   |innes                       |thomas                                               |1662-1744)               |
|3.9561   |neve                        |philip                                               |NA-NA)                   |
|1.14758  |hawkins                     |john                                                 |1719-1789)               |
|3.9568   |fuller                      |john                                                 |1825-1825)               |
|3.9570   |farmer                      |j                                                    |NA-NA)                   |
|3.9571   |barrington                  |john shute                                           |1678-1734)               |
|3.9572   |dumont                      |étienne                                              |1759-1829)               |
|1.14760  |ibn taghrībirdī               |abū al-maḥāsin yūsuf                                     |1411-1470)               |
|3.9575   |lally tollendal             |thomas arthur de                                     |NA-NA)                   |
|1.14761  |stedman                     |john gabriel                                         |1744-1797)               |
|1.14763  |henshall                    |samuel                                               |1764-1807)               |
|4.2545   |lemoine                     |henry                                                |1756-1812)               |
|1.14766  |hardwicke                   |philip yorke                                         |1720-1790)               |
|1.14767  |NA (1551-1602)              |NA                                                   |NA                       |
|3.9581   |groome                      |john                                                 |1679-1760)               |
|3.9583   |NA (1473-1513)              |NA                                                   |NA                       |
|1.14769  |howgrave                    |francis                                              |NA-NA)                   |
|3.9584   |schomberg                   |alexander crowcher                                   |1756-1792)               |
|1.14771  |taylor                      |henry                                                |1711-1785)               |
|3.9589   |hales                       |william                                              |1747-1831)               |
|3.9590   |joutel                      |henri                                                |1640-1735)               |
|3.9591   |tench                       |watkin                                               |1759-1833)               |
|3.9593   |leake                       |stephen martin                                       |1702-1773)               |
|6.4421   |inett                       |john                                                 |1647-1717)               |
|3.9609   |morins                      |richard de                                           |1242-1242)               |
|1.14774  |green                       |valentine                                            |1739-1813)               |
|4.2549   |spalding                    |john                                                 |1609-1670)               |
|3.9619   |jefferson                   |thomas                                               |1743-1826)               |
|3.9623   |walker                      |patrick                                              |1666-1745)               |
|3.9625   |soulès                      |françois                                             |NA-NA)                   |
|3.9627   |NA (1603-1663)              |NA                                                   |NA                       |
|3.9629   |belle-isle                  |charles louis auguste de fouquet                     |1684-1761)               |
|1.14781  |north                       |roger                                                |1653-1734)               |
|3.9631   |baron                       |richard                                              |1720-1768)               |
|3.9636   |moryson                     |fynes                                                |1566-1630)               |
|3.9642   |müller                      |johannes von                                         |1752-1809)               |
|1.14785  |NA (1733-1759)              |NA                                                   |NA                       |
|4.2551   |stanhope                    |myles                                                |NA-NA)                   |
|4.2554   |beaufort                    |louis de                                             |1703-1795)               |
|3.9666   |beckmann                    |johann                                               |1739-1811)               |
|3.9668   |warner                      |richard                                              |1763-1857)               |
|1.14791  |rucellai                    |bernardo                                             |1449-1514)               |
|3.9669   |norris                      |robert                                               |1791-1791)               |
|4.2556   |wright                      |thomas                                               |???1707-1754)            |
|3.9676   |motte                       |philémon de                                          |NA-NA)                   |
|5.4502   |vesey                       |agmondisham                                          |NA-NA)                   |
|3.9679   |cook                        |james                                                |NA-NA)                   |
|3.9692   |southerne                   |thomas                                               |1660-1746)               |
|3.9700   |de coetlogon                |c e                                                  |1746-1820)               |
|3.9710   |henry                       |david                                                |1710-1792)               |
|3.9718   |cleland                     |william                                              |1692-1716)               |
|3.9727   |disney                      |john                                                 |1746-1816)               |
|5.4504   |garth                       |samuel                                               |1661-1719)               |
|3.9730   |crookshanks                 |john                                                 |1708-1795)               |
|1.14809  |burscough                   |william                                              |1676-1755)               |
|3.9745   |boothe                      |nathaniel                                            |1662-1662)               |
|3.9747   |NA (1350-1350)              |NA                                                   |NA                       |
|3.9766   |haggitt                     |john                                                 |1794-1794)               |
|1.14814  |rich                        |robert                                               |1717-1785)               |
|16.22    |young                       |w a                                                  |NA-NA)                   |
|3.9778   |nickolls                    |robert boucher                                       |NA-NA)                   |
|3.9779   |spanaugle                   |john                                                 |NA-NA)                   |
|3.9781   |hurrion                     |john                                                 |1676-1731)               |
|3.9782   |rymer                       |james                                                |1770-1833)               |
|3.9790   |chapman                     |richard                                              |1665-1734)               |
|3.9799   |swynfen                     |john                                                 |1662-1728)               |
|3.9801   |nicholls                    |benjamin                                             |1717-1765)               |
|3.9816   |champion                    |judah                                                |1729-1810)               |
|3.9817   |woolsey                     |robert                                               |NA-NA)                   |
|1.14819  |gardiner                    |richard                                              |1723-1781)               |
|3.9822   |chaumareix                  |jean-hugues duroy de                                 |1763-1841)               |
|3.9826   |towgood                     |matthew                                              |1757-1757)               |
|3.9829   |millar                      |david                                                |1688-1757)               |
|1.14824  |holland                     |john                                                 |1722-1722)               |
|3.9838   |paxton                      |peter                                                |1711-1711)               |
|3.9839   |scholes                     |john                                                 |1794-1794)               |
|3.9840   |hawke                       |edward                                               |1705-1781)               |
|3.9842   |allibond                    |john                                                 |1597-1658)               |
|3.9851   |amhurst                     |n                                                    |1697-1742)               |
|3.9855   |pyle                        |thomas                                               |1674-1756)               |
|3.9857   |paradés                     |robert de                                            |1752-1786)               |
|3.9861   |philadelphus                |theophilus                                           |NA-NA)                   |
|3.9862   |fonblanque                  |john                                                 |1760-1837)               |
|4.2570   |stock                       |thomas                                               |1750-1803)               |
|1.14829  |vyse                        |william                                              |1742-1816)               |
|1.14830  |harvest                     |george                                               |1716-1780)               |
|1.14833  |clagett                     |nicholas                                             |1746-1746)               |
|1.14838  |webb                        |philip carteret                                      |1700-1770)               |
|3.9871   |sempill                     |hugh                                                 |1758-1830)               |
|1.14840  |NA (1760-1760)              |NA                                                   |NA                       |
|3.9903   |jackson                     |randle                                               |1757-1837)               |
|3.9904   |rouse-boughton              |charles william                                      |1821-1821)               |
|1.14846  |george                      |william                                              |1697-1756)               |
|1.14848  |harris                      |john                                                 |1680-1738)               |
|1.14850  |kilborn                     |robert                                               |1700-1730)               |
|1.14851  |philips                     |john                                                 |1674-1674)               |
|3.9919   |reckitt                     |william                                              |1706-1769)               |
|6.4462   |carstairs                   |william                                              |1649-1715)               |
|3.9941   |kersaint                    |armand-guy                                           |1742-1793)               |
|3.9956   |NA (1364-1440)              |NA                                                   |NA                       |
|3.9967   |keeling                     |bartholomew                                          |1720-1778)               |
|3.9968   |thirlby                     |styan                                                |1686-1753)               |
|3.9971   |evans                       |abel                                                 |1679-1737)               |
|1.14857  |verelst                     |harry                                                |1785-1785)               |
|3.9973   |broughton                   |john                                                 |1674-1720)               |
|1.14859  |wall                        |william                                              |1647-1728)               |
|1.14860  |mildred                     |daniel                                               |1731-1783)               |
|3.9989   |huddesford                  |george                                               |1749-1809)               |
|3.9996   |paris                       |john                                                 |1683-1683)               |
|1.14863  |graves                      |w                                                    |1724-1801)               |
|3.10021  |macleod                     |allan                                                |1805-1805)               |
|3.10027  |grundy                      |john                                                 |1797-1797)               |
|6.4471   |campbell                    |john                                                 |1733-1733)               |
|5.4518   |thomson                     |thomas                                               |1703-1703)               |
|5.4520   |NA (1769-1769)              |NA                                                   |NA                       |
|6.4474   |cooksey                     |richard                                              |NA-NA)                   |
|5.4524   |harrington                  |william stanhope                                     |1690-1756)               |
|3.10056  |dickens                     |charles                                              |1719-1793)               |
|3.10059  |kellogg                     |ezekiel                                              |1732-1785)               |
|388.2    |cooper                      |robert                                               |1732-1805)               |
|3.10062  |odlin                       |john                                                 |1681-1754)               |
|6.4477   |livingston                  |robert r                                             |1718-1775)               |
|4.2596   |dewey                       |sherman                                              |1772-1813)               |
|4.2597   |davies                      |richard                                              |1635-1708)               |
|3.10065  |bourne                      |benjamin                                             |1755-1808)               |
|3.10066  |lowell                      |john                                                 |1704-1767)               |
|3.10067  |boone                       |daniel                                               |1734-1820)               |
|3.10068  |maccarty                    |thaddeus                                             |1721-1784)               |
|4.2598   |williams                    |thomas                                               |1755-1839)               |
|1.14873  |strong                      |nathan                                               |1748-1816)               |
|5.4531   |morgan                      |john                                                 |1735-1789)               |
|399      |foster                      |dwight                                               |1757-1823)               |
|400      |sitgreaves                  |samuel                                               |1764-1827)               |
|401      |hickey                      |thomas                                               |1749-1776)               |
|10.3925  |reed                        |joseph                                               |1741-1785)               |
|1.14875  |holly                       |israel                                               |1728-1809)               |
|1.14876  |hall                        |aaron                                                |1751-1814)               |
|3.10074  |genet                       |edmond charles                                       |1763-1834)               |
|437      |wells                       |robert                                               |1728-1794)               |
|4.2601   |honeyman                    |james                                                |1675-1750)               |
|461      |rivington                   |james                                                |1724-1802)               |
|3.10077  |lee                         |jonathan                                             |1718-1788)               |
|462      |dyson                       |john                                                 |1742-1828)               |
|6.4478   |hopkins                     |stephen                                              |1707-1785)               |
|404.2    |hopkinson                   |francis                                              |1737-1791)               |
|3.10079  |NA (1738-1758)              |NA                                                   |NA                       |
|3.10080  |mercer                      |john francis                                         |1759-1821)               |
|416.1    |horrocks                    |james                                                |1734-1772)               |
|3.10081  |keatinge                    |george                                               |1811-1811)               |
|4.2602   |mcnutt                      |alexander                                            |1725-1811)               |
|3.10082  |sullivan                    |james                                                |1744-1808)               |
|3.10083  |rhees                       |morgan j                                             |1760-1804)               |
|3.10084  |allen                       |john                                                 |active 1741-1774)        |
|3.10085  |whitney                     |peter                                                |1744-1816)               |
|388.9    |hull                        |william                                              |1753-1825)               |
|3.10087  |smith                       |charles                                              |1768-1808)               |
|3.10088  |de coverly                  |roger                                                |1728-1796)               |
|3.10091  |nougaret                    |p j b                                                |1742-1823)               |
|3.10098  |adams                       |samuel                                               |1722-1803)               |
|3.10100  |fish                        |elisha                                               |1719-1795)               |
|3.10102  |hobart                      |noah                                                 |1706-1773)               |
|1.14880  |robbins                     |chandler                                             |1738-1799)               |
|3.10107  |tennent                     |william                                              |1740-1777)               |
|466      |wright                      |john                                                 |NA-NA)                   |
|1.14881  |davis                       |daniel                                               |1762-1835)               |
|1.14883  |morton                      |perez                                                |1751-1837)               |
|388.16   |rush                        |benjamin                                             |1745-1813)               |
|3.10112  |stiles                      |isaac                                                |1697-1760)               |
|5.4549   |harrison                    |robert hanson                                        |1745-1790)               |
|3.10120  |coxe                        |tench                                                |1755-1824)               |
|3.10122  |russel                      |william                                              |1690-1761)               |
|397.5    |alison                      |francis                                              |1705-1779)               |
|3.10123  |emerson                     |joseph                                               |1724-1775)               |
|433.1    |alison                      |hugh                                                 |1740-1781)               |
|433.2    |allen                       |ethan                                                |1738-1789)               |
|1.14891  |eastburn                    |robert                                               |1710-1778)               |
|1.14893  |leacock                     |john                                                 |NA-NA)                   |
|3.10130  |harris                      |thaddeus mason                                       |1768-1842)               |
|3.10131  |wells                       |richard                                              |NA-NA)                   |
|1.14895  |prescott                    |benjamin                                             |1687-1777)               |
|1.14896  |seabury                     |samuel                                               |1729-1796)               |
|3.10135  |chandler                    |thomas bradbury                                      |1726-1790)               |
|3.10136  |morrill                     |isaac                                                |1718-1793)               |
|1.14898  |gage                        |thomas                                               |1721-1787)               |
|1.14899  |maylem                      |john                                                 |1739-1762)               |
|3.10142  |cotton                      |john                                                 |1712-1789)               |
|3.10145  |trumbull                    |benjamin                                             |1735-1820)               |
|3.10146  |adams                       |eliphalet                                            |1677-1753)               |
|3.10147  |eliot                       |jared                                                |1685-1763)               |
|3.10148  |williams                    |eliphalet                                            |1727-1803)               |
|1.14901  |caner                       |henry                                                |1700-1792)               |
|1.14902  |warren                      |mercy otis                                           |1728-1814)               |
|470      |davie                       |william richardson                                   |1756-1820)               |
|1.14903  |condamine                   |charles-marie de                                     |1701-1774)               |
|1.14905  |hobby                       |william                                              |1707-1765)               |
|3.10154  |huntington                  |enoch                                                |1739-1809)               |
|4.2617   |stevens                     |james wilson                                         |NA-NA)                   |
|1.14906  |rowland                     |david s                                              |1719-1794)               |
|4.2620   |bleecker                    |ann eliza                                            |1752-1783)               |
|3.10161  |belknap                     |jeremy                                               |1744-1798)               |
|6.4484   |davis                       |thomas terry                                         |1807-1807)               |
|388.30   |dawkins                     |henry                                                |1786-1786)               |
|3.10172  |lathrop                     |john                                                 |1740-1816)               |
|3.10173  |bulkley                     |john                                                 |1679-1731)               |
|3.10174  |sedgwick                    |john                                                 |1742-1820)               |
|3.10176  |ballantine                  |john                                                 |1716-1776)               |
|1.14909  |fiske                       |nathan                                               |1733-1799)               |
|4.2624   |bird                        |samuel                                               |1724-1784)               |
|3.10177  |prime                       |ebenezer                                             |1700-1779)               |
|388.36   |progg                       |philip                                               |NA-NA)                   |
|4.2625   |m'culloch                   |john                                                 |1754-1824)               |
|1.14911  |paine                       |robert treat                                         |1773-1811)               |
|3.10179  |hall                        |david                                                |1704-1789)               |
|1.14912  |gates                       |hezekiah                                             |1700-1777)               |
|388.37   |dawson                      |john                                                 |1762-1814)               |
|472.1    |howe                        |robert                                               |1732-1786)               |
|5.4562   |levy                        |aaron                                                |1742-1815)               |
|1.14913  |cutler                      |manasseh                                             |1742-1823)               |
|4.2628   |baldwin                     |thomas                                               |1753-1825)               |
|1.14916  |fessenden                   |thomas                                               |1739-1813)               |
|4.2629   |fisk                        |joseph                                               |1701-1701)               |
|1.14917  |leigh                       |william                                              |1748-1787)               |
|3.10193  |fletcher                    |reuben                                               |1720-1720)               |
|3.10194  |benezet                     |anthony                                              |1713-1784)               |
|4.2632   |peden                       |alexander                                            |1626-1686)               |
|388.45   |burt                        |jonathan                                             |1632-1715)               |
|1.14921  |howard                      |martin                                               |1730-1781)               |
|3.10208  |wadsworth                   |benjamin                                             |1670-1737)               |
|482      |ury                         |john                                                 |1741-1741)               |
|483      |hearsey                     |freeman                                              |1773-1773)               |
|3.10211  |bellamy                     |joseph                                               |1719-1790)               |
|3.10213  |roots                       |peter philanthropos                                  |1765-1828)               |
|3.10217  |casa yrujo                  |carlos martínez de yrujo y tacón                     |1763-1824)               |
|1.14925  |wheatley                    |phillis                                              |1753-1784)               |
|1.14926  |church                      |benjamin                                             |1734-1778)               |
|3.10219  |wheelock                    |eleazar                                              |1711-1779)               |
|3.10220  |hurt                        |john                                                 |1752-1824)               |
|3.10221  |rumsey                      |james                                                |1743-1792)               |
|3.10222  |gardiner                    |john                                                 |1737-1793)               |
|4.2646   |blatchford                  |john                                                 |1794-1794)               |
|3.10223  |bicheno                     |j                                                    |1831-1831)               |
|3.10225  |forbes                      |eli                                                  |1726-1804)               |
|3.10226  |hodgkinson                  |john                                                 |1767-1805)               |
|4.2650   |NA (1730-1810)              |NA                                                   |NA                       |
|4.2651   |devotion                    |john                                                 |1730-1802)               |
|1.14931  |tennent                     |gilbert                                              |1703-1764)               |
|1.14932  |murray                      |john                                                 |1742-1793)               |
|1.14933  |williams                    |samuel                                               |1743-1817)               |
|3.10230  |birch                       |thomas ledlie                                        |1808-1808)               |
|3.10231  |NA (1750-1794)              |NA                                                   |NA                       |
|3.10239  |NA (1693-1747)              |NA                                                   |NA                       |
|3.10240  |whitaker                    |nathaniel                                            |1732-1795)               |
|388.63   |blagge                      |benjamin                                             |NA-NA)                   |
|3.10247  |wharton                     |samuel                                               |1732-1800)               |
|407.4    |white                       |daniel                                               |NA-NA)                   |
|388.66   |greene                      |nathanael                                            |1742-1786)               |
|3.10254  |webster                     |samuel                                               |1718-1796)               |
|3.10256  |cooke                       |samuel                                               |1709-1783)               |
|1.14939  |hopkins                     |samuel                                               |1693-1755)               |
|380.2    |burk                        |john                                                 |1808-1808)               |
|3.10258  |parsons                     |jonathan                                             |1705-1776)               |
|1.14940  |wante                       |charles etienne pierre                               |NA-NA)                   |
|1.14941  |prentice                    |thomas                                               |1702-1782)               |
|6.4522   |baltimore                   |charles calvert                                      |1699-1751)               |
|3.10266  |penn                        |thomas                                               |1702-1775)               |
|3.10274  |brown                       |andrew                                               |1763-1834)               |
|3.10277  |williams                    |john                                                 |1664-1729)               |
|309.1    |williams                    |solomon                                              |1700-1776)               |
|1.14950  |gilman                      |tristram                                             |1735-1809)               |
|461.1    |barkley                     |andrew                                               |NA-NA)                   |
|505      |hopkins                     |lemuel                                               |1750-1801)               |
|1.14951  |bean                        |joseph                                               |1716-1784)               |
|4.2663   |sampson                     |ezra                                                 |1749-1823)               |
|1.14954  |adams                       |zabdiel                                              |1739-1801)               |
|3.10284  |barton                      |thomas                                               |1730-1780)               |
|388.138  |van vleck                   |abraham h                                            |NA-NA)                   |
|433.4    |bland                       |richard                                              |1710-1776)               |
|388.140  |blodget                     |samuel                                               |1724-1807)               |
|510      |danforth                    |john                                                 |1660-1730)               |
|1.14956  |bolton                      |thomas                                               |1777-1777)               |
|388.154  |parker                      |hyde                                                 |1739-1807)               |
|5.4611   |peters                      |richard                                              |1704-1776)               |
|3.10298  |plessis                     |joseph octave                                        |1763-1825)               |
|3.10300  |berry                       |edward                                               |1768-1831)               |
|3.10301  |brackenridge                |h h                                                  |1748-1816)               |
|4.2670   |NA (1838-1838)              |NA                                                   |NA                       |
|521      |bradford                    |cornelius                                            |NA-NA)                   |
|4.2671   |johnson                     |john i                                               |NA-NA)                   |
|4.2672   |stiles                      |ezra                                                 |1727-1795)               |
|3.10308  |gee                         |joshua                                               |1698-1748)               |
|3.10317  |winchester                  |elhanan                                              |1751-1797)               |
|388.208  |wooster                     |david                                                |1711-1777)               |
|388.211  |cabot                       |samuel                                               |1758-1819)               |
|4.2674   |wyche                       |william                                              |NA-NA)                   |
|5.4623   |brattle                     |william                                              |1706-1776)               |
|531      |goffe                       |john                                                 |1701-1781)               |
|3.10320  |kunze                       |john c                                               |1744-1807)               |
|4.2676   |scottow                     |joshua                                               |1618-1693)               |
|3.10326  |young                       |thomas                                               |1732-1777)               |
|3.10327  |stuart                      |john ferdinand smyth                                 |1745-1814)               |
|1.14969  |camm                        |john                                                 |1779-1779)               |
|1.14970  |amherst                     |jeffery                                              |1717-1797)               |
|388.264  |sewall                      |jonathan mitchell                                    |1748-1808)               |
|388.266  |briggs                      |enos                                                 |NA-NA)                   |
|6.4572   |cole                        |edward                                               |NA-NA)                   |
|433.6    |broaddus                    |andrew                                               |1770-1848)               |
|388.267  |sweeney                     |lawrence                                             |1770-1770)               |
|309.3    |husbands                    |hermon                                               |1724-1795)               |
|538      |hopwood                     |john                                                 |1745-1802)               |
|3.10344  |brown                       |thomas                                               |1740-1740)               |
|3.10345  |kennedy                     |archibald                                            |1685-1763)               |
|3.10350  |barclay                     |robert                                               |1648-1690)               |
|3.10353  |fleming                     |william                                              |NA-NA)                   |
|404.5    |moyer                       |john                                                 |NA-NA)                   |
|3.10360  |sower                       |christopher                                          |1695-1758)               |
|388.310  |parker                      |peter                                                |1721-1811)               |
|3.10379  |carmichael                  |john                                                 |1728-1785)               |
|416.6    |peck                        |abiezer                                              |1714-1800)               |
|388.312  |torrey                      |joseph                                               |1707-1791)               |
|4.2697   |snowden                     |richard                                              |1753-1825)               |
|1.14976  |thomas                      |george                                               |1695-1774)               |
|3.10390  |bogatzky                    |carl heinrich von                                    |1690-1774)               |
|1.14978  |maury                       |james                                                |NA-NA)                   |
|3.10395  |mead                        |samuel                                               |1761-1832)               |
|3.10396  |le mercier                  |andrew                                               |1692-1763)               |
|4.2703   |lendrum                     |john                                                 |NA-NA)                   |
|6.4591   |estaing                     |charles henri                                        |1729-1794)               |
|3.10404  |evans                       |israel                                               |1747-1807)               |
|1.14980  |burr                        |aaron                                                |1716-1757)               |
|3.10405  |hitchcock                   |enos                                                 |1745-1803)               |
|3.10406  |macpherson                  |john                                                 |1726-1792)               |
|4.2705   |hemmenway                   |moses                                                |1735-1811)               |
|3.10407  |fisher                      |hugh                                                 |1734-1734)               |
|1.14981  |checkley                    |samuel                                               |1723-1768)               |
|3.10409  |greene                      |benjamin                                             |1764-1837)               |
|3.10410  |green                       |joseph                                               |1701-1770)               |
|401.2    |capen                       |hopestill                                            |1731-1807)               |
|3.10415  |bishop                      |abraham                                              |NA-NA)                   |
|3.10418  |foxcroft                    |thomas                                               |1697-1769)               |
|3.10419  |sewall                      |stephen                                              |1734-1804)               |
|3.10420  |carey                       |mathew                                               |1760-1839)               |
|1.14983  |hazard                      |ebenezer                                             |1744-1817)               |
|3.10421  |callender                   |john                                                 |1706-1748)               |
|3.10422  |pemberton                   |thomas                                               |1728-1807)               |
|3.10423  |hutchins                    |thomas                                               |1730-1789)               |
|3.10427  |proud                       |robert                                               |1728-1813)               |
|3.10430  |smith                       |samuel                                               |1720-1776)               |
|3.10436  |penhallow                   |samuel                                               |1665-1726)               |
|3.10440  |stanton                     |daniel                                               |1708-1770)               |
|3.10443  |tucker                      |john                                                 |1719-1792)               |
|1.14986  |avery                       |david                                                |1746-1818)               |
|3.10448  |clap                        |roger                                                |1609-1691)               |
|3.10449  |heath                       |william                                              |1737-1814)               |
|3.10450  |donkin                      |robert                                               |1727-1821)               |
|3.10452  |m'donald                    |philip                                               |NA-NA)                   |
|547      |giddinge                    |daniel                                               |1704-1771)               |
|3.10458  |freeman                     |mylo                                                 |NA-NA)                   |
|4.2715   |andré                        |john                                                 |1751-1780)               |
|3.10460  |schabaelje                  |jan philipsz                                         |1585-1656)               |
|5.4664   |miller                      |john henry                                           |1702-1782)               |
|3.10465  |ziguerer                    |christian                                            |NA-NA)                   |
|4.2716   |leland                      |john                                                 |1754-1841)               |
|309.6    |mackay                      |fitzhugh                                             |NA-NA)                   |
|380.6    |drayton                     |william henry                                        |1742-1779)               |
|1.14989  |drewe                       |edward                                               |1793-1793)               |
|1.14990  |haswell                     |anthony                                              |1756-1816)               |
|3.10470  |allen                       |paul                                                 |1775-1826)               |
|258.173  |austin                      |jonathan williams                                    |1751-1779)               |
|3.10472  |croswell                    |andrew                                               |1709-1785)               |
|1.14996  |read                        |john                                                 |1769-1854)               |
|3.10478  |green                       |jacob                                                |1722-1790)               |
|3.10479  |thacher                     |peter                                                |1752-1802)               |
|1.14997  |flagg                       |james                                                |NA-NA)                   |
|1.14998  |livingston                  |john henry                                           |1746-1825)               |
|1.14999  |lovell                      |james                                                |1737-1814)               |
|551      |frisbie                     |levi                                                 |1748-1806)               |
|276.4    |varnum                      |james m                                              |1748-1789)               |
|6.4597   |hancock                     |john                                                 |1737-1793)               |
|6.4598   |dawes                       |thomas                                               |1757-1825)               |
|3.10485  |welsh                       |thomas                                               |1754-1831)               |
|1.15003  |meigs                       |josiah                                               |1757-1822)               |
|3.10490  |dexter                      |samuel                                               |1700-1755)               |
|4.2722   |webster                     |samuel                                               |???1743-1777)            |
|3.10501  |fitch                       |thomas                                               |1700-1774)               |
|3.10502  |norton                      |john                                                 |1715-1778)               |
|5.4666   |galerm                      |jean baptiste                                        |NA-NA)                   |
|3.10508  |clark                       |peter                                                |1694-1768)               |
|3.10510  |dyer                        |eliphalet                                            |1721-1807)               |
|4.2725   |gardiner                    |john sylvester john                                  |1765-1830)               |
|3.10512  |cadwalader                  |john                                                 |1742-1786)               |
|3.10516  |davies                      |william                                              |1814-1814)               |
|4.2727   |NA (1826-1826)              |NA                                                   |NA                       |
|1.15015  |cleaveland                  |john                                                 |1722-1799)               |
|3.10548  |findley                     |william                                              |1742-1821)               |
|3.10554  |grey                        |isaac                                                |NA-NA)                   |
|1.15018  |vinal                       |william                                              |1718-1781)               |
|3.10556  |colman                      |benjamin                                             |1673-1747)               |
|4.2733   |stearns                     |samuel                                               |1741-1809)               |
|3.10559  |doolittle                   |benjamin                                             |1695-1749)               |
|4.2735   |rathbun                     |valentine                                            |1724-1724)               |
|3.10564  |clark                       |jonas                                                |1730-1805)               |
|1.15023  |waterhouse                  |benjamin                                             |1754-1846)               |
|388.348  |malcomson                   |james                                                |1768-1804)               |
|1.15024  |duane                       |william                                              |1760-1835)               |
|388.349  |mare                        |j                                                    |NA-NA)                   |
|388.350  |durham                      |ebenezer                                             |NA-NA)                   |
|1.15026  |micklejohn                  |george                                               |NA-NA)                   |
|3.10566  |middleton                   |peter                                                |1781-1781)               |
|1.15029  |sewall                      |joseph                                               |1688-1769)               |
|1.15030  |pollen                      |thomas                                               |1768-1768)               |
|3.10575  |cogswell                    |james                                                |1720-1807)               |
|3.10578  |prout                       |timothy                                              |1721-1782)               |
|5.4680   |schuyler                    |philip john                                          |1733-1804)               |
|388.427  |moodey                      |samuel                                               |1676-1747)               |
|3.10591  |moore                       |maurice                                              |1735-1777)               |
|4.2743   |morgan                      |joseph                                               |1749-1749)               |
|3.10592  |pinckney                    |charles cotesworth                                   |1746-1825)               |
|388.429  |evans                       |nathaniel                                            |1742-1767)               |
|269.6    |ellis                       |jonathan                                             |1717-1785)               |
|388.432  |miller                      |samuel                                               |1769-1850)               |
|1.15035  |ferne                       |charles                                              |NA-NA)                   |
|564      |murray                      |mary lindley                                         |NA-NA)                   |
|4.2750   |fletcher                    |ebenezer                                             |1761-1831)               |
|3.10615  |graham                      |chauncey                                             |1731-1784)               |
|4.2754   |linn                        |john blair                                           |1777-1804)               |
|388.452  |martin                      |alexander                                            |1740-1807)               |
|4.2756   |stearns                     |charles                                              |1753-1826)               |
|3.10617  |nicholas                    |robert carter                                        |1728-1780)               |
|388.453  |fraser                      |donald                                               |1755-1820)               |
|4.2757   |freneau                     |philip morin                                         |1752-1832)               |
|3.10619  |martin                      |daniel                                               |NA-NA)                   |
|1.15039  |cary                        |thomas                                               |1751-1823)               |
|3.10620  |fessenden                   |thomas green                                         |1771-1837)               |
|1.15040  |fish                        |joseph                                               |1706-1781)               |
|6.4619   |ward                        |samuel                                               |1725-1776)               |
|1.15042  |niles                       |samuel                                               |1674-1762)               |
|1.15043  |gold                        |hezekiah                                             |1731-1790)               |
|3.10646  |mayhew                      |jonathan                                             |1720-1766)               |
|3.10648  |forrest                     |michael                                              |NA-NA)                   |
|3.10653  |hale                        |john                                                 |1762-1796)               |
|3.10659  |daboll                      |nathan                                               |1750-1818)               |
|3.10663  |conant                      |sylvanus                                             |1720-1777)               |
|3.10666  |pettibone                   |augustus                                             |1766-1847)               |
|388.468  |harding                     |ralph                                                |NA-NA)                   |
|4.2762   |case                        |wheeler                                              |1735-1791)               |
|465.2    |remington                   |e                                                    |NA-NA)                   |
|3.10673  |bohun                       |william                                              |NA-NA)                   |
|3.10674  |romans                      |bernard                                              |1784-1784)               |
|3.10675  |read                        |john k                                               |1746-1805)               |
|433.9    |redfield                    |levi                                                 |1745-1838)               |
|3.10680  |mein                        |john                                                 |NA-NA)                   |
|1.15047  |johnson                     |samuel                                               |1696-1772)               |
|3.10683  |sherwood                    |samuel                                               |1730-1783)               |
|3.10685  |freeman                     |jonathan                                             |1765-1822)               |
|3.10687  |french                      |jonathan                                             |1740-1809)               |
|3.10688  |ross                        |robert                                               |1726-1799)               |
|1.15048  |lyman                       |joseph                                               |1749-1828)               |
|3.10692  |newell                      |jonathan                                             |1749-1830)               |
|3.10693  |robbins                     |philemon                                             |1709-1781)               |
|3.10695  |lockwood                    |james                                                |1714-1772)               |
|3.10696  |batwell                     |daniel                                               |NA-NA)                   |
|3.10697  |story                       |isaac                                                |1749-1816)               |
|1.15050  |perry                       |joseph                                               |1731-1783)               |
|3.10701  |cumings                     |henry                                                |1739-1823)               |
|3.10702  |currie                      |william                                              |1709-1803)               |
|1.15051  |mansfield                   |isaac                                                |1750-1826)               |
|3.10703  |duffield                    |george                                               |1732-1790)               |
|3.10704  |appleton                    |nathaniel                                            |1693-1784)               |
|3.10707  |gatchel                     |samuel                                               |NA-NA)                   |
|4.2771   |lee                         |andrew                                               |1745-1832)               |
|3.10710  |mellen                      |henry                                                |1757-1809)               |
|4.2773   |davies                      |benjamin                                             |NA-NA)                   |
|1.15056  |landais                     |peter                                                |1731-1820)               |
|3.10716  |allen                       |john                                                 |1763-1812)               |
|1.15060  |ricard                      |n x                                                  |NA-NA)                   |
|3.10720  |redick                      |john                                                 |NA-NA)                   |
|1.15061  |harrington                  |timothy                                              |1715-1795)               |
|1.15062  |walter                      |nathanael                                            |1711-1776)               |
|1.15063  |pickering                   |theophilus                                           |1700-1747)               |
|388.489  |robertson                   |alexander                                            |NA-NA)                   |
|398.15   |robinson                    |nathaniel                                            |NA-NA)                   |
|586      |rochambeau                  |jean-baptiste-donatien de vimeur                     |1725-1807)               |
|5.4703   |hooper                      |william                                              |1742-1790)               |
|6.4624   |rochambeau                  |donatien-marie-joseph de vimeur                      |1755-1813)               |
|388.490  |pickering                   |timothy                                              |1745-1829)               |
|3.10737  |reading                     |philip                                               |1720-1778)               |
|3.10738  |arscott                     |alexander                                            |1676-1737)               |
|3.10739  |NA (1729-1729)              |NA                                                   |NA                       |
|1.15065  |sherman                     |roger                                                |1721-1793)               |
|5.4705   |plant                       |thomas                                               |NA-NA)                   |
|3.10752  |buckminster                 |joseph                                               |1751-1812)               |
|3.10754  |fitch                       |john                                                 |1743-1798)               |
|4.2780   |parkhurst                   |jabez                                                |1764-1829)               |
|522.1    |andré                       |john                                                 |1751-1780)               |
|404.7    |rich                        |elisha                                               |1740-1804)               |
|269.8    |simmons                     |james                                                |NA-NA)                   |
|4.2781   |smith                       |chileab                                              |1742-1843)               |
|6.4628   |bond                        |benjamin                                             |NA-NA)                   |
|3.10767  |smith                       |meriwether                                           |1730-1790)               |
|3.10768  |smith                       |robert                                               |1723-1793)               |
|6.4632   |scourge                     |humphrey                                             |NA-NA)                   |
|388.507  |harris                      |matthias                                             |1718-1773)               |
|388.508  |scudder                     |william                                              |1747-1747)               |
|3.10773  |scull                       |nicholas                                             |1687-1761)               |
|3.10775  |clap                        |thomas                                               |1703-1767)               |
|388.515  |seward                      |anna                                                 |1742-1809)               |
|416.10   |street                      |nicholas                                             |1730-1806)               |
|3.10782  |pattillo                    |henry                                                |1726-1801)               |
|388.519  |thurman                     |ralph                                                |NA-NA)                   |
|570.1    |tilden                      |stephen                                              |1690-1766)               |
|3.10784  |rodgers                     |john                                                 |1727-1811)               |
|388.525  |schaffer                    |david                                                |NA-NA)                   |
|388.526  |tillier                     |rodolphe                                             |NA-NA)                   |
|595      |tatem                       |william                                              |NA-NA)                   |
|6.4633   |arnold                      |benedict                                             |1741-1801)               |
|3.10793  |wigglesworth                |samuel                                               |1689-1768)               |
|5.4716   |pemberton                   |israel                                               |1685-1754)               |
|4.2789   |snyder                      |g w                                                  |NA-NA)                   |
|416.11   |treat                       |joseph                                               |1734-1787)               |
|3.10797  |stone                       |nathanael                                            |1667-1755)               |
|1.15083  |andrews                     |samuel                                               |1737-1818)               |
|388.575  |henderson                   |richard                                              |NA-NA)                   |
|4.2799   |humphreys                   |daniel                                               |1740-1827)               |
|3.10814  |tousard                     |louis de                                             |1749-1817)               |
|5.4739   |pemberton                   |israel                                               |1715-1779)               |
|388.597  |henry                       |patrick                                              |1736-1799)               |
|3.10815  |walden                      |isaac                                                |NA-NA)                   |
|536.1    |banks                       |john                                                 |1784-1784)               |
|3.10817  |webster                     |pelatiah                                             |1726-1795)               |
|3.10820  |ogden                       |john cosens                                          |1751-1800)               |
|3.10822  |hazard                      |nathaniel                                            |1748-1798)               |
|3.10824  |way                         |nicholas                                             |1750-1797)               |
|388.603  |abbot                       |john                                                 |1743-1804)               |
|4.2804   |brown                       |charles brockden                                     |1771-1810)               |
|3.10827  |hopkinson                   |joseph                                               |1770-1842)               |
|1.15093  |minot                       |george richards                                      |1758-1802)               |
|3.10828  |swift                       |zephaniah                                            |1759-1823)               |
|3.10831  |welch                       |moses c                                              |1754-1824)               |
|388.613  |jones                       |john paul                                            |1747-1792)               |
|1.15097  |inglis                      |charles                                              |1734-1816)               |
|3.10836  |fox                         |william                                              |???NA-NA)                |
|3.10837  |spark                       |alexander                                            |1762-1819)               |
|388.625  |cincinnatus                 |lucius quintius                                      |NA-NA)                   |
|3.10845  |claggett                    |william                                              |NA-NA)                   |
|649      |clarke                      |samuel                                               |1721-1721)               |
|3.10848  |jacob                       |stephen                                              |1755-1817)               |
|3.10849  |jenkins                     |griffin                                              |NA-NA)                   |
|3.10851  |jones                       |benjamin                                             |1754-1754)               |
|3.10852  |judd                        |jonathan                                             |1719-1803)               |
|4.2809   |low                         |nathanael                                            |1740-1808)               |
|3.10853  |sower                       |christopher                                          |1754-1799)               |
|1.15104  |dodge                       |john                                                 |1751-1800)               |
|653      |shurtleff                   |james                                                |1745-1832)               |
|3.10855  |chaudron                    |jean simon                                           |1758-1846)               |
|3.10856  |pemberton                   |ebenezer                                             |1672-1717)               |
|586.1    |jenks                       |william                                              |NA-NA)                   |
|473.4    |kerr                        |david                                                |1749-1814)               |
|1.15107  |keteltas                    |abraham                                              |1732-1798)               |
|5.4749   |hollenback                  |matthias                                             |1752-1829)               |
|3.10858  |koffler                     |john frederick                                       |NA-NA)                   |
|3.10860  |chew                        |samuel                                               |1693-1744)               |
|388.667  |conway                      |henry seymour                                        |1719-1795)               |
|3.10862  |potter                      |elam                                                 |1742-1794)               |
|1.15113  |johnson                     |guy                                                  |1740-1788)               |
|4.2814   |frink                       |samuel                                               |1735-1771)               |
|4.2815   |edwards                     |morgan                                               |1722-1795)               |
|1.15114  |leigh                       |egerton                                              |1733-1788)               |
|1.15115  |gyles                       |john                                                 |1678-1755)               |
|3.10876  |payson                      |phillips                                             |1736-1801)               |
|3.10879  |randolph                    |edmund                                               |1753-1813)               |
|4.2822   |willard                     |samuel                                               |1705-1741)               |
|4.2823   |calef                       |robert                                               |1648-1719)               |
|3.10903  |cruse                       |englehart                                            |NA-NA)                   |
|1.15118  |delaire                     |jas                                                  |NA-NA)                   |
|3.10910  |perkins                     |nathan                                               |1748-1838)               |
|1.15119  |lidenius                    |john abraham                                         |NA-NA)                   |
|4.2824   |linn                        |william                                              |1752-1808)               |
|6.4685   |logan                       |james                                                |1674-1751)               |
|3.10911  |webb                        |thomas                                               |1724-1796)               |
|4.2828   |ross                        |zephaniah                                            |NA-NA)                   |
|3.10914  |eaton                       |william                                              |1764-1811)               |
|3.10919  |checkley                    |samuel                                               |1696-1769)               |
|3.10921  |coke                        |thomas                                               |1747-1814)               |
|4.2833   |niles                       |nathaniel                                            |1741-1828)               |
|3.10922  |frielinghuysen              |theodorus                                            |1761-1761)               |
|1.15123  |gay                         |ebenezer                                             |1696-1787)               |
|3.10938  |stevens                     |simon                                                |1736-1817)               |
|4.2840   |foss                        |john                                                 |1800-1800)               |
|3.10940  |haven                       |samuel                                               |1727-1806)               |
|3.10942  |deane                       |silas                                                |1737-1789)               |
|3.10944  |fairservice                 |james                                                |NA-NA)                   |
|1.15128  |allen                       |james                                                |1739-1808)               |
|660      |breck                       |robert                                               |1713-1784)               |
|3.10956  |taylor                      |nathanael                                            |1722-1800)               |
|3.10958  |leonard                     |abiel                                                |1740-1777)               |
|3.10959  |estabrook                   |hobart                                               |1716-1766)               |
|1.15130  |collot                      |georges-henri-victor                                 |1750-1805)               |
|3.10962  |henley                      |david                                                |1749-1823)               |
|6.4688   |st clair                    |arthur                                               |1734-1818)               |
|4.2846   |wijnpersse                  |dionysius van de                                     |1724-1808)               |
|428.3    |brown                       |andrew                                               |1744-1797)               |
|6.4690   |howell                      |isaac                                                |1722-1797)               |
|3.10975  |foster                      |william                                              |1740-1780)               |
|398.23   |NA (1762-1824)              |NA                                                   |NA                       |
|1.15133  |stearns                     |josiah                                               |1732-1788)               |
|1.15134  |powers                      |peter                                                |1728-1800)               |
|3.10979  |higginson                   |john                                                 |1616-1708)               |
|388.696  |jones                       |daniel                                               |NA-NA)                   |
|3.10985  |stone                       |nathan                                               |1708-1781)               |
|3.10987  |lyman                       |eliphalet                                            |1754-1836)               |
|3.10988  |loring                      |israel                                               |1682-1772)               |
|3.10990  |ruggles                     |thomas                                               |1704-1770)               |
|1.15138  |bradley                     |stephen row                                          |1754-1830)               |
|1.15140  |stearns                     |william                                              |1749-1783)               |
|4.2851   |paley                       |william                                              |1743-1805)               |
|3.10996  |saint-pierre                |bernardin de                                         |1737-1814)               |
|1.15144  |NA (1736-1812)              |NA                                                   |NA                       |
|1.15145  |drowne                      |solomon                                              |1753-1834)               |
|1.15149  |brooks                      |john                                                 |1752-1825)               |
|1.15150  |mouradgea d'ohsson          |ignatius                                             |1740-1807)               |
|3.11008  |townsend                    |shippie                                              |1722-1798)               |
|3.11009  |ladd                        |joseph brown                                         |1764-1786)               |
|4.2859   |webster                     |noah                                                 |1758-1843)               |
|3.11025  |byles                       |mather                                               |1735-1814)               |
|3.11026  |weld                        |ezra                                                 |1736-1816)               |
|3.11028  |holmes                      |abiel                                                |1763-1837)               |
|3.11029  |davidson                    |robert                                               |1750-1812)               |
|3.11033  |mellen                      |john                                                 |1723-1807)               |
|3.11034  |cooper                      |samuel                                               |1725-1783)               |
|3.11036  |west                        |samuel                                               |1731-1807)               |
|3.11037  |howard                      |simeon                                               |1733-1804)               |
|3.11039  |haven                       |jason                                                |1733-1803)               |
|3.11041  |woodward                    |samuel                                               |1727-1782)               |
|3.11042  |eliot                       |andrew                                               |1718-1778)               |
|3.11048  |blair                       |samuel                                               |1712-1751)               |
|3.11051  |gallatin                    |albert                                               |1761-1849)               |
|3.11052  |smith                       |thomas p                                             |NA-NA)                   |
|3.11055  |darling                     |thomas                                               |1720-1789)               |
|3.11057  |townsend                    |jonathan                                             |1721-1776)               |
|3.11060  |adams                       |hannah                                               |1755-1831)               |
|3.11061  |willard                     |joseph                                               |1738-1804)               |
|3.11062  |stillman                    |samuel                                               |1738-1807)               |
|3.11069  |wetmore                     |james                                                |1695-1760)               |
|1.15156  |meigs                       |return jonathan                                      |1740-1823)               |
|1.15158  |morton                      |sarah wentworth                                      |1759-1846)               |
|3.11077  |hollister                   |isaac                                                |1750-1750)               |
|3.11083  |porter                      |samuel                                               |1760-1825)               |
|3.11085  |mckean                      |thomas                                               |1734-1817)               |
|3.11086  |cunningham                  |letitia                                              |NA-NA)                   |
|6.4697   |johnson                     |william                                              |1715-1774)               |
|3.11087  |calcott                     |wellins                                              |NA-NA)                   |
|3.11094  |chaplin                     |ebenezer                                             |1733-1822)               |
|4.2871   |peck                        |jabez                                                |1761-1791)               |
|407.11   |clarke                      |elijah                                               |1733-1799)               |
|3.11104  |finley                      |samuel                                               |1715-1766)               |
|3.11123  |richards                    |george                                               |1755-1814)               |
|3.11125  |moreau de saint-méry        |m l e                                                |1750-1819)               |
|3.11126  |mansfield                   |richard                                              |1723-1820)               |
|3.11133  |shurtleff                   |william                                              |1689-1747)               |
|4.2877   |morse                       |jedidiah                                             |1761-1826)               |
|3.11144  |woods                       |leonard                                              |1774-1854)               |
|3.11175  |church                      |benjamin                                             |1639-1718)               |
|3.11176  |pike                        |joseph                                               |1657-1729)               |
|4.2885   |NA (1732-1785)              |NA                                                   |NA                       |
|4.2886   |argenson                    |rené-louis de voyer                                  |1694-1757)               |
|3.11179  |leaming                     |jeremiah                                             |1717-1804)               |
|3.11182  |cooper                      |william                                              |1694-1743)               |
|1.15184  |sturgeon                    |robert                                               |NA-NA)                   |
|388.748  |swetland                    |luke                                                 |1729-1823)               |
|1.15185  |trumbull                    |john                                                 |1756-1843)               |
|682      |fowler                      |benjamin                                             |NA-NA)                   |
|420.13   |gutridge                    |molly                                                |1749-1836)               |
|398.26   |learned                     |lydia                                                |1730-1792)               |
|684      |plummer                     |jonathan                                             |1761-1819)               |
|685      |tiffany                     |consider                                             |1733-1796)               |
|388.821  |hazard                      |samuel                                               |1714-1758)               |
|388.848  |williams                    |william                                              |1731-1811)               |
|388.868  |camden                      |charles pratt                                        |1714-1794)               |
|388.877  |goddard                     |william                                              |1740-1817)               |
|388.915  |wheelock                    |john                                                 |1754-1817)               |
|694      |brown                       |elisha                                               |1717-1802)               |
|388.916  |binney                      |barnabas                                             |1751-1787)               |
|3.11212  |cadet de gassicourt         |charles louis                                        |1769-1821)               |
|1.15194  |williams                    |john mascoll                                         |1741-1827)               |
|4.2901   |bayard                      |james a                                              |1767-1815)               |
|416.20   |northwester                 |nat                                                  |NA-NA)                   |
|676.1    |glover                      |john                                                 |1732-1797)               |
|1.15195  |gordon                      |john                                                 |1717-1790)               |
|3.11225  |gadsden                     |christopher                                          |1724-1805)               |
|3.11251  |george                      |daniel                                               |1758-1804)               |
|3.11255  |abercrombie                 |robert                                               |1712-1780)               |
|1.15197  |trumbull                    |jonathan                                             |1710-1785)               |
|3.11266  |park                        |paul                                                 |1720-1802)               |
|1.15198  |griffith                    |david                                                |1742-1789)               |
|388.952  |grimké                      |john fauchereaud                                     |1752-1819)               |
|309.11   |park                        |joseph                                               |1705-1777)               |
|3.11270  |barry                       |henry                                                |1750-1822)               |
|3.11273  |gudin de la brenellerie     |paul philippe                                        |1738-1812)               |
|3.11274  |guénée                        |antoine                                              |1717-1803)               |
|4.2912   |guirey                      |william                                              |NA-NA)                   |
|4.2913   |brockway                    |thomas                                               |1745-1807)               |
|3.11280  |mather                      |moses                                                |1719-1806)               |
|3.11283  |pommereul                   |françois rené jean de                                  |1745-1823)               |
|1.15201  |bushe                       |gervase parker                                       |1744-1793)               |
|4.2915   |duke                        |william                                              |1757-1840)               |
|3.11288  |hewes                       |joseph                                               |NA-NA)                   |
|3.11300  |wilmer                      |james jones                                          |1750-1814)               |
|1.15216  |mackellar                   |patrick                                              |1717-1778)               |
|3.11304  |langdon                     |samuel                                               |1723-1797)               |
|3.11306  |dana                        |james                                                |1735-1812)               |
|3.11307  |mcclenachan                 |william                                              |1714-1714)               |
|4.2924   |patten                      |william                                              |1763-1839)               |
|1.15220  |foster                      |isaac                                                |1725-1807)               |
|3.11315  |jones                       |david                                                |1736-1820)               |
|4.2927   |pye                         |henry james                                          |1745-1813)               |
|1.15224  |huntington                  |joseph                                               |1735-1794)               |
|3.11316  |smith                       |william                                              |1754-1821)               |
|1.15225  |dutch                       |ebenezer                                             |1751-1813)               |
|3.11317  |adams                       |william                                              |1710-1798)               |
|1.15226  |tappan                      |david                                                |1752-1803)               |
|3.11320  |downer                      |silas                                                |1729-1785)               |
|3.11321  |whitwell                    |william                                              |1737-1781)               |
|3.11322  |potter                      |nathaniel                                            |1733-1768)               |
|3.11323  |clark                       |ephraim                                              |1722-1797)               |
|3.11324  |hunt                        |holloway whitfield                                   |1769-1858)               |
|3.11328  |fitch                       |elijah                                               |1746-1788)               |
|3.11332  |cushing                     |jacob                                                |1730-1809)               |
|1.15228  |heskith                     |thomas                                               |NA-NA)                   |
|388.959  |auchmuty                    |samuel                                               |1722-1777)               |
|3.11333  |williams                    |william                                              |1665-1741)               |
|3.11334  |hilliard                    |timothy                                              |1747-1790)               |
|3.11336  |duché                        |jacob                                                |1738-1798)               |
|1.15230  |willard                     |joseph                                               |1741-1828)               |
|388.960  |hale                        |thomas                                               |NA-NA)                   |
|388.961  |hall                        |josias carvil                                        |1746-1814)               |
|3.11338  |jingle                      |bob                                                  |NA-NA)                   |
|388.966  |nicholson                   |francis                                              |1655-1728)               |
|1.15231  |power                       |alexander                                            |NA-NA)                   |
|283.8    |phelps                      |charles                                              |1717-1789)               |
|3.11351  |homer                       |jonathan                                             |1759-1843)               |
|516.1    |alline                      |henry                                                |1748-1784)               |
|3.11352  |sullivan                    |ebenezer                                             |1753-1799)               |
|1.15234  |tanguy de la boissière       |c c                                                  |1799-1799)               |
|713.1    |stow                        |joseph                                               |NA-NA)                   |
|656.1    |ceracchi                    |giuseppe                                             |1751-1801)               |
|276.11   |pollock                     |oliver                                               |1737-1823)               |
|3.11367  |mahy                        |guillaume françois                                    |NA-NA)                   |
|3.11372  |humphreys                   |david                                                |1689-1740)               |
|6.4749   |mercer                      |john                                                 |1704-1768)               |
|560.1    |aubry                       |charles philippe                                     |1770-1770)               |
|9.362    |cobb                        |silvanus                                             |1710-1762)               |
|9.363    |bayard                      |william                                              |1729-1804)               |
|9.366    |smith                       |william moore                                        |1759-1821)               |
|388.1004 |bloomfield                  |joseph                                               |1753-1823)               |
|388.1009 |winslow                     |john                                                 |1703-1774)               |
|3.11380  |sainte-croix                |guillaume-emmanuel-joseph guilhem de clermont-lodève |1746-1809)               |
|4.2942   |cotton                      |rowland                                              |NA-NA)                   |
|258.174  |jamison                     |david                                                |1660-1739)               |
|735      |van cortlandt               |stephanus                                            |1643-1700)               |
|208.58   |wilson                      |john                                                 |1588-1667)               |
|15.1113  |bull                        |jonathan                                             |1649-1702)               |
|208.60   |frame                       |richard                                              |NA-NA)                   |
|743      |wheeler                     |thomas                                               |1620-1676)               |
|6.4762   |dotten                      |john                                                 |NA-NA)                   |
|570.3    |cotton                      |seaborn                                              |1633-1686)               |
|15.1121  |brook                       |chidley                                              |NA-NA)                   |
|3.11391  |glenie                      |james                                                |1750-1817)               |
|5.4849   |smith                       |david william                                        |1764-1837)               |
|751      |joynes                      |clement                                              |NA-NA)                   |
|6.4798   |buchan                      |david erskine                                        |1672-1745)               |
|6.4799   |happer                      |thomas                                               |NA-NA)                   |
|6.4800   |irvine                      |john                                                 |NA-NA)                   |
|6.4801   |napier                      |william                                              |NA-NA)                   |
|6.4803   |row                         |john                                                 |NA-NA)                   |
|6.4805   |hay                         |james                                                |NA-NA)                   |
|6.4806   |stirling                    |mungo                                                |1712-1712)               |
|5.4880   |rochead                     |thomas                                               |NA-NA)                   |
|1.15270  |norton                      |jone                                                 |NA-NA)                   |
|5.4886   |meidel                      |c                                                    |NA-NA)                   |
|3.11407  |NA (1759-1837)              |NA                                                   |NA                       |
|3.11408  |sanat                       |de                                                   |NA-NA)                   |
|3.11410  |outremont                   |anselme d'                                           |1746-1822)               |
|3.11413  |glenn                       |john                                                 |NA-NA)                   |
|25.37    |o'connor                    |dermod                                               |NA-NA)                   |
|128.134  |pyle                        |robert                                               |NA-NA)                   |
|208.66   |mackmillan                  |john                                                 |1669-1753)               |
|208.67   |crawford                    |matthew                                              |1733-1733)               |
|258.182  |erskine                     |andrew                                               |1739-1793)               |
|208.71   |davidson                    |william                                              |1741-1741)               |
|315.42   |anderson                    |james                                                |1589-1589)               |
|331.1    |simson                      |thomas                                               |NA-NA)                   |
|258.185  |coote                       |eyre                                                 |1726-1783)               |
|6.4817   |argentré                    |bertrand d'                                          |1519-1590)               |
|6.4818   |freher                      |marquard                                             |1565-1614)               |
|3.11420  |NA (1070-1132)              |NA                                                   |NA                       |
|3.11421  |NA (1115-1183)              |NA                                                   |NA                       |
|3.11422  |draud                       |georg                                                |1573-1635)               |
|3.11423  |sweerts                     |pierre françois                                      |1567-1629)               |
|6.4820   |du chesne                   |andré                                                |1584-1640)               |
|6.4825   |orsbridge                   |philip                                               |NA-NA)                   |
|1.15288  |craven                      |charles                                              |NA-NA)                   |
|3.11428  |watts                       |richard                                              |NA-NA)                   |
|6.4827   |bowyer                      |robert                                               |1758-1834)               |
|3.11430  |thornton                    |bonnell                                              |1724-1768)               |
|3.11432  |chalotais                   |louis-rené de caradeuc de                            |1701-1785)               |
|1.15297  |roddam                      |robert                                               |NA-NA)                   |
|4.2967   |coombes                     |william henry                                        |1767-1850)               |
|3.11437  |erskine                     |ebenezer                                             |1680-1754)               |
|1.15303  |lally-tolendal              |trophime-grard                                       |1751-1830)               |
|3.11444  |behn                        |friedrich daniel                                     |1733-1804)               |
|3.11446  |sully                       |maximilien de bthune                                 |1559-1641)               |
|1.15306  |roye                        |jean de                                              |NA-NA)                   |
|3.11450  |NA (1785-1785)              |NA                                                   |NA                       |
|3.11453  |herries                     |john                                                 |NA-NA)                   |
|1.15310  |arckenholtz                 |johan                                                |1695-1777)               |
|6.4851   |fernández navarrete          |domingo                                              |1689-1689)               |
|1.15316  |putter                      |johann stephan                                       |1725-1807)               |
|1.15318  |cooper                      |oliver st john                                       |NA-NA)                   |
|128.140  |nieuhof                     |johannes                                             |1618-1672)               |
|6.4853   |emlen                       |samuel                                               |1730-1799)               |
|1.15330  |pennant                     |thomas                                               |1726-1798)               |
|3.11468  |vincent                     |nicholas                                             |NA-NA)                   |
|4.2983   |smith                       |alexander                                            |1714-1726)               |
|1.15334  |saunders                    |edmund                                               |1683-1683)               |
|4.2985   |cooper                      |w d                                                  |NA-NA)                   |
|5.4955   |morris                      |charles                                              |1745-1838)               |
|4.2987   |cant                        |andrew                                               |1590-1663)               |
|7.51     |hogben                      |john                                                 |1735-1735)               |
|9.382    |coxe                        |h h                                                  |1792-1792)               |
|9.383    |pridden                     |john                                                 |1758-1825)               |
|3.11502  |saint-hyacinthe             |thémiseul de                                          |1684-1746)               |
|5.4973   |sunderland                  |robert spencer                                       |1640-1702)               |
|1.15353  |neild                       |robert                                               |NA-NA)                   |
|3.11508  |croix                       |joh friedrich guillus                                |NA-NA)                   |
|3.11509  |angiolini                   |gasparo                                              |1731-1803)               |
|4.3001   |ferri de saint-constant     |j l jean-l                                           |1755-1830)               |
|10.4046  |riddel                      |alexander                                            |NA-NA)                   |
|3.11514  |müchler                     |johann georg                                         |1724-1819)               |
|4.3004   |gessner                     |salomon                                              |1730-1788)               |
|3.11518  |currie                      |john                                                 |1679-1765)               |
|3.11528  |adams                       |francis                                              |NA-NA)                   |
|5.4995   |cate                        |james                                                |1728-1813)               |
|1.15394  |burdus                      |thomas                                               |1748-1748)               |
|3.11541  |fonvizin                    |denis ivanovich                                      |1745-1792)               |
|9.396    |hayward                     |robert                                               |NA-NA)                   |
|7.59     |buzaglo                     |abraham                                              |1716-1788)               |
|9.398    |pinnell                     |matthew                                              |NA-NA)                   |
|3.11550  |lipscomb                    |william                                              |1754-1832)               |
|1.15408  |still                       |john                                                 |???1761-1839)            |
|3.11554  |gookin                      |daniel                                               |1612-1687)               |
|4.3015   |howell                      |william                                              |2-1683)                  |
|6.5462   |moorhouse                   |michael                                              |NA-NA)                   |
|6.5472   |whitehead                   |john                                                 |1740-1804)               |
|5.5041   |calcott                     |william                                              |NA-NA)                   |
|4.3018   |shrenock                    |john                                                 |NA-NA)                   |
|3.11568  |young                       |richard nash                                         |1781-1789)               |
|5.5044   |dundas                      |ralph                                                |NA-NA)                   |
|1.15457  |crowe                       |william                                              |1691-1743)               |
|3.11573  |blakeway                    |robert                                               |1689-1689)               |
|10.4059  |miles                       |henry                                                |NA-NA)                   |
|3.11578  |veneer                      |john                                                 |NA-NA)                   |
|1.15467  |synge                       |edward                                               |1762-1762)               |
|3.11595  |goring                      |henry                                                |NA-NA)                   |
|5.5069   |holmes                      |william                                              |1689-1748)               |
|1.15488  |armstrong                   |francis                                              |1786-1786)               |
|6.5561   |drake                       |francis                                              |1696-1771)               |
|25.54    |hill                        |james                                                |1697-1697)               |
|5.5076   |williams                    |walter                                               |1690-1690)               |
|3.11619  |cox                         |daniel                                               |1759-1759)               |
|4.3036   |johnson                     |james                                                |NA-NA)                   |
|4.3038   |scot                        |george                                               |1776-1776)               |
|3.11626  |NA (1682-1712)              |NA                                                   |NA                       |
|3.11631  |NA (1691-1765)              |NA                                                   |NA                       |
|1.15542  |keyser                      |jan                                                  |NA-NA)                   |
|1.15543  |dell                        |jonas                                                |1665-1665)               |
|1.15549  |thorne                      |tom                                                  |1792-1792)               |
|3.11643  |lyster                      |thomas                                               |NA-NA)                   |



### Life span of uniquely identified top authors

Ordered by productivity (number of documents))


```
## Error in `[.data.frame`(df, , c("author.unique", "author.birth", "author.death")): undefined columns selected
```

```
## Error in filter_(.data, .dots = lazyeval::lazy_dots(...)): object 'dfa' not found
```

```
## Error in eval(expr, envir, enclos): object 'dfa' not found
```

```
## Error in eval(expr, envir, enclos): object 'dfa' not found
```

```
## Error in arrange_(.data, .dots = lazyeval::lazy_dots(...)): object 'dfa' not found
```

```
## Error in factor(dfa$author.unique, levels = dfa$author.unique): object 'dfa' not found
```

```
## Error in nrow(dfa): object 'dfa' not found
```

```
## Error in ggplot(dfa): object 'dfa' not found
```

```
## Error in eval(expr, envir, enclos): object 'author.birth' not found
```

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
## Error in sort(df2$paper.consumption.km2, decreasing = TRUE): object 'df2' not found
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
## Error in order(df2$paper.consumption.km2, decreasing = TRUE): object 'df2' not found
```

```
## Error in eval(expr, envir, enclos): object 'df2' not found
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

Top-50 publication places are shown together with the number of documents. This info is available for 0 documents (NaN%). There are 0 unique publication places. Overall 93.9% of the places could be matched to geographic coordinates (from the [Geonames](http://download.geonames.org/export/dump/) database).

[Publication place counts](output.tables/publicationplaces.csv)

[Publication country counts](output.tables/publicationcountries.csv)

[Discarded publication places](output.tables/discarded_place.csv)

[Discarded publication places](output.tables/missingcountry.csv)



```
## Error in dfs[1:ntop, ]: incorrect number of dimensions
```

```
## Error in layout_base(data, rows, drop = drop): At least one layer must contain all variables used for facetting
```


```
## [1] "Complete counts in file: output.tables/publicationplaces.csv"
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



The 50 most common publishers are shown with the number of documents. Publisher information is available for 0 documents (NaN%). There are 0 unique publisher names (some may be synonymes, though).



```
## Error in dfs[1:ntop, ]: incorrect number of dimensions
```

```
## Error in layout_base(data, rows, drop = drop): At least one layer must contain all variables used for facetting
```



```
## [1] "Complete counts in file: output.tables/publishers.csv"
```


### Publication year

Publication year is available for 49473 documents (98%). The publication years span 1-1799

![plot of chunk summarypublicationyear](figure/summarypublicationyear-1.png) 


### Titles

Top-50 titles are shown together with the number of documents. This info is available for 0 documents (NaN%). There are 0 unique titles.


```
## Error in dfs[1:ntop, ]: incorrect number of dimensions
```

![plot of chunk summarytitle](figure/summarytitle-1.png) 


```
## [1] "Complete counts in file: output.tables/titles.csv"
```

```
## Warning in is.na(x): is.na() applied to non-(list or vector) of type 'NULL'
```

## Language

The 21 unique languages are shown together with the number of documents. This info is available for 50273 documents (100%). 

![plot of chunk summarylang](figure/summarylang-1.png) 


```
## [1] "Complete counts in file: output.tables/languages.csv"
```


## Page counts

[Converted pages](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/page_conversins.csv)

[Discarded page info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/documentpages-discarded.csv)



## Document size comparisons

[Discarded dimension info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/documentdimensions_discarded.csv)

[Converted dimensions](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/dimension_conversins.csv)


Document size (area) info in cm2 is available for 0 documents (NaN%). Estimates of document size (area) info in gatherings system are available for 50280 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png) 

Compare gatherings and cm2 sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.


```
## Error in eval(expr, envir, enclos): could not find function "melt"
```

```
## Error in names(dfm) <- c("gatherings", "cm2", "documents"): object 'dfm' not found
```

```
## Error in factor(dfm$gatherings, levels = levels(df$gatherings.original)): object 'dfm' not found
```

```
## Error in ggplot(dfm, aes(x = gatherings, y = cm2)): object 'dfm' not found
```

```
## Error in eval(expr, envir, enclos): object 'documents' not found
```

Compare gatherings and page counts. Page count information is estimated for -1557 documents and updated (changed) for 1095 documents. 

![plot of chunk summarypagecomp](figure/summarypagecomp-1.png) 

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png) 

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|1to           |             2.481936|                      2|        4249|                  NA|                    NA|         NA|         10.43590|                  8|      39|
|2long         |             7.714286|                      5|           8|                  NA|                    NA|         NA|         23.00000|                 23|       1|
|2fo           |            61.780882|                      4|       11533|            724.6260|              716.0000|         46|         16.84833|                 12|    1945|
|4long         |             5.000000|                      5|           4|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|4to           |            43.774868|                     12|       16528|            411.6667|              439.0000|         27|         15.86700|                  8|   12188|
|8vo           |           143.449982|                     68|       11600|            406.3343|              413.3333|        181|         28.47323|                 28|    3810|
|12long        |            67.000000|                     50|          10|             24.0000|               24.0000|          1|         28.80000|                 24|       5|
|12mo          |           184.145765|                    162|        3023|            260.5657|              211.0000|         47|         26.26923|                 24|     520|
|16mo          |           163.645570|                    116|          81|                  NA|                    NA|         NA|         30.46154|                 24|      13|
|18mo          |           177.575758|                    158|          33|            172.0000|              172.0000|          1|         41.00000|                 41|       2|
|24long        |           244.000000|                    244|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|24mo          |           193.525000|                    181|          43|                  NA|                    NA|          2|         23.27273|                 24|      11|
|32mo          |           179.333333|                    193|           6|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|48mo          |           128.000000|                    128|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|64mo          |           197.000000|                    197|           2|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|NA            |            14.048067|                      2|        3002|                  NA|                    NA|         NA|         18.87097|                 15|     403|



```
## Error in ggplot(melt(mean.pagecounts[, c("median.pages.multivol", "median.pages.singlevol", : could not find function "melt"
```

```
## Error in ggplot(melt(mean.pagecounts[, c("mean.pages.multivol", "mean.pages.singlevol", : could not find function "melt"
```

![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png) 


## Average document dimensions 


```
## Error in eval(expr, envir, enclos): unknown column 'publication.decade'
```

```
## Error in eval(expr, envir, enclos): object 'publication.decade' not found
```



|gatherings.original | mean.height| median.height| mean.width| median.width|   n|
|:-------------------|-----------:|-------------:|----------:|------------:|---:|
|2fo                 |    38.29587|      38.29587|   21.88462|     21.88462| 436|
|4to                 |    21.57187|      21.57187|   20.50000|     20.50000| 327|
|8vo                 |    20.80628|      20.80628|        NaN|          NaN| 191|
|12mo                |    14.83333|      14.83333|   12.00000|     12.00000|  13|
|NA                  |    31.71315|      31.71315|   22.31177|     22.31177| 817|

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
    
    &lt;div id = &#039;chart37de4c6dd720&#039; class = &#039;rChart nvd3&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
 $(document).ready(function(){
      drawchart37de4c6dd720()
    });
    function drawchart37de4c6dd720(){  
      var opts = {
 &quot;dom&quot;: &quot;chart37de4c6dd720&quot;,
&quot;width&quot;:    800,
&quot;height&quot;:    400,
&quot;x&quot;: &quot;Hair&quot;,
&quot;y&quot;: &quot;Freq&quot;,
&quot;group&quot;: &quot;Eye&quot;,
&quot;type&quot;: &quot;multiBarChart&quot;,
&quot;id&quot;: &quot;chart37de4c6dd720&quot; 
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
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  nvd3  ' id='iframe-chart37de4c6dd720'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 400px;}</style>
-->

