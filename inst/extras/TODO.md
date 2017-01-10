### Analyses

Blokataan ESTCstä subject field: poetry + tehdään pari analyysiä ja
printataan top-100 listat. Vaikka subject field on yleisesti
epäluotettava, niin tästä voidaan hyvin lähteä liikkeelle ja saadaan
sitten tietoa miten epäluotettava se tosiaan on.


### Pagecount

Joku häikkä: 
                 <chr>
1       (CU-RivES)P1940
2       (CU-RivES)P1970
3       (CU-RivES)P2164
4       (CU-RivES)P2184
5       (CU-RivES)P2186
6       (CU-RivES)P2286
7     (CU-RivES)N471226
> df.orig[which(df.orig$physical_extent == "18 v., plates"),"system_control_number"]

-> Noista viimeisellä on pagecount.orig 8 pages ja muilla NA. Vaikka kaikilla sama alkuperäinen merkintä.
   Ei selittynyt ECCO/Custom listoilla.

------------------------------------------------------

MT: miten multivolume-konversiot tulee konversiolistaan
output.tables/pagecount_conversions.csv? Löytyy tapauksia joissa ei
lasketa voluumeja, vaan pelkästään plate tieto sivumääränä:

8vo      18 v., plates    4          4
12mo  12v.,plates      4          3
12mo  12v.,plate       2          3
4to      v.2,plates        4          2
4to      v.1,plates        4          2
2fo      v., [1]p.            1          3

Lisäksi en saa kiinni logiikasta miten multivoluumien sivumäärä
määräytyy tässä konversiotaulukossa. Täydentyykö tieto jostain muualta
(esim. ECCO – ei pitäisi olla näin)? Vai johtuuko tämä mahdollisesti
koodista että nämä heittelee?

12mo  v., plates         168     4
12mo  2v.,plate          268     114
12mo  3v.,plates        408     59
12mo  4v.,plates        544     83
12mo  4v.,plates        1221   3
12mo  6v.,plates        816     20
12mo  v.5-7,plates    408     3
12mo  v.1-4,plates    544     3
8vo      1 v., plates (some fold.)        96       5
8vo      v., plates (some fold.)            96       27
8vo      v., plate           94       4
8vo      2v.,plate          320     107
8vo      2v.,plates        454     6
8vo      2v.,plates        925     2
8vo      3v.,plates        486     43
8vo      3v.,plate          480     21
8vo      6 v., plates      1354   4
8vo      8 v., plates      1804   4
8vo      10v.,plates      5000   7
8vo      12v.,plates      5000   5
2fo      2v.,plates        514     85
4to      2v.,plates        224     67

---------------------------------------------------------------------

2fo      [2],1731-1726p.       1733   1
- eli nämä joko NA tai sitten korjaa nuo sivut toisinpäin (eli 395-399).

-----------------------------------------------------

Sitten tällaiset yksittäistapaukset:
2fo      [2],923-1384[sic]p.   1386   1
- tässä tuo ”sic” voi jättää huomioitta ja laskea tämän myös sivuvälinä (ei 1384)
8vo      27 plates        146     2
- miksi tästä tulee 146 sivua? Tuleeko tietoja jostain muualta kuin ”physical extent”?

Lisäksi huomiona voitaisiin merkitä, että ECCOn pohjalta näyttäisi
siltä, että ESTCssä on myös pilkulla eroteltuja sivutietoja jotka
tulisi laskea yhteen. Näitä ei kannata nyt lähteä ottamaan sen enempää
huomioon, mutta kannattaa merkitä ylös että nämä voidaan joskus
mahdollisesti tarkistaa. Esim. tällainen tapaus näyttäisi viittaavan
siihen, että pitäisi laskea 12+4, mutta tämä on minusta poikkeus
tapaus joka melko mahdoton tunnistaa automaattisesti ottaen huomioon
muut säännöt:

4to      12,4p. 12       2

--------------------------------------------------------------------------

estc_ecco_augmented.csv listaa tapaukset joissa ESTC täydennetty
ECCOsta

1) Monivoluumiset joissa ESTC pagecounttia ei ole, ja jotka jää alle
   200 sivua ECCOn pohjalta vaikka pitäisi olla monivoluuminen,
   tarkastetaan käsin. Näihin tapauksiin nyt merkattu ESTC:n
   pagecountiksi NA. Esim dokumentti "P2626".

Tässä kaikki nämä tapaukset kommentoituna:

N24575: ok, issue tapaus, hankala sanoa puuttuuko joku issue, mutta
tällä mentävä.

