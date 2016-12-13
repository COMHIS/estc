### Page counts

ekoilla riveillä tapauksia joissa meillä sivumäärä on nonsense:

orig/estc/ecco

One sheet (verso blank) 	366 	1 	1706 	NA 	An estimate of the yearly income of one prince

Physical description on "one sheet" ja merkattu sivumäärä 366.


Samaten:

1 sheet ([2] p.) :bill. (woodcuts) 	270 	1 	1793 	NA 	The contrast. 1793. English liberty French liberty ... Which is best? God save the King!

Tässä "1 sheet ([2] p.) muuttuu 270 sivuun.


Eli koodissa varmaan jotain fibaa näiltä osin?

----------------------------------------------

mukana multivolumien osalta ESTCssä issue tapauksia:

209 v. 	54340 	317 	1753 	NA 	The world 	


Tässä tuo +50000 sivuarvio meillä reippaasti yläkanttiin. Lisäksi
tuolla on myös monia muita noita tosi isoja. Mutta oliko niin että
näiden kohdalta ei vielä ollut sitä tiputtelua tehty?

Tässä taas yksi esimerkki siitä missä meidän laskut menee pahasti yli:

50 v. 	19800 	352 	1795 	NA 	The Tribune 	


Eli nää on nyt niitä issue tapauksia joissa lasketaan multivolumilla
jolloin sivut karkaa käsistä. Nämä pitää ehdottomasti korjata.

mut sit on tietysti myös tapauksia joissa meidän arvio on oikeassa. Esim.

50v.,plates 	7650 	226 	1761 	Rider, William (1723-1785) 	A new history of England, from the descent of the Romans, to the demise of his late Majesty, George II

Tarkistin tän ja toi 226 pitää paikkaansa yhden volumen osalta, mutta niitä on 50 (eikä ainoastaan yksi niin kuin tosta eccon pohjalta ajateltaisiin).

-----------------------

mihin me päädyttiin tuon 1to ja 2fo kanssa? Eli tuolla on mukana nyt
tuota 1to joka tarkoittaa siis täyskokoista sheettiä ja niiden määrä
pitäisi olla aika pieni. Tätä fiksailtiin jossain vaiheessa ja mietin
mihin päädyttiin.

Esim. täällä ei ole enää 1to ollenkaan:
https://github.com/rOpenGov/estc/blob/master/inst/examples/mean_pagecounts_singlevol.csv

Näistä voitais vähän jutella että saadaan noi fiksattua myös niin että
voi antaa täysin ulkopuolisille nähtäväksi ilman että joutuu hirveästi
selittelemään että mitä mikin ratkaisu on.

-----------------------------------------------------------------

miksi täällä osa on NA ja osa jolla pienempi N niin on arvioidut sivut?
https://github.com/rOpenGov/estc/blob/master/inst/examples/mean_pagecounts_singlevol.csv

-----------------------------------------------------------------

single volume page count average painuu aika korkeaksi. Pitää tsiigata
että onko siellä ne "superpitkät" dokkarit mukana vai ei painamassa
esim. 12mo yli600 sivuiseksi.

-----------------------------------------------------------------

Nää multivolumet joissa ainoastaan mukana plates-, tables- tai
vast. täydentävää tietoa pitäisi saada NA multivolume-tapauksiksi
joissa sitten sivumääräarvio multivolume-keskiarvon/mediaanin mukaan
ja sitten lisätään siihen tämä ylimääräinen (plates, tables tai
vast. tieto). Tässä muutamia tällaisia tapauksia joihin tuohon annetun
lukeman lisäksi pitäisi sitten tulla se multivolume-keskiarvo/mediaani
* volumimäärätieto:
 
8vo      4v.,plates,tables =      6

2fo      3(?) v., plates (some folded) : ill. =  7

8vo      2v,plates,tables =      6

4to      2v.,100 plates            = 200

2fo      3v.,400 plates =         800    

