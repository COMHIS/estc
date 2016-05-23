Terve Mikko,

Liitteessä päivitettynä taulut ESTC:stä identifioiduille tapauksille
single-volume, multi-volume, issue ja muut.

Muut-kategoriassa on mm. näitä joissa physical extent on "13 parts"
tms. Eli avoin kysymys on voidaanko nämä tulkita suoraan multi-volume
kategoriaan vai tehdäänkö niille jotain muuta?


Miten näissä parts pitäisi tulkita? Voidaanko katsoa että se on
synonyymi volumelle (joskus tätä mietittiin, muistaakseni tulkinta oli
joku muu) - onko keinoja määritellä volcount näitten pohjalta?

4to      30 parts
8vo      18pts.,plate
4to      5pts.,plates
2fo      4pts. in 7v.,plates 
8vo      18 parts


Varmistatko vielä, mitä näissä pitäisi tulla sivumääräksi niin lisään
testeihin ja koitan fiksata:

2fo     [4] p. (p. [3] blank)
2fo      [60] leaves of plats
8vo      [52] plates between [58] blank leaves
8vo      1 score (144 p.)
4to      17, 5 p.
4to      20, 2 p.
2fo      1 sheet ([2] p.), [18] leaves of plates

Tuossa ongelmaa että nykysäännöillä pagecount 17 tapaukselle "17, 5
p." ja 72 tapauksessa "6p., leaf, 60, 40, 42, 64, 30, 24p., 2 leaves.,
57p") Jos pilkkuja huomioidaan niin pitää katsoa mitkä on yhtenäiset
selkeät säännöt. Eli yleensä ei voida vain summata lukuja jos on
pilkkuja kuten tuosta näkyy. Mutta muistiinpanojesi mukaan ekassa
tapauksessa kuienkin pitäisi summata (22 sivua). Mutta sitten pitää
päättää että minkä säännön nojalla tällaiset erikoistapaukset
tunnistetaan. 
 
Leo



---------------------


source("analysis.init.R")

inds <- which(is.na(df.preprocessed$pagecount.orig))

dfs = cbind(df.orig[inds, c("physical_dimension", "physical_extent")],
      df.preprocessed[inds, c("title", "volnumber", "volcount", "document.items", "gatherings", "pagecount", "publication_frequency", "publication_year_from", "publication_year_till")])
dfs$issue <- is.issue(df.preprocessed[inds,])
dfs$singlevol <- is.singlevol(df.preprocessed[inds,])
dfs$multivol <- is.multivol(df.preprocessed[inds,])
dfs = dfs[, c("title", "physical_dimension", "physical_extent", "volnumber", "volcount", "document.items", "gatherings", "issue", "singlevol", "multivol", "pagecount", "publication_frequency", "publication_year_from", "publication_year_till")]

# Eli kysymys oli miten näitä luokitellaan.
inds2 = which(names(dfs) %in% c("issue", "singlevol", "multivol"))

#Single volume
tab1 = write_xtable(filter(dfs, singlevol)[, -inds2], file = "~/tmp/estc_singlevol.csv")

#Multi-volume
tab2 = write_xtable(filter(dfs, multivol)[, -inds2], file = "~/tmp/estc_multivol.csv")

#Issue
tab3 = write_xtable(filter(dfs, issue)[, -inds2], file = "~/tmp/estc_issue.csv")

#Rest
tab4 = write_xtable(filter(dfs, !issue & !singlevol & !multivol)[, -inds2], file = "~/tmp/estc_rest.csv")

--------------------------------------------------