P1849: Periaatteessa voitaisiin täydentää näiden kahden puuttuvan
osalta niin että laitettaisiin +39 X 2, mutta miten sitten toimitaan
niin että tulee yhtenäinen muiden vastaavien tapausten suhteen? Eli
tällaisia tapauksia joista digitoitu ECCOon 4/6 volumea on varmasti
jonkin verran. Pystytäänkö niitä jotenkin tunnistamaan niin että
käydään käsin läpi?

P208: issue tapaus, ilmeisesti sama tapaus kuin edellinen. ESTCssa
ilmoitettu 4, ECCOssa mukana 2. Sivumäärät sinänsä ok paitsi että
puuttuu kaksi issuea.

P2750: Nää on lähinnä yhden sheetin juttuja, ECCO näyttäisi menevän
tässä oikein. Eli OK.

P2626: ok, issuea tapaus. Tässä syy miksi eri määrä volumeita ECCO ja
ESTC on, että ECCOssa toisessa on kaksi volumea yhdessä. OK.

P2938: issue tapaus, ECCO näyttää ok:lta, mutta niin vähän
tunnisteita, että mahdoton sanoa, että puuttuuko joku issue vai
ei. Mennään kuitenkin tällä. Eli ok.

P2831: issue tapaus, ok.

P6317: issue tapaus, selkeä sillä lailla, että oikeasti 10 volumea,
joista ECCOssa mukana vain 2. Eli sivumäärän voisi täydentää
lisäämällä saman pituisia 8 lisää. Mutta saadaanko yhdenmukaisuus koko
aineistoon? Eli sama kysymys kuin esim. P1849.

P6545: issue tapaus, sellaisenaan epäselvä. Eli merkintä "v." ESTCssä
tarkoittaa, että tätä on julkaistu joku määrä issueita joista ei ole
tietoa kuinka monta. ECCOssa mukana 2, mutta mahdoton sanoa kuinka
paljon puuttuu.

T136232: Tässä jostain syystä merkitty ECCO = 0 sivua. Tämä teos on
merkitty ECCOon kahteen kertaan. Eli 2 X 2 voluuminen teos.  ESTCn
general notesista löytyy selitys miksi näin on: " In 2008 the
imperfect filming of the British Library copy was corrected by the
filming of the full contents of vols. 1-2 of the copy held by the
National Library of Scotland. " Tämä voisi toimia myös esimerkkinä
siitä että jos ECCOsta löytyy kahteen kertaan merkittyä tavaraa, niin
otetaan laskuihin ainoastaan se tapaus joissa samasta määrästä ESTC
volumeiden kanssa tulee isompi luku (eli ei lasketa neljää volumea
yhteen). Voi olla, että menee hankalaksi ja jos tätä ei saa kohtuu
helposti toimimaan, mietitään jotain muuta. Mutta tässä tapauksessa on
selvää, että kyseisen teoksen sivumäärä on 549+515

2) Muutenkin kandee vähintään jotain pistotarkistuksia tehdä, ECCO:n
   sivut on monessa tapauksessa saatu summaamalla useampi ECCO-hitti
   jotka vastaa saman teoksen eri voluumeja.

Tein reippaasti pistotarkastuksia. Suurin osa näyttäisi menevän hyvin
ja oikein (tai vähintään oikeaan suuntaan eli ollaan varmaan 90%
vähintään kuivilla vesillä näiden kanssa). Sitten on näitä vaikeita
tapauksia, jotka ovat vaikeita joka tapauksessa lähinnä koska kukaan
ei monissa issue-tapauksissa tiedä kuinka paljon niitä issueita
oli. Osa näistä tapauksista on merkattu ESTCn niin, että siellä on
volume merkintänä “v.” joka näyttäisi pääosin tarkoittavan, että ei
tiedossa montako issueta oli. Yksi esimerkki tällaisesta johon
luotetaan ECCOn pohjalta on P2371. Tässä ECCOssa koottuna 2 volumea ja
ESTC merkintä “v.”. (toinen samanlainen esimerkki P6101).

Tässä joitain muita erittelyjä sellaisista mitä huomasin:

N12908: Tässä on esimerkki tapauksesta jossa teosta on 6 volumea
todellisuudessa, mutta tarjolla vain 3. Tässä keskeistä on, että ESTCn
merkattu myös vain 1-3 joka tarkoittaa sitä, että ei ole tiedossa
missä puuttuvat volumet olisivat tarjolla. Näissä tapauksissa mennään
tuolla sivumäärällä mikä annettu, vaikka periaatteessa tiedetään että
3 volumea enemmän on tätä teosta. Tämä sen takia, että säilyy
yhdenmukaisuus ESTCn suhteen. (T136651 samanlainen tapaus, kuten myös
T140788 ja T136652 sekä T108499).

