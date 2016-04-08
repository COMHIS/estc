## TODO

### Technical

  * Sivunumeroissa on nyt jotain häikkää!!

  * Lisää pseudonyymikenttä omaksi tiedokseen. Pitäis kait onnistua
    pseudonyyminimilistojen nojalla?

  * sheet-size keskiarvo niistä joille mitat tiedossa (nyt vasta
    pagecount tehty näin). käytä keskiarvoa (ei taulukkoarvoa)
    loppujen estimointiin

  * items / parts poistettiin aiemmin kun oli hankalaa. pitäisiko
    ottaa takaisin (affects items and hence pages estimates)
    print("Estimate number of separate parts in a document") parts,
    pages_per_part tmp <- estimate_document_parts(df.orig) df <-
    cbind(df, tmp)

  * Try rOpenSci/GenderizeR R package and also [babynames
    package](https://github.com/hadley/babynames)


### Analysis

  * Title count -> _Book count_ !!? -> Paper count

  * Ensimmäisen edition tunnistus. Käytännössä tarkoittaisi ehkä, että
    kun löytyy samannimisiä julkaisuja (title) samalta kirjoittajalta
    (author), niin niistä indikoitaisiin aikaisimmin
    julkaistu. Kirjahistorian kannalta relevantti kysymys
    analyysiosuuteen.
  
  * Isompien kirjojen vertailu 1470-1800; kaikkien esim yli 60
  sivuisten kirjojen kehitystä vuosisatojen aikana toisi hyvää
  vertailukohtaa kaikkia historia-dokumentteja koskevaan kuvioon. Tai
  sitten vaikka pelkästään tieto kaikkien 4⁰, 8⁰ ja 12⁰ kokoisten
  kirjojen kehityksestä (jolloin kaikki yksisivuiset ja vastaavat
  putoavat suurimmalta osalta pois koska broadsidet ovat usein kokoa
  2⁰, 1/2⁰ tai 1⁰; vaikka mahtuu sinne folio-kokoon tietysti myös
  "oikeita" kirjoja). 

  * Analyze particular historical periods ('periods')

  * Suhteellinen tärkeysmittari 1-100:
    - auktoreille
    - dokumenteille
    - topiceille
    - jne.

  * Author Richness and Diversity (w.r.t. documents) across time ?
  Levinneisyys aikajanalla: toimisko Shannon-diversiteetti, range tms.
  Historiallisten aineistojen viitetietojärjestelmän puuttuessa hieno
  mittari. Eli mitä suurempi julkaisumäärä (oli kyseessä yksittäinen
  auktori, topic tai mikä vaan) ja mitä suurempi levinneisyys
  aikajanalla, niin sitä merkittävämpi juttu (yleensä). pitäisi keksiä
  hyvä kerroin miten laskea tuo voluumi*spread*sivumäärä (suoraan yks
  yhteen se ei voi olla). Esim jotain tyyliiin n(docs) * 'levinneisyys
  aikajanalla'? * pages 

  * Paperin hinta vs. painomäärät?

  * Animations; Interactive stuff; RShiny- Video with folio vs. octavo
    and balls are publication places, sizes are total publication
    volumes ?

  * The average growth rate percentage as function of time?

  * Book production per capita in different countries - are population
    estimates available through time per country ?

  * [Title counts should be interpreted as low estimates: we do not
  correct where all trace of a book has been lost, nor for the fact
  that at the book fairs only part of the production was presented.
  Serial publications are not included either. The estimates of print
  runs are also conservative: we follow the literature, which suggests
  that average sizes of editions from the 1450s to 1500 probably
  increased from 100 to 700; there is ample evidence that this
  increase continued after 1500, but at a slower pace. We tentatively
  estimate that it went up to 1,000 in 1800; again, this is a
  conservative estimate; Michael Harris, for example, assumed that
  this level had already been reached during the sixteenth century,
  but that is probably an overestimate. For small markets such as
  Poland and Russia, these estimates of print runs are high, but the
  overestimate compensates for the fact that the figures of new titles
  for these countries are probably too
  low.](http://journals.cambridge.org/action/displayFulltext?type=6&fid=5594068&jid=JEH&volumeId=69&issueId=02&aid=5594064&bodyId=&membershipNumber=&societyETOCSession=&fulltextType=RA&fileId=S0022050709000837)

  * [Issues related to the pattern of the European economy in
  different countries: When did the center of gravity move from the
  Mediterranean to the North Sea? Was it a single shift, or can we
  discern a number of shifts in the Latin West? When do the
  Scandinavian countries appear on the scene—and how does central
  Europe (Poland, for example) enter in this context? An important
  question here concerns patterns of convergence and divergence in
  European history: When do differences in book production in the
  various countries point to increased economic homogeneity, and when
  do they point to divergence between
  regions?](http://journals.cambridge.org/action/displayFulltext?type=6&fid=5594068&jid=JEH&volumeId=69&issueId=02&aid=5594064&bodyId=&membershipNumber=&societyETOCSession=&fulltextType=RA&fileId=S0022050709000837)

  * [The most important sources for counting new titles are
  meta-catalogues (or short title catalogues) that are based on books
  in library catalogues and are inventories of editions published in
  different countries and languages. Such meta-catalogues are
  available for incunabula (all books printed in Western Europe before
  1500), for books printed in the Netherlands and Belgium, for books
  in English (covering not only Great Britain but also Ireland, the
  United States, Canada, etc.), and—although this catalogue is
  sometimes incomplete—for books published in Western Europe from 1454
  to 1830 (the so-called Hand Press Book File). For a few countries—in
  particular Sweden and Switzerland—the latter catalogue appears to be
  complete. For other countries, the degree to which this source
  underestimates new titles can be estimated by comparing it with the
  much more complete Incunabula Short Title Catalogue for the period
  1454–1500. The comparison suggests that the Hand Press Book File
  underestimates book production by an amount that varies from 27.5
  percent (France) to 48.4 percent (Italy). The number of books in the
  Hand Press Book File has been corrected by this ratio, yielding
  annual estimates for total output from 1455 to 1800. The problem
  with this procedure is that it assumes that the extent of
  underestimation in the Hand Press Book File is constant over time,
  which may not be the case; for example, there appears to be a
  discontinuity in the number of Spanish titles included in the file,
  as the number suddenly drops from 742 in 1700 to 175 in 1701 and 133
  in 1702. So we checked the results of this procedure on a
  country-by-country basis, using the available literature on book
  production in those
  countries.](http://journals.cambridge.org/action/displayFulltext?type=6&fid=5594068&jid=JEH&volumeId=69&issueId=02&aid=5594064&bodyId=&membershipNumber=&societyETOCSession=&fulltextType=RA&fileId=S0022050709000837)

  * [Table 8 shows the results of these regressions, which explain the
  log of per capita book production in country x in period y by the
  log of the number of monasteries (per capita), the number of
  universities (again per capita), the urbanization ratio, and a dummy
  for Spain. If we take the Middle Ages as a whole, the three factors
  we have data for—universities, monasteries, and
  urbanization—together explain almost 60 percent of the variation in
  per capita book production (first two columns). All coefficients
  show the expected signs, independent of the specification. Dividing
  the period in two shows the changes in the determinants for book
  production: the link to monasteries is very strong in the first half
  of the period but less so
  during..](http://journals.cambridge.org/action/displayFulltext?type=6&fid=5594068&jid=JEH&volumeId=69&issueId=02&aid=5594064&bodyId=&membershipNumber=&societyETOCSession=&fulltextType=RA&fileId=S0022050709000837)

## Topics

Erikseen valittujen (tai kaikkien) “most common topics” laittaminen
aikajanalle. Esim:

Thirty Years War, 1618-1648

Popish Plot, 1678

Dissenters, religious

Finance, public

Recruiting and enlistment

Seven Years’ War, 1756-1763

[Check also Duhaime's blog
examples](http://douglasduhaime.com/blog/mapping-the-early-english-book-trade)

Myöhemmin otsikoiden analyysista uskoisin, että saadaan paljon irti.
Esim. yksi tapa erottaa joukko tekstejä tarkasteltavaksi
kokonaisuudeksi on ottaa kaikki ”Histo”-sisältävät otsikot omaksi
joukokseen.

myöhemmin voidaan tehdä muita sana-ryhmittelyjä liittyen otsikoihin,
näiden tutkiminen on mielenkiintoista, koska se kertoo suoraan
dokumentin muodosta, esim. kaikki otsikot joissa: ”letter[s]”,
”observation[s]”, ”memoir[s]”, ”account[s]”, “review[s]”,
”enquiry[ies]” [+”inquiry”], ”narrative[s]”, ”appeal[s]”,
“abstract[s]”, “apology[ies]” [+”apologie”], ”answer[s]” [+ansvver],
”address[es]”, ”act[s]”, ”journal[s]”, ”discourse[s]”, ”defence[s]”,
”declaration[s]”, ”collection[s]”, ”life[es]”, ”vote[s]”, ”news [+
nevves]”, ”dissertation[s]”, “character[s]”, “case[s]”, “annals”,
“table”[s], ”thought[s]”, ”speech[es]” [pitäen sisällään ”to..”, ”to
his…”], ”petition[s]”, ”tract[s]”, “proposal[s]”,
“alarm[s]”[+”alarum”+”alarme”], “agreement[s]”, “antidote[s]”,
“state[s]”, “statement[s]”, “proceeding[s]”, “sermon[s]”,
“treatise[s]”, “advertisement[s] [+”aduertisement”],
“vindication[s]”, “relation[s]”, “ordinance”[s], “message[s]”,
“dialogue[s]” [+”dialogve”], “detection[s]”, “discovery[ies]
[+”discoverie”+”discouery”+”discouerie”], “diary”, “oration[s]”,
“abridgement[s]”, ”works”, “trial[s]”, “resolution[s]”,
“exhortation[s]”, “conference[s], “fight[s]”, “representation[s]”,
“article[s]”, “memorial[s]”, “meeting[s]”, “manifest[…]”,
“argument[s]”, review[s]”, “remonstrance[s]”, “reply[ies]”,
“prayer[s]”, “admonition[s]”, “assessment[s]”, “essay[ies]”,
“epistle[s]”, “epitome[s]”, “elegy[ies]” [+”elegie”], “appendix[es]”,
“advice”, “poem[s]”, “plea[s]”, “plan[s]”, “list[s]”, “parallel[s]”,
“panegyrick[s]”, “antiquity[ies]”, “animadversion[s]”, “express”,
“explanation[s]”, “introduction[s]”, “relation[s]”, “survey[s]”,
“view[s]”, “sketch[es]”, “report[s]”, “remark[s]”, “examination[s]”,
“song[s]” [+”ballad[s]”], “map[s]”, “reflection[s]”, “paper[s]”,
“tract[s]”, “charge[s], “caution[s]”, “caveat[s], “report[s]”,
“extract[s]”, “description[s]”, “catalogue[s]”, “proposition[s]”,
“proclamation[s]”, “minute[s]”, “proceeding[s]”, “anecdote[s]”,
“lamentation[s]”, “victory[ies] [+victorie]”, “bill[s]”, jne. [kaikki
näistä siis pitäen sisällään yksikkö ja monikkomuodot jos on, kuten
myös vaihtelevat kirjoitusasut], mutta olisiko niin, että tätä voi
sitten tehdä myöhemmin niillä ”topic modelling” menetelmillä etsien
näitä otsikkojen yhtäläisyyksiä ja tarkkailla sitten niiden
kehitystä?

Kategorisoi kaikki lehdenomaiset yhteen (poimittuna osa): gazette,
chronicle, courant, intelligencer, advertiser, star, post, magazine,
monthly, miscellany, monitor, news-letter, register, daily, mercurius,
rambler, intelligence, guide, evening, mercury, craftsman, examiner,
chronologist, oracle, observer, review, (journal). Näistä
”journal” on hankala koska pitää sisällään myös paljon muuta. Lisäksi
tämän joukon ulkopuolella on myös muita lehtiä, mutta niiden
blokkaaminen voidaan hoitaa jälkeenpäin.

  * Subject classes -> Which one to select?
    - Melvil Decimal System_ http://www.librarything.com/mds/0
    - Dewey Decimal System: promised for us as a dump
    - Library of Congress Catalogue: 


## Publisher

Publisher for/by kentän siivous ?
publisher_forby <- polish_publisher_forby(df.orig$publisher)

df2$publication.publisher 
-> printed by/for the author -> poimi author nimi author-kentästä
   postprocessing-steppinä
- Tsekkaa lopulliset taulut ihan livenä Mikon kanssa
-> printed by/for the author -> poimi author nimi author-kentästä
   postprocessing-steppinä

Published for: Ko. ”publisher” kysymys, jos pystytään ratkomaan niin
että saadaan valjastettua käyttöön suurin osa relevantista
informaatiosta niin että samaa periaatetta pystytään toistamaan
muualla, olisi tämä kirjahistoriassa kova pelinavaus.

Siellä on tosiaan erikseen lausumia "printed for", "printed by",
"reprinted" etc. Oliko nyt niin että halutaan poimia nuo "printed for"
ja "printed by" tapaukset toisistaan erillisinä? Reprintit jätän nyt
ainakin toistaiseksi huomiotta.

Olisi ehkä mahdollista parsia kaikki kentissä esiintyvät nimet, mutta
lie arvokasta pitää se tieto että oliko
for/by/sold/at/reprinted/etc. ja jos tätä erottelua aletaan tehdä niin
menee vielä mutkikkaammaksi. Ilmeisesti nyt ensi alkuun kandee vaan
jättää nuo huomiotta ja keskittyä ihan vain printed for/by tekijöiden
saamiseen talteen / Tästä aivan samaa mieltä.

Toimisiko “printed for” kohdassa, jos etsitään vain “for” ja sitä seuraava nimi? Näin tulisi nuo kaikki ”for the author” tyyliset tapaukset mukaan, niitä on varmaankin jonkun verran myös muita kuin tekijä. Ymmärtääkseni ”for” prepositio liittyy aina tuohon julkaisijaan ja ei siten sekoitu muihin tapauksiin.

tapaus 282 on hieman erilainen, siinä ” Printed for, and sold by the author”. Eli ei päde tuo ”for” sellaisenaan, kun tulee tuo ”sold by” tuohon väliin. Jos keksitään sääntö millä vastaavat kaikki mukaan, niin olisi erinomaista. Säännön mukaan, kaikki tapaukset, jossa näyttäytyy ”for”, niin näistä pitäisi löytyä se julkaisija. Eli voitaisiin lähteä siitä, että pyritään selvittämään julkaisija kaikkiin näihin tapauksiin automatisoiduilla säännöillä.

”Printed by” kohdalla tämä ei valitettavasti toimi niin että otettaisiin vain “by”, koska silloin tulee kaikki “sold by” tapaukset mukaan. 

yksi synonymisääntö tuli jo nyt mieleen: published by = printed for

Onko kuinka helppoa tuottaa taulukko niistä tapauksista joista puuttuu sekä ”printed for” ja ”printed by” sen jälkeen kun on laitettu viilatut säännöt käytäntöön ja joissa olisi tuo koko ”imprint” teksti mukana? Monella dokumentilla tuossa on mukana sekä "printed for" että "reprinted for" kentät. Eli pitää valita nimenomaan "printed for" jälkeen tuleva teksti mutta kyetä leikkaamaan siitä pois turhat osat. Eli nyt olen leikannut kaiken mikä tulee ekan pilkun jälkeen kun en parempaakaan toistaiseksi keksinyt. "for the author" ja "printed for the author" tapauksessa on hyvä ottaa nimi auktorikentästä. Näistä jo itsessään saa mielenkiintoista tietoa. Auktorin osallistuminen julkaisemiseen on mielenkiintoinen ilmiö.

Voiko automatisoituja sääntöjä tehdä poissulkeviksi? Eli siis mukaan kaikki "for" sisältävät paitsi ne joissa "reprint". 

[London Book Trades](http://lbt.bodleian.ox.ac.uk/mediawiki/index.php/Main_Page). Listattuna yli 30000 tyyppiä jotka mukana kirjaproduktioissa. Jokaisella [henkilökohtainen tunniste](http://lbt.bodleian.ox.ac.uk/mediawiki/index.php/Category:Individual). Also available as [open version](http://sas-space.sas.ac.uk/290/1/LBT_NEW.mdb). Samalla voitaisiin ottaa käyttöön tuo niiden 5-digit koodi, niin linkkaus sinne suuntaan olisi myös hienosti auki. Sanakirjana Englannista, Skotlannista ja Irlannista löytyy myös kirja jossa tod. näk. 90% meidän julkaisijoista löytyy.

Lisäksi löysin seuraavanlaisen [Skotlantiin liittyvän](http://www.nls.uk/catalogues/scottish-book-trade-index). Nämä jostain syystä pdf, mutta varmaan saa myös spread sheet muodossa.

Rupean metsästämään sellaista listaa julkaisijoista joka ajamalla saataisiin nuo J Tonson (Jacob Tonson) lyhenteet käännettyä erisnimiksi. Käykö tässä jos lista ei tule avoimesta lähteestä? Tiedän nimittäin, että sellaisia uuden ajan alun julkaisija ensyklopediamallisia laitoksia on olemassa. Epäilen kuitenkin ettei ne ole avoimesti käytössä. Silti joltain editorilta tai vastaavalta saattaisi löytyä jokseenkin kattavia listoja julkaisijoiden nimistä. 


### Geography

pitäiskö kentät 650z, 651a, 651z erotella jo lähtökohtaisesti parsinnassa

Skipped for now
print("Subject geographic places")
df$subject.geography <- polish_geography(df.orig[["650z.651a.651z"]])
df[which(df$subject.geography == "NA"), "subject.geography"] <- NA

some available country information might lost during filtering?

map towns to gis coordinates, then gis to country?



## Misc 

It would be possible to include time span that the document discusses,
by picking info from publication topic field. This may have limited
value as it is available only for 18% of the documents (full ESTC) and
might be biased towards certain class of documents anyway.

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

Kenttä 650y.651y muuttui alkuperäisestä versiosta, funktiot
hajosi. Pitäisi kirjoittaa uudet funktiot vuosilukujen ja topiccien
poimimiseksi tästä kentästä. See also function inst/extras/misc.R ->
polish.650y and inst/extras/misc.Rmd -> subject.begin / subject.end

