# TODO

Josko Fennican lukufunktiosta saisi geneerisemmän version bibliographicaan?
https://github.com/rOpenGov/fennica/blob/master/R/data.R
-> Pitäis muuttaa kenttänimet koko koodista samalla

Publication year: 1764[1765] Näissä tapauksissa mun tulkinta olisi että hakasulkeissa on vuosi jolloin kirja on julkaistu ja edellä on vuosi joka on merkitty kirjan kanteen. 
1647[8]
1727[1728]                     
1770[1776]
MDCCXXIII-MDCCXXV. [1723-17125].

----------------------------------------

Video with folio vs. octavo and balls are publication places, sizes
are total publication volumes ?

------------------------------------------

tulosta summaryihin lista docseista joille pinta-alaa ei saatu vaikka
jotain dimensiotietoja oli. hyödyllistä nähdä onko näitä paljon vai
vähän ja missä menee pieleen. Ehkä alun summaryplottiin tieto
monellako dokkarilla mitäkin näistä

-------------------------------

Suhteellinen tärkeysmittari 1-100:
- auktoreille
- dokumenteille
- topiceille
- jne.

Levinneisyys aikajanalla: toimisko Shannon-diversiteetti, range tms. 

Historiallisten aineistojen viitetietojärjestelmän puuttuessa hieno
mittari.

Eli mitä suurempi julkaisumäärä (oli kyseessä yksittäinen auktori,
topic tai mikä vaan) ja mitä suurempi levinneisyys aikajanalla, niin
sitä merkittävämpi juttu (yleensä). pitäisi keksiä hyvä kerroin miten
laskea tuo voluumi*spread*sivumäärä (suoraan yks yhteen se ei voi
olla)

n(docs) * 'levinneisyys aikajanalla'? * pages 

-----------------------------

Author Richness and Diversity (w.r.t. documents) across time ?

-------------------

muutamien erikseen valittujen “most common topics” koko aineiston
summarysta laittaminen aikajanalle. Tietysti jos helpoin toteuttaa on
pistää suoraan kaikki aikajanalle, niin tämä käy myös. Näissä ei siis
mitään sen kummempaa vertailuaspektia tässä vaiheessa. Esim

jalostettu taulukko jossa kuvattu ”historical timespan for subjects”
joka koskee pelkästään näiden 50 auktorin julkaisuja?

-> Subject topicseja pitää putsata huomattavasti ennen kuin tästä saa
   mitään järkevää irti. Idea oli varmaan piirtää topiccien yleisyys
   vuosiluvun funktiona tms?

Thirty Years War, 1618-1648

Popish Plot, 1678

Dissenters, religious

Finance, public

Recruiting and enlistment

Seven Years’ War, 1756-1763

