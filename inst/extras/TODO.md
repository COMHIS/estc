### Page counts

Yleisenä sääntönä näyttäis toimivan, että kun ECCOssa satoja sivuja
(tai >100) ja meillä hyvin vähän sivuja (esim. <10) niin näissä
voitais täydentää meidän tiedot tuolta ECCOsta.

orig/estc/ecco
v. 	5 	356 	1776 	NA 	Critical observations on books, antient and modern
v. 	5 	330 	1716 	NA 	The Free-holder
2v.,4 plates, tables 	8 	518 	1788 	Bergman, Torbern (1735-1784) 	Physical and chemical essays
2v.,4 plates, 2 tables 	8 	509 	1784 	Bergman, Torbern (1735-1784) 	Physical and chemical essays
v. 	5 	313 	1785 	NA 	The Oriental magazine
v. 1,3,plates 	5 	311 	1715 	Ward, Edward (1667-1731) 	The history of the grand rebellion

näissä kaikissa ECCO tieto on oikein.

-------------------------

Yksi ero mikä sitten tästä saattaa kuitenkin tulla on sellainen, että ECCOssa joku merkintä koskee sen tietyn vuoden tekstiä ja meillä sitten saattaa koskea sarjaa pidemmälti:

58v.,plates 	22968 	372 	1779 	NA 	The works of the English poets

Mutta joka tapauksessa, niiltä osin kun meillä ilmoitettuna on vain muutamia sivuja, mutta ECCO datassa on satoja, niin sitten se oikea käytettävä tieto suurelta osalta tapauksista voidaan täydentää tuolta ECCOsta.

-------------------------

ekoilla riveillä tapauksia joissa meillä sivumäärä on nonsense:

orig/estc/ecco

mukana multivolumien osalta ESTCssä issue tapauksia:

209 v. 	54340 	317 	1753 	NA 	The world 	

Tässä tuo +50000 sivuarvio meillä reippaasti yläkanttiin. Lisäksi
tuolla on myös monia muita noita tosi isoja. Mutta oliko niin että
näiden kohdalta ei vielä ollut sitä tiputtelua tehty?

Tässä taas yksi esimerkki siitä missä meidän laskut menee pahasti yli:

50 v. 	19800 	352 	1795 	NA 	The Tribune 	

Eli nää on nyt niitä issue tapauksia joissa lasketaan multivolumilla
jolloin sivut karkaa käsistä. Nämä pitää ehdottomasti korjata.

------------------------------------------

mut sit on tietysti myös tapauksia joissa meidän arvio on oikeassa. Esim.

50v.,plates 	7650 	226 	1761 	Rider, William (1723-1785) 	A new history of England, from the descent of the Romans, to the demise of his late Majesty, George II

Tarkistin tän ja toi 226 pitää paikkaansa yhden volumen osalta, mutta niitä on 50 (eikä ainoastaan yksi niin kuin tosta eccon pohjalta ajateltaisiin).

-------------------------------------

miksi täällä osa on NA ja osa jolla pienempi N niin on arvioidut sivut?
https://github.com/rOpenGov/estc/blob/master/inst/examples/mean_pagecounts_singlevol.csv

single volume page count average painuu aika korkeaksi. Pitää tsiigata
että onko siellä ne "superpitkät" dokkarit mukana vai ei painamassa
esim. 12mo yli600 sivuiseksi.

# ----------------------------------

näistä pitäisi tulla *multivolumearviosivut plateksien päälle:

4to      2v.,100 plates            = 200
2fo      3v.,400 plates =         800

# ----------------------------------

8vo      7pt.,map =      1         

MT: 7 parts + map, miksi tulee 1?

---------------------



### Geography

Test the [tmap](https://cran.r-project.org/web/packages/tmap/vignettes/tmap-nutshell.html) R package



 

 