Tämä edellä mainittu tapaus eroaa sitten sellaisesta johon ECCOssa
merkattu kuinka monta volumea ECCOssa itse asiassa on tarjolla. Nämä
indikoitu “Volume X of Y (Z vol.s available)”.

Esim. P002293:

TITLE:Observator or A dialogue between a country-man, & a landwart school-master, ....

DETAIL: Edinburgh, Scotland, 1705. 8pp. Vol. Volume 1 of 10(1 vols. available)

Eli tosta saisi sen tiedon että kuinka paljon puuttuu
volumeita. Näissä kannattaa kiinnittää erityisesti huomiota silloin
kun “vols. available” on sama kuin merkattu ESTCn.

Muita samanlaisia tapauksia esim. P2056, P2293 ja P2278.

Hankalaksi nämä muuttuvat esim tapauksessa P1919, ECCOssa: "Volume 1
of 2 (1 vols. available)" ja merkattu 271 volumea ESTCn. Kyseessä
Tatler joka ajan yksi tärkeimpiä (ja julkaistumpia sanomalehtiä) eli
toi 271 volumea on todellinen luku. Vaikea kuitenkin sanoa miten tässä
kannattaa toimia.

Yhden tapauksen löysin lisäksi sellaisen, jossa ESTCn sivuvälimerkintä
([2],553-563,[1]p.) on oikea, ei ECCO jossa annettu sivut koko
teokseen minkä sisällä annettu teksti sijaitsee eli
T164241. Tällaisten mahdollisten muiden tapausten korjaaminen
automaattisesti on kuitenkin hankalaa koska löysin myös tapauksia
joissa tämä ei päde (esim. T89143, jossa sivumerkintä on ESTCssä
“[5],8-16,[2]p.”, mutta ECCOn merkintä näyttäisi olevan täysin oikein
ja en tiedä mihin tuo ESTCn sivuvälimerkintä saattaa viitata.

estc_ecco_pagecount_mismatches.csv

3) Tässä nyt lähinnä kiinnostava katsoa löytyykö eroille selityksiä
   jotka pitäisi ja voitaisiin huomioida. ECCO-pagecounteissa on
   laskettu yhteen kaikki ECCO-hitit mutta näitä ei ole käytetty
   ESTC-pagecounttia korvaamaan vaan tulostettu tähän listaan vain
   tiedoksi. Joitain perustapauksia:

   a) ECCO>>ESTC: ESTC-sarakkeessa on ESTC-hitti joita on muutamaa
      poikkeusta lukuun ottamatta aina täsmälleen yksi. Näitten
      kohdalla voi olla, että ESTC listaa vain yhden issuen/volumen ja
      ECCO useita. Mutta jos/kun ESTC:ssä ei ole saatavilla
      volume-tietoa, on mahdoton(?)  sanoa automatisoidusti vastaako
      ESTC-dokumentti yhtä vai kaikkia ECCO-hittejä joilla sama
      ID. Nythän tehty se valinta että oletusarvoisesti lasketaan
      kaikki ECCO-hitit yhteen koska monissa tapauksissa tämä toimii
      oikein.

Kahden edition tapaukset

näissä tapauksissa on kaksi eri editiota ECCOssa, T107530, Tässä on
kaksi eri editiota itse asiassa, mutta ei merkattu. Toinen on tuo
ESTCn antamat sivut ja toinen on 18 voluuminen versio samalla
nimellä. Näistä 18 voluumista ECCOssa tarjolla vain 16, joka indikoitu
niin kuin noissa edellisissä huomioissa totesin.
 
ECCOon digitoitu sama teksti kahteen kertaan

- N3849: Nää on pahoja, tässä kahteen kertaan ECCOssa sama
  kirja. Pitäisi jotenkin tunnistaa eli jos esim. yksiosainen kirja
  kahteen kertaan, niin todennäköisesti väärin ECCOssa.

W20613, ESTC oikein. Selitys miksi ECCO jotain muuta on, että sama
teos kahteen kertaan.
 
Viittaus yhteen volumeen ESTCssä, mutta ECCOssa mukana useampi

T136504: Tässä erikoinen tapaus, "Vol. 3 of a 3 volume work" ESTCssä,
mutta ECCO on 5 voluuminen uudelleen tehty issue. Tästä johtuu myös
ero. En ottaisi tässä ECCOn tietoa täydennettynä.

T131094: Tässä taas ESTCn viite vol. 1 kun ECCOssa mukana kaikki.
     