Eli näistä myös tuo viimeinen jossa on tuo 400 plates, niin siihen
pitäisi tulla lisäksi 3*multivolumearviosivut päälle (sama pätee
sitten kaikkii muihin vastaaviin tapauksiin.

Samaan kategoriaan myös:
2fo      v. =      5         

Eli “v.” merkintä ei ole sama kuin “v”, vaan viittaus volumeen.

Rajatapaus on sitten sellainen jossa lukee vain:

NA       v          = 5     

Tässä “v” voi olla viittaus volumiin (eikä esi-sivuihin niin kuin nyt
lasketaan, mutta näistä ei voi olla varmuutta, joten “v.” volume
merkintä riittää eli tämä tapaus saa jäädä sellaiseksi kuin se nyt on.


Sitten toisen tyyppinen usein toistuva juttu, sivuvälimerkintä joissa
“i.e.” tietoa:

8vo      p. [2],483-505[i.e, 483-504]            = 507

MT: pitäisi mennä 504-483+1

2fo      p. 477-452[i.e., 477-552]     = 552

MT: pitäisi mennä 552-477+1

Näissä pitäisi mennä tuon sivuvälimerkinnän mukaan, mutta
hakasulkeissa tuleva täydentävä tieto joka totutusti korvaa tuon
edellisen merkinnän, niin jostain syystä koodi nyt olettaa että tässä
olisi ylimääräistä tietoa ja ottaa sivumäärän korkeimman annetun
sivumerkinnän mukaan, vaikka pitäisi käyttää sivuvälimerkintää.

Tuo on mielestäni selvä tapaus joka vaikuttaa merkintöihin. Sitten
lisäksi löytyy myös:

2fo      219-225, 224-226 p. =        226    
2fo      167-173, 172-174 p.            = 174 
2fo      [2], 9-10, 13-14 p.     = 16   
2fo      [2], 35-44, 47-82 p.  = 84   

 
Eli tällaisia joissa on kaksi sivuväliä. Nämä eivät ole niin selviä
tapauksia ja mielestäni voidaan näiden osalta pysyä tuossa nykyisessä
eli korkein merkintä.


sellainen joka pitäisi korjata sivuvälimerkinnäksi on:

2fo      141-174. [2] p.          = 174 


Sitten yksittäisiä tapauksia joissa jotain hämärää:

2fo      7v.(xvi,4387,[1],260,[62]p.)            = 339

MT: miksi tuota 4387 ei oteta mukaan?

 
2fo      [2],28p.,XLVI plates =           30      

MT: XLVI plates, miksi ei mukana?

 
18mo  180p., 8leaves of plates (1folded)  = 180 

MT: 8 leaves of plates, miksi ei mukana?


4to      v,6-23,[1]p. =             1         

MT: miksi tästä tulee 1?

 
8vo      7pt.,map =      1         

MT: 7 parts + map, miksi tulee 1?

---------------------

Yleisenä sääntönä muuten näyttäis toimivan, että kun ECCOssa on annettuna satoja sivuja (tai >100) ja meillä on hyvin vähän sivuja (esim. <10) niin sitten näissä tapauksissa voitais täydentää meidän tiedot tuolta ECCOsta.

Esim.

v. 	5 	356 	1776 	NA 	Critical observations on books, antient and modern
v. 	5 	330 	1716 	NA 	The Free-holder
2v.,4 plates, tables 	8 	518 	1788 	Bergman, Torbern (1735-1784) 	Physical and chemical essays
2v.,4 plates, 2 tables 	8 	509 	1784 	Bergman, Torbern (1735-1784) 	Physical and chemical essays
v. 	5 	313 	1785 	NA 	The Oriental magazine
v. 1,3,plates 	5 	311 	1715 	Ward, Edward (1667-1731) 	The history of the grand rebellion


Niin näissä kaikissa toi ECCO tieto on oikein.


Yksi ero mikä sitten tästä saattaa kuitenkin tulla on sellainen, että ECCOssa joku merkintä koskee sen tietyn vuoden tekstiä ja meillä sitten saattaa koskea sarjaa pidemmälti:


esim.


58v.,plates 	22968 	372 	1779 	NA 	The works of the English poets


Mutta joka tapauksessa, niiltä osin kun meillä ilmoitettuna on vain muutamia sivuja, mutta ECCO datassa on satoja, niin sitten se oikea käytettävä tieto suurelta osalta tapauksista voidaan täydentää tuolta ECCOsta.

-------------------------

### Geography

Test the [tmap](https://cran.r-project.org/web/packages/tmap/vignettes/tmap-nutshell.html) R package



 

 