[Check also Duhaime's blog
examples](http://douglasduhaime.com/blog/mapping-the-early-english-book-trade)

Produce example data sets to be used with our tools

.................................

https://github.com/rOpenGov/estc/blob/master/inst/examples/figure/geo2-1.png 
samojen paikkojen yhdistäminen, mutta ei nyt ykkös todo.

.................................

auktori kentässä (100) nyt myös mukana tyyppejä kentästä 700.

Esim. Newcomb, Thomas,$d-1691$b-1691,$eprinter 

joskus sinne 700 kenttään on lisäilty nimiä jotka mukana
kirjaproduktiossa. Erityisesti näitä kirjapainajia. Näitä on ainakin
muutama siinä epäselvien auktoreiden kentässä. Periaatteen kuitenkin
pitäisi olla toki että auktori tulee auktorikentästä (100). 600 kenttä
liittyy kyllä näköjään suoraan auktoriin. 700 menee myös muihin mukana
olleisiin.

-----------

Paperin hinta vs. painomäärät?

---------------

Try rOpenSci/GenderizeR R package and also [babynames package](https://github.com/hadley/babynames)

------------------------------------

## Published for 

”publisher” kysymys, jos pystytään ratkomaan niin että saadaan valjastettua käyttöön suurin osa relevantista informaatiosta niin että samaa periaatetta pystytään toistamaan muualla, olisi tämä kirjahistoriassa kova pelinavaus. edetään rivakasti niiden kenttien osalta joiden kanssa mahdollista ja jätetään vaikeammat tapaukset myöhemmälle, mutta ettei kuitenkaan kokonaan hylätä (eli siis juuri tuo PublisherPrintedOther.csv)
 
> Siellä on tosiaan erikseen lausumia "printed for", "printed by",
> "reprinted" etc. Oliko nyt niin että halutaan poimia nuo "printed for"
> ja "printed by" tapaukset toisistaan erillisinä? Reprintit jätän nyt ainakin toistaiseksi huomiotta.

> Olisi ehkä periaatteessa mahdollista parsia kaikki kentissä esiintyvät
> nimet, mutta lie arvokasta pitää se tieto että oliko for/by/sold/at/reprinted/etc. ja jos tätä erottelua aletaan tehdä niin menee vielä mutkikkaammaksi. Ilmeisesti nyt ensi alkuun kandee vaan jättää nuo huomiotta ja keskittyä ihan vain printed for/by tekijöiden saamiseen talteen.

Tästä aivan samaa mieltä.

Kokonaiskuvaa katsellessa tuli mieleen seuraava mahdollisuus viilata hieman ”printed for” kenttää, joka keskeinen:

Toimisiko “printed for” kohdassa, jos etsitään vain “for” ja sitä seuraava nimi? Näin tulisi nuo kaikki ”for the author” tyyliset tapaukset mukaan, niitä on varmaankin jonkun verran myös muita kuin tekijä. Ymmärtääkseni tässä ”for” prepositio liittyy aina pelkästään tuohon julkaisijaan ja ei siten sekoitu muihin tapauksiin.

Esimerkkinä ”for the author”:

Author is the publisher, not included now ([kelasin ensimmäiset 10000 PublisherPrintedFull.csv]): 287, 373, 425, 546, 1226, 1269, 1584, 1837, 1952, 2005, 2285, 2339, 2390, 3256, 3314, 3851, 4271, 4674, 5224, 5394, 5724, 5833, 6261, 6348, 7397, 7953, 8475, 8663, 9008, 9149, 9270, 9442 (”for the author”)

tapaus 282 on hieman erilainen, siinä ” Printed for, and sold by the author”. Eli ei päde tuo ”for” sellaisenaan, kun tulee tuo ”sold by” tuohon väliin. Jos keksitään sääntö millä vastaavat kaikki mukaan, niin olisi erinomaista. Säännön mukaan, kaikki tapaukset, jossa näyttäytyy ”for”, niin näistä pitäisi löytyä se julkaisija. Eli voitaisiin lähteä siitä, että pyritään selvittämään julkaisija kaikkiin näihin tapauksiin automatisoiduilla säännöillä.

”Printed by” kohdalla tämä ei valitettavasti toimi niin että otettaisiin vain “by”, koska silloin tulee kaikki “sold by” tapaukset mukaan. Siihen pitää keksiä jotain muuta.

Lisäksi yksi synonymisääntö tuli jo nyt mieleen: published by = printed for

Onko kuinka helppoa tuottaa taulukko niistä tapauksista joista puuttuu sekä ”printed for” ja ”printed by” sen jälkeen kun on laitettu viilatut säännöt käytäntöön ja joissa olisi tuo koko ”imprint” teksti mukana? Voisin siitä yrittää miettiä lisää noita automatisoinnin viilauksia minäkin, pyritään siihen että saadaan tässä vaiheessa mukaan niin paljon kamaa kuin suinkin vain mahdollista.

rupean metsästämään sellaista listaa julkaisijoista joka ajamalla saataisiin nuo J Tonson (Jacob Tonson) lyhenteet käännettyä erisnimiksi. Käykö tässä jos lista ei tule avoimesta lähteestä? Tiedän nimittäin, että sellaisia uuden ajan alun julkaisija ensyklopediamallisia laitoksia on olemassa. Epäilen kuitenkin ettei ne ole avoimesti käytössä. Silti joltain editorilta tai vastaavalta saattaisi löytyä jokseenkin kattavia listoja julkaisijoiden nimistä. Voisin alkaa metsästää niitä.

arvelinkin että olit näissä kohdin mua edellä jo. Noista se "reprinted for" on tosiaan se josta jäisi kiikastamaan. Voiko niitä automatisoituja sääntöjä tehdä poissulkeviksi? Eli siis mukaan kaikki "for" sisältävät paitsi ne joissa "reprint". No, mutta aika hyvään tarkkuuteen me tässä tullaan pääsemään.

Lontoo, joka luonnollisesti suurin painopaikka, niin sieltä löytyy open access periaatteita noudatteleva London Book Trades:

http://lbt.bodleian.ox.ac.uk/mediawiki/index.php/Main_Page

Tuolla on listattuna yli 30000 tyyppiä jotka mukana kirjaproduktioissa. Jokaiselle annettu henkilökohtainen tunniste:

http://lbt.bodleian.ox.ac.uk/mediawiki/index.php/Category:Individual

Tuolla ei suoraan näkynyt noita datasettejä avoimina niin kuin me ne tarvitaan, mutta en uskoisi että tämä on ollenkaan ongelma. Tuolla tuo wiki-ajattelu on myös ihan selvää.

Eli tuo olisi kyllä noille Lontoon publishereille kyllä se paikka mistä ne kannattaisi ottaa. Samalla voitaisiin myös ottaa käyttöön tuo niiden 5-digit koodi, niin sitten se linkkaus sinne suuntaan olisi myös hienosti auki.

Se mitä sanot synonymien tunnistamisesta itse on totta kai ihan totta. Mutta ehkä tuo London Book trades olisi aloitus sille suunnalle mihin mäpätä meidän julkaisijoita. Sanakirjana Englannista, Skotlannista ja Irlannista löytyy myös kirja jossa tod. näk. 90% meidän julkaisijoista löytyy, mutta jostain syystä en ole löytänyt siitä digitaalista versiota tai nettisivua. Yritän kuitenkin katsella jos siitä löytyisi vielä selkeä lista.

Voiko automatisoituja sääntöjä tehdä poissulkeviksi? Eli siis mukaan kaikki "for" sisältävät paitsi ne joissa "reprint". No, mutta aika hyvään tarkkuuteen me tässä tullaan pääsemään.

Monella dokumentilla tuossa on mukana sekä "printed for" että "reprinted for" kentät. Eli pitää valita nimenomaan "printed for" jälkeen tuleva teksti mutta kyetä leikkaamaan siitä pois turhat osat. Eli nyt olen leikannut kaiken mikä tulee ekan pilkun jälkeen kun en parempaakaan toistaiseksi keksinyt.

    Lontoo, joka luonnollisesti suurin painopaikka, niin sieltä löytyy open access periaatteita noudatteleva London Book Trades:

    http://lbt.bodleian.ox.ac.uk/mediawiki/index.php/Main_Page

    Tuolla on hienosti listattuna yli 30000 tyyppiä jotka mukana kirjaproduktioissa. Jokaiselle annettu vieläpä henkilökohtainen tunniste:

    http://lbt.bodleian.ox.ac.uk/mediawiki/index.php/Category:Individual

Tuolla ei suoraan näkynyt noita datasettejä avoimina niin kuin me ne tarvitaan, mutta en uskoisi että tämä on ollenkaan ongelma. Tuolla tuo wiki-ajattelu on myös ihan selvää.

tuo olisi kyllä noille Lontoon publishereille kyllä se paikka mistä ne kannattaisi ottaa. Samalla voitaisiin myös ottaa käyttöön tuo niiden 5-digit koodi, niin sitten se linkkaus sinne suuntaan olisi myös hienosti auki.

Ok vaikuttaa tosi hyvältä. Pystytkö esim. kyselemään saisiko tämän datan tai onko valmiiksi avoimena jossain ladattavissa?
 
No, löytyihin näitä avoimessa jakelussa kun ymmärsi katso oikeasta paikasta:

http://sas-space.sas.ac.uk/290/1/LBT_NEW.mdb

Eli tuolla näyttäisi olevan datat siihen London Book Trades Databaseen.

Ennen kuin tuon löysin niin tulin jo lähettäneeksi heille tästä sähköpostia, joten kaiketi saadaan asiaan varmennus myös sieltä suunnalta.

Lisäksi löysin seuraavanlaisen Skotlantiin liittyvän:

http://www.nls.uk/catalogues/scottish-book-trade-index

Nämä jostain syystä pdf, mutta varmaan saa myös spread sheet muodossa.

"for the author" ja "printed for the author" tapauksessa on hyvä juttu ottaa se nimi sieltä auktorikentästä. Näistä jo itsessään saa mielenkiintoista tietoa. Tuo auktorin osallistuminen julkaisemiseen on sinänsä todella mielenkiintoinen ilmiö tarkasteltavana ajanjaksona. Tekisi mieli pyytää sieltä British Librarysta haku jossa haetaan kaikki tapaukset joissa "author" termi esiintyy tuossa imprint-kentässä. Mutta jätetään tämä kaikkia julkaisuja koskeva tutkimus siihen kun lähdetään skaalaamaan ESTCtä. Pidetään vain siinä vaiheessa mielessä, että tutkimalla tätä kirjoittajan osallisuutta julkaisemiseen tällä meidän tavalla, niin käsillä on sellainen aihe josta saadaan helposti irti mielenkiintoista uutta tietoa mm. mahdollisiin suhteellisiin muutoksiin mitä tässä tapahtuu 1470-1800, joka kertoo julkaisemistoiminnasta ja kirjan historiasta paljon. Mutta jos jossain vaiheessa tarvitsee testailla kuinka hyvin tätä "history"-tutkimusta varten tehty parsiminen soveltuu toisiin vastaaviin hakuihin, niin sitten tuo "author" julkaisijakentässä koko aikavälillä voisi olla sopiva pikku testi.

------------------------------------------

df2$publication.publisher 
-> Käytetäänkö printed for, printed by, vai molemmat tässä kohtaa ?
-> Tai molempia erikseen?
-> printed by/for the author -> poimi author nimi author-kentästä
   postprocessing-steppinä
- Tsekkaa tulostetaulukot ja keksi vähän lisää siistimisiä niitten nojalla
- Tsekkaa lopulliset taulut ihan livenä Mikon kanssa

---------------------------------------

Yhteinen automatisoitu summary-dokumenttikoodi (fennica - estc - kungliga - ym)

------------------------------------------

jos jotenkin keksitään miten blokataan kaikesta materiaalista ensimmäiset editiot ja voidaan tarkastella niitä omana yksikkönään. Käytännössä tarkoittaisi ehkä, että kun löytyy samannimisiä julkaisuja (title) samalta kirjoittajalta (author), niin niistä indikoitaisiin aikaisimmin julkaistu. Ei mikään ensimmäisenä tehtävä asia, mutta kirjahistorian kannalta relevantti kysymys analyysiosuuteen.

------

Geoplaces:

map towns to gis coordinates, then gis to country?

Tässä (kuten vuosiluvuissa) tärkeää kokonaisuus, jos saadaan
yhdistettynä monta aluetta/kenttää (esim. Britannia + Intia + USA)
niin tämä olisi hyvä asia. Etenkin jos näitä teoksia, joista löytyy
enemmän kuin yksi geographic place on yli
50%. Prioriteettijärjestyksenä ehdotettu käy hyvin, jos ei voi olla
monen alueen yhdistelmää yhdessä kentässä.

-------------------------------------

Myöhemmin otsikoiden analyysista saadaan paljon irti. yksi tapa on ottaa kaikki ”Histo”-sisältävät otsikot omaksi joukokseen.

myöhemmin voidaan tehdä muita sana-ryhmittelyjä liittyen otsikoihin, näiden tutkiminen on mielenkiintoista, koska se kertoo suoraan dokumentin muodosta, esim. kaikki otsikot joissa: ”letter[s]”, ”observation[s]”, ”memoir[s]”, ”account[s]”, “review[s]”, ”enquiry[ies]” [+”inquiry”], ”narrative[s]”, ”appeal[s]”, “abstract[s]”, “apology[ies]” [+”apologie”], ”answer[s]” [+ansvver], ”address[es]”, ”act[s]”, ”journal[s]”, ”discourse[s]”, ”defence[s]”, ”declaration[s]”, ”collection[s]”, ”life[es]”, ”vote[s]”, ”news [+ nevves]”, ”dissertation[s]”, “character[s]”, “case[s]”, “annals”, “table”[s], ”thought[s]”, ”speech[es]” [pitäen sisällään ”to..”, ”to his…”], ”petition[s]”, ”tract[s]”, “proposal[s]”, “alarm[s]”[+”alarum”+”alarme”], “agreement[s]”, “antidote[s]”, “state[s]”, “statement[s]”, “proceeding[s]”, “sermon[s]”, “treatise[s]”, “advertisement[s] [+”aduertisement”], “vindication[s]”, “relation[s]”, “ordinance”[s], “message[s]”, “dialogue[s]” [+”dialogve”], “detection[s]”, “discovery[ies] [+”discoverie”+”discouery”+”discouerie”], “diary”, “oration[s]”, “abridgement[s]”, ”works”, “trial[s]”, “resolution[s]”, “exhortation[s]”, “conference[s], “fight[s]”, “representation[s]”, “article[s]”, “memorial[s]”, “meeting[s]”, “manifest[…]”, “argument[s]”, review[s]”, “remonstrance[s]”, “reply[ies]”, “prayer[s]”, “admonition[s]”, “assessment[s]”, “essay[ies]”, “epistle[s]”, “epitome[s]”, “elegy[ies]” [+”elegie”], “appendix[es]”, “advice”, “poem[s]”, “plea[s]”, “plan[s]”, “list[s]”, “parallel[s]”, “panegyrick[s]”, “antiquity[ies]”, “animadversion[s]”, “express”, “explanation[s]”, “introduction[s]”, “relation[s]”, “survey[s]”, “view[s]”, “sketch[es]”, “report[s]”, “remark[s]”, “examination[s]”, “song[s]” [+”ballad[s]”], “map[s]”, “reflection[s]”, “paper[s]”, “tract[s]”, “charge[s], “caution[s]”, “caveat[s], “report[s]”, “extract[s]”, “description[s]”, “catalogue[s]”, “proposition[s]”, “proclamation[s]”, “minute[s]”, “proceeding[s]”, “anecdote[s]”, “lamentation[s]”, “victory[ies] [+victorie]”, “bill[s]”, jne. [kaikki näistä siis pitäen sisällään yksikkö ja monikkomuodot jos on, kuten myös vaihtelevat kirjoitusasut], mutta olisiko niin, että tätä voi sitten tehdä myöhemmin niillä ”topic modelling” menetelmillä etsien näitä otsikkojen yhtäläisyyksiä ja tarkkailla sitten niiden kehitystä?

kategorisoida myös kaikki lehdenomaiset yhteen (poimittuna osa): gazette, chronicle, courant, intelligencer, advertiser, star, post, magazine, monthly, miscellany, monitor, news-letter, register, daily, mercurius, rambler, intelligence, guide, evening, mercury, craftsman, examiner, chronologist, oracle, observer, review, (journal). Näistä ”journal” on hankala koska pitää sisällään myös paljon muuta. Lisäksi tämän joukon ulkopuolella on myös muita lehtiä, mutta niiden blokkaaminen voidaan hoitaa sitten jälkeenpäin.

---------------------------------------

laske sheet-size keskiarvo niistä joille mitat tiedossa. käytä sitten
keskiarvoa (ei taulukkoarvoa) loppujen estimointiin -> tehdään vasta
kun koko ESTC käytossa, jos näytekoko riittävä.

------------------

Subject classes -> Which one to select?

- Melvil Decimal System_ http://www.librarything.com/mds/0
- Dewey Decimal System: promised for us as a dump
- Library of Congress Catalogue: 

----------------------------

Sukunimet ?

http://en.wikipedia.org/wiki/Wikipedia:Persondata (From the XML dump)

wikipediasta voisi periaatteessa ottaa yhdestä datadumpista kaikki henkilödatan joka pitää kaiketi sisällään kaikki wikipedian henkilöt? Ideaalitilanne jokaisesta henkilöstä voitaisiin vetää linkki wikipediaan ja vastavuoroisesti sieltä meidän systeemeihin. kun lopulta syntyvää kirjastojärjestelmää käytetään hyväksi muuhun kuin tilastollisiin juttuihin.

-----

voisi poimia omaan sarakkeeseen tiedon jos dokumentti on "Obl"?

Animations

------

Kenttä 650y.651y muuttui alkuperäisestä versiosta, funktiot
hajosi. Pitäisi kirjoittaa uudet funktiot vuosilukujen ja topiccien
poimimiseksi tästä kentästä. See also function inst/extras/misc.R ->
polish.650y and inst/extras/misc.Rmd -> subject.begin / subject.end

print("Subject timespan")
df$subject.begin <- sapply(strsplit(as.character(df.orig[["650y.651y"]]), ";"), function (x) {min(na.omit(as.numeric(x)))})
df$subject.end <- sapply(strsplit(as.character(df.orig[["650y.651y"]]), ";"), function (x) {max(na.omit(as.numeric(x)))})
df$subject.begin[is.infinite(df$subject.begin)] <- NA
df$subject.end[is.infinite(df$subject.end)] <- NA
# Correct typos manually
df$subject.begin <- as.numeric(gsub("17600", "1600", df$subject.begin))
df$subject.end <- as.numeric(gsub("17600", "1600", df$subject.end))
df$subject.begin <- as.numeric(gsub("7600", "1600", df$subject.begin))
df$subject.end <- as.numeric(gsub("7600", "1600", df$subject.end))