Viittaus tekstiin toisen sisällä

- T128626: Tässä viittaus tekstiin joka toisen sisällä eli ESTC
  oikein.
 
Page count ESTCn osalta ei vastaa syystä tai toisesta totuutta:

T142967 (physical extension merkintä: 4[i.e.5]v.,116plates), tässä ECCOn sivumäärä selvästi oikein.

T127015: Tässä erikoinen sivuvälimerkintä ESTCssä joka lasketaan
meillä isoimman luvun mukaan johtuen sekavasta merkinnästä. ECCOn
sivut näyttäisi olevan oikein.

T127000: Sivuvälikirjaus ESTCssä, ECCO oikein. Muita vastaavia vielä:
T95266,

N69122: Tässä ECCO oikein, ESTCn merkintä tässä tapauksessa viittaa
siihen että 260+271 mutta tällaista aika mahdoton tunnistaa jos ei
aleta tarkastelemaan sääntöjä. T42022

Sivumerkintä selittävänä tekijänä myös: T13521, T139418 (Tässäkin
ESTCn sivumerkintä jos tulkitaan toisin niin taitaa tulla sama kuin
tuosta ECCOsta. Eli ECCO joka tapauksessa tässä oikein)

Plates arvio ja tarkka tieto ECCOssa

- T135892: Näissä erona saattaa olla, että plateseja on paljon ja nää
  kirjattu ECCOon. Samalla kun meillä on konservatiivinen
  merkintä. Sama: T126668

ECCO oikein, mutta ei selitystä: T179153

Kolumnimerkinnät ESTCssä (esim. T90673): ECCO oikein, tässä nuo
kolumnit joihin meillä ei ole tapaa laskea kertoo ESTCssä että isompi
teksti.

b) ECCO<<ESTC ilmeisesti niin että ECCO listaa vain yhden voluumin ja
   ESTC useita. Ei voida poimia ECCOsta pagecounttia tällaisessa
   tapauksessa.

ECCOon ei ole digitoitu kaikkia teoksen osia

- T138981: Tässä ESTC oikein ja selitys siinä, että ECCOssa vaan 5/7
  volumea joka indikoitu. Tämä on tärkeä tapaus, kannattaa huomioida
  jos mahdollista.

Tällainen yksittäinen tapaus myös, N30205, eli tässä ESTC oikein ja en
pysty sanomaan miksi ECCO väärin.

- lisäksi: T100502, Tässä ilmeisesti ECCOsta vaan puuttuu sivuja?

Monivoluuminen merkattu ESTCn oikein, T64528, Tässä menisi ESTC
ilmeisesti oikein (paitsi että i.e. Ei huomioitu). Miksi ECCOssa
vähemmän sivuja ei selity.

c) ECCO = 0. ESTC indikoi tietyn voluumin ja ECCO listaa tätä vähemmän
   voluumeja eli ei pystytä poimimaan ESTC:n indikoitua
   voluumia. Joskus ECCO listaa näissä täsmälleen yhden voluumin,
   periaatteessa voitaisiin käyttää sen tietoa mutta voi olla
   harhaanjohtava koska saattaa koskea eri voluumia kuin mihin ESTC
   viittaa.

Nämä näyttäisi olevan säännöllisesti oikein eli ei pitäisi olla 0. Eli
ESTCssä viittaus yhteen volumeen, esim. T218354, physical extent:
v.9([28],644,653-960,965-1043,[13]p.) Eli viittaus vain tuohon
volumeen numero 9. Tarkistin ECCOsta monia näitä 0-tapauksia ja siellä
teksti on samalla tavalla yksi volume joka esim. tässä tapauksessa tuo
volume 9. Muita tarkastettuja esim. N37158, N37158

--------------------------------------------

Ja sitten että näkyykö discarded pagecounts listalla tapauksia joista
pitäisi pagecount saada arvioiduksi (tää näyttäisi olevan aika ok eli
nää on tapauksia joissa sivumäärä aidosti puuttuu näistä
merkinnöistä):
https://github.com/rOpenGov/estc/blob/master/inst/examples/output.tables/pagecount_discarded.csv

Suurin osa sellaisia joiden pitäisikin mennä arvioilla. Toisaalta, en
saa kiinni logiikasta eli sivumäärät heittelee saman formaatin ja
volumemäärän sisällä esimerkiksi kuten aikaisemmin puhuttu.

-----------------------------------------------------------

Lisäksi seuraavat joiden pitäisi olla mukana laskuissa

2fo      106pt.(478p.)           118        1
2fo      128pt.(462p.)           118        1
2fo      160pt.(502p.)           118        1
2fo      87pt.(296p.)  118        1
2fo      120pt.(500p.)           118        1
2fo      99pt.(370p.)  118        1
2fo      101pt.(296p.)           118        1
2fo      90pt.(354p.)  118        1
2fo      74pt.(328p.)  118        1
2fo      96pt.(328p.)  118        1
2fo      87pt.(366p.)  118        1
2fo      77pt.(256p.)  118        1
2fo      62pt.(178p.)  118        1
2fo      98pt.(296p.)  118        1
2fo      100pt. (292p.)          118        1
2fo      76pt.(234p.)  118        1
2fo      89pt.(242p.)  118        1
2fo      89pt.(224p.)  118        1
2fo      17pt.(38p.)    118        1
2fo      89pt.(200p.)  118        1
2fo      98pt.(216p.)  118        1
2fo      136pt.(282p.)           118        1
2fo      79pt.(164p.)  118        1
2fo      150pt.(318p.)           118        1
2fo      96pt.(196p.)  118        1
2fo      8pt.(20p.)      118        1
2fo      170pt.(348p.)           118        1
2fo      142pt.(292p.)           118        1
2fo      117pt.(244p.)           118        1
2fo      80pt.(170p.)  118        1
2fo      106pt.(226p.)           118        1
2fo      16pt.(36p.)    118        1
2fo      83pt.(180p.)  118        1
2fo      146pt.(326p.)           118        1
2fo      109pt.(232p.)           118        1
12mo 81[ie.80]p. 81 1
4to 1 sheet ([1] p. :ill. (woodcut) 66 1
NA 14p.c4⁰. 74 1
NA 8p.c12⁰. 74 1
NA [2]p.1/2⁰. 2 1
NA 36p.12⁰. 74 1
12mo 12p.23 leaves 164 1
8vo 42[ie.72]p. 92 1
12mo 16[ie.14]p. 164 1
8vo 42[ie24]p 22 1
2fo 1 sheet ([1] p.) : 1 ill. 118 1
8vo 98p.2 fold.tables 92 1
8vo 6 v. of music (142 p.) 1350 1
4to ccvii.+ leaves 66 1
2fo      viii. leaves       118        1
2fo      [1] pasted sheet ([1] p.)       118        1
8vo      cclvj leaves     92          1
16mo  [360] folios    129        1
16mo  2 pts bb          129        1
2fo      [72] leaves of plates ([8] folded)    118        1
2fo      [20] engraved plates            118        1
4to      38 p. bb          66          1
NA       1/2⁰.   74          1
4to      [244] p. :ill. (woodcuts)        66          1
4to      35 p.c  66          1
4to      ca. 1248 p. in various foliations.      66          1
2fo      xxvi [26, i.e. 52] p.     118        1
NA       xviii [18, i.e. 36] p.     74          1
2fo      xv [15, i.e. 30] p.        118        1
2fo      x [10, i.e. 20] p.          118        1
NA       1 v. (various pagings)           74          1
2fo      xvii [i.e. 54] p.            118        1
2fo      1 sheet ([1] p.) :ill. (woodcut)         118        1
8vo      [208] l.            92          1
8vo      134 l.  92          1
2fo      [4+] p. :ill. (woodcuts)          118        1
4to      [44] p. plates 66          1
NA       xxix [i.e. 54] p.           74          1
2fo      viii [i.e. 15] p. 118        1
2fo      xxxi [i.e. 60] p.           118        1
2fo      viij [i.e. 16] p. 118        1
2fo      xxvj leaves     118        1
8vo      6 parts            92          1
2fo      1 map on two plates 118        1
2fo      xvj leaves       118        1
4to      a-t leaves        66          1
2fo      2 1/2 p.          118        1
4to      [4] lxxiiij leaves         66          1
2fo      lj leaves          118        1
2fo      lxx. leaves       118        1
2fo      xiii [xiiii] leaves          118        1
NA       [36] p.c8⁰.      74          1
4to      [232] l.            66          1
4to      CC.v leaves     66          1
NA       [C.lxxxvi] leaves         74          1
4to      cxix [21] p.     66          1

Eli ainakin näissä sivumäärä annettu tuossa eli ei pitäisi olla
discard listalla.

# ---------------------------------------------------------------------------

- Consider publication_interval field to be used in is.issue
  function. That is sometimes available; not added with ESTC yet.

- ECCO-pagecountit mukaan lopullisiin pagecount-estimaatteihin? 

- Switch from mean.pages and median.pages to mean and median for simplicity

# ---------------------------------------------------------------------------


