Mikä on “Average page count”issa Single volumen ja Issuen suhde?

Miten joku laskettiin single volumeksi ja toinen issueksi? Nyt
näyttäisi että issue-tapauksia on huomattavan paljon enemmän. Vai
oliko niin että päädyttiin laskemaan kaikki pamfletit issueiksi ja
single volumessa on vain kirjat? Eli mikä oli se erottelu näiden
välille? En itse muista.

Konversioista löytyi seuraavanlaista häikkää. Monen voluumin
ilmoituksissa, joissa ei sivutietoja (vaan mennään arviolla), oli
aikalailla heittoja.

4to     3v.,plate      2       10
2fo      10 v.    5005   8
2fo      11 v.    154     8
2fo      30 v.    420     8
2fo      15 v.    210     8
2fo      13 v.    182     8
NA       14 v.    322     7
8vo      12 v.    336     7
2fo      14 v.    196     7
4to      12 v.    240     7
8vo      10 v., plates    14       3
8vo      9 v., plates      13       3
8vo      20v.     580     2
2fo      2v.,plates        4          2
4to      3v.,16plates   32       1
8vo      Vol. 3-4           1          1
8vo      Vol.1-2            1          1
8vo      Vols.3-4          1          1
24mo  14v.,plates      4          1
4to      2 vols. 40       1
8vo      vols. 5-8          1          1
12mo  v.1,2,plates     155.333333333333            1
12mo  v.12-13,plate 310.666666666667            1
12mo  v.3-7   776.666666666667            1
12mo  v.7-8,plates    310.666666666667            1
8vo      3 v.,plates,tables        11       1
4to      3v., plates       4          1
8vo      15v.,plates,tables       8          1
NA       27 v.    621     1
NA       v. ; 46 cm.       94       1
NA       30 v.    690     1
NA       2 v. : ill. (chiefly advertisements)    25.75  1
NA       82 no. 94       1
NA       17 v.    391     1
NA       88 nos.            94       1
NA       130 no.           94       1
NA       20 v.    460     1
8vo      11 v., plates (some fold.)      15       1
2fo      68 v.    952     1
2fo      89 v.    1246   1
8vo      33 v., plates (some col.)        37       1
12mo  51 v.    1224   1
2fo      21 v.    210     1
8vo      48 v., plates (some fold.)      52       1
8vo      15 v., plates (some fold.)      19       1
8vo      113 v., plates (some fold.)    117     1
8vo      329 v. 9212   1
8vo      144 v. 4032   1
8vo      240 v., plates 244     1
8vo      19 v.    532     1
8vo      59 v.    1652   1
8vo      6 v., plates (col.)        1740   1
8vo      13 v., plates    17       1
8vo      24 v., plates    28       1
8vo      449 v., plates 453     1
8vo      178 v., plates 182     1
NA       4 v., plates      51.5    1
8vo      37 v., plates    41       1
8vo      38 v., plates    42       1
8vo      11 v., plates    15       1
8vo      59 v., plates    63       1
2fo      196 v. 2744   1
2fo      79 v.    1106   1
4to      80 v.    1600   1
NA       43 v.    989     1
8vo      57 v., plates    61       1
8vo      67 v.    1876   1
4to      50 v.    1000   1
2fo      9 v. (v.1: [20], XII, xiii-lxxvj p., 1380 columns; v.2: [4] p., 1403-1586, 1585-1654, 1667-2796, 2805-2868 columns; v.3: [4] p., 2877-3852, 3851-4568 columns; v.4: [4] p., 4605-7064 columns; v.5: [4] p., 7125-8204 columns, [4] p., 8277-8788, 8805-9302 columns, [3] p., 9501-9634 columns, [1] p.; v.6: [4], lxviij p., 2108 columns; v.7: [4] p., 2113-5016 columns; v.8: [4] p., 648, 647-694, 697-1010, 1009-2190 columns; v.9: [4], 2215-4538, 4541-4548 columns, 4549-4566 p., 4567-4708 columns), [11] leaves of plates (mostly folded)       28597            1
4to      2 v. ([4]; [2], 43, [1]; [2], 50, [2]; [2], 58, [2]; [8], 75, [1]; [2], 41, [1]; [2], 49, [1]; [2], 57, [1]; [4], 59, [1]; [2], 99, [1]; [2], 38; [2], 60, [2]; [4], 46, [4]; [4]; [4], 56; [2] 59, 50-51, [1]; [2], 45, [1]; [2], 54; [2], 52, [2]; [2], 94; [2], 38, [2]; [2], 33, [3]; [2], 60, [2]; [2], 40, [2]; [2], 28, [2]; [2], 32; [4], 43, [1]; [4], 44 p.)           1462   1

 

 

Toinen on sellaiset missä on “PARTS” laskuissa (tai pts.). Näissä myös
aika randomilla menee:

 
8vo      11 parts         463     1
4to      30 parts         20       1
8vo      18pts.,plate    2          1
4to      5pts.,plates     4          1
2fo      4pts. in 7v.,plates      4          1
8vo      18 parts         463     1


Lisäksi yksittäistapauksia joissa ilmeisesti virheitä löytyi yhdellä
nopealla kelauksella seuravia:

2fo     [4] p. (p. [3] blank)  538     1
2fo      [60] leaves of plats   538     1
8vo      [52] plates between [58] blank leaves       463     1
8vo      1 score (144 p.)        463     1

 
Lisäksi yksi sellainen jossa leaves of plates jää laskematta mukaan:

4to      17, 5 p.           17       1
4to      20, 2 p.           20       1
2fo      1 sheet ([2] p.), [18] leaves of plates          2          1

 

Lisäksi pisti silmään:

NA       4⁰.       94       4
NA       381cards in box        94       1
NA       1 atlas 94       1

 

Esimerkkejä 

  expect_equal(polish_physical_extent("1to")$pagecount, 2)
  expect_equal(polish_physical_extent("1 leaf")$pagecount, 2)  
  expect_equal(polish_physical_extent("sheet")$pagecount, 2)
  expect_equal(polish_physical_extent("broadside")$pagecount, 2)
  expect_equal(polish_physical_extent("broadsheet")$pagecount, 2)  
  
  expect_equal(polish_physical_extent("plates (many folded or double leaved)")$pagecount, 4)
  expect_equal(polish_physical_extent("[50+] leaves")$pagecount, 100)
  expect_equal(polish_physical_extent("6p., leaf, 60, 40, 42, 64, 30, 24p., 2 leaves., 57p")$pagecount, 72)
  expect_equal(polish_physical_extent("v. 1-6,plates")$pagecount, 4)
  expect_equal(polish_physical_extent("3v.([2],x,[16],207,[1],207-862,[6]p.),plates")$pagecount, 901) # 2+10+16+1+862+6+4
  expect_equal(polish_physical_extent("[1] sheet ([1]+ p.)")$pagecount, 2) # 1 sheet
  expect_equal(polish_physical_extent("1 sheet (2, [2] p.)")$pagecount, 2) # = 1 sheet

  # 26+400+24+2+1+13+4=470
  expect_equal(polish_physical_extent("2 v. ([26], 400, [24], 192, [2], 167, [1], 203, [13], 144, [4], 152 p.)")$pagecount, 470) 
  expect_equal(polish_physical_extent("2v.([4],402p.)")$pagecount, 406)
  expect_equal(polish_physical_extent("4v.,plates")$pagecount, 4)
  
  # Pitais olla 2 p. [koska 2 p. ilmaistu suluissa]
  expect_equal(polish_physical_extent("1leaf ([2]p.)")$pagecount, 2)
  # 10+788+4=802
  expect_equal(polish_physical_extent("[10],v-792,4p.,plates")$pagecount, 806) 
  # 3+560+5+4=572
  expect_equal(polish_physical_extent("[3],xx-579,[5]p.,plates")$pagecount, 572)
  expect_equal(polish_physical_extent("3")$pagecount, 3)
  expect_equal(polish_physical_extent("[3]")$pagecount, 3)
  expect_equal(polish_physical_extent("iii")$pagecount, 3)
  expect_equal(polish_physical_extent("lxxiip.")$pagecount, 72)
  expect_equal(polish_physical_extent("8,[28],37-88p.")$pagecount, 116) # or 88? 
  expect_equal(polish_physical_extent("[2],1107-1217,[1]p.")$pagecount, 114)
  expect_equal(polish_physical_extent("505-508")$pagecount, 4)
  expect_equal(polish_physical_extent("1 sheet")$pagecount, 2)
  expect_equal(polish_physical_extent("1 sheet ([1] page)")$pagecount, 2)
  expect_equal(polish_physical_extent("1 sheet (2 pages)")$pagecount, 2)
  expect_equal(polish_physical_extent("1 sheet")$pagecount, 2)
  expect_equal(polish_physical_extent("2 sheets (versos blank)")$pagecount, 4)
  expect_equal(polish_physical_extent("2 sheets")$pagecount, 4)
  expect_equal(polish_physical_extent("1/2 sheet")$pagecount, 2)
  expect_equal(polish_physical_extent("1 broadside")$pagecount, 2)
  expect_equal(polish_physical_extent("[2] leaves.")$pagecount, 4)
  expect_equal(polish_physical_extent("48 leaves")$pagecount, 96)
  expect_equal(polish_physical_extent("vi,7-72p.")$pagecount, 72)
  expect_equal(polish_physical_extent("[2], 58 p.")$pagecount, 60)
  expect_equal(polish_physical_extent("vi,[1],8-67,[1]p.")$pagecount, 68)
  expect_equal(polish_physical_extent("[2], 6 p.")$pagecount, 8)
  expect_equal(polish_physical_extent("[2], 5, [1] p.")$pagecount, 8)
  expect_equal(polish_physical_extent("23,[1]p.")$pagecount, 24)
  expect_equal(polish_physical_extent("[16] p.")$pagecount, 16)
  expect_equal(polish_physical_extent("6p.")$pagecount, 6)
  expect_equal(polish_physical_extent("[2]p.")$pagecount, 2)
  expect_equal(polish_physical_extent("[3],vi-vii,[2],10-70,[2]p")$pagecount, 70) # ???
  expect_equal(polish_physical_extent("[2],VII,[1],90p.")$pagecount, 100)
  expect_equal(polish_physical_extent("xviii,456,[2]p.")$pagecount, 476)
  expect_equal(polish_physical_extent("2v.([14],242,[6],265-452,[12]p.")$pagecount, 484)
  expect_equal(polish_physical_extent("262p.,plate")$pagecount, 264)
  expect_equal(polish_physical_extent("127,[1]p.,plates")$pagecount, 132)
  expect_equal(polish_physical_extent("vi,[1],iv-vii,[27],680,[24]p.")$pagecount, 739)
  expect_equal(polish_physical_extent("Pp.1-190p.,table")$pagecount, 192)
  expect_equal(polish_physical_extent("24,24p.")$pagecount, 24)
  expect_equal(polish_physical_extent("110,[1],4-60p.")$pagecount, 111)
  expect_equal(polish_physical_extent("72p.,ill.")$pagecount, 72)
  expect_equal(polish_physical_extent("32,[16],33-56p.")$pagecount, 72)

  expect_equal(polish_physical_extent("[4],56,65-176;45,[1]p.")$pagecount, 226)
  
  expect_equal(polish_physical_extent("[3],vi-vii,[3],98p.")$pagecount, 106)
  expect_equal(polish_physical_extent("vi,9-74p.")$pagecount, 72)
  expect_equal(polish_physical_extent("[4],53,[13]p.,fold.tables")$pagecount, 74)
  expect_equal(polish_physical_extent("pp. 145-148")$pagecount, 4)
  expect_equal(polish_physical_extent("pp. [45]-48")$pagecount, 4)
  expect_equal(polish_physical_extent("p. [2], 129-142")$pagecount, 16)
  expect_equal(polish_physical_extent("[12], 155-923, [47] p.")$pagecount, 828)
  expect_equal(polish_physical_extent("Ff. [8], 1-209, 209-213, 213-219")$pagecount, 454) # ???
  expect_equal(polish_physical_extent("122-126 p.")$pagecount, 5)
  expect_equal(polish_physical_extent("p. 66")$pagecount, 1)
  expect_equal(polish_physical_extent("pp. 49-56")$pagecount, 8)	       
  expect_equal(polish_physical_extent("v.1(48p.)")$pagecount, 48)
  expect_equal(polish_physical_extent("Pp.[1],122-169,[1],171*-175*,[2],174-187,[2],190*-195,[1],4,a-m")$pagecount, 202)
  expect_equal(polish_physical_extent("iii-xxiv, 118, [2] p.")$pagecount, 142)
  expect_equal(polish_physical_extent("[3], 4-8, p. 7, 10-11, 10-13, [1] p.")$pagecount, 17)
  expect_equal(polish_physical_extent("1679 p. in various pagings.")$pagecount, 1679)
  expect_equal(polish_physical_extent("iii-xxiv, 118, [2] p.")$pagecount, 142)
  expect_equal(polish_physical_extent("ca. 298 p.")$pagecount, 298)
  expect_equal(polish_physical_extent("8p. 21cm. (8vo)")$pagecount, 8)
  expect_equal(polish_physical_extent("[6] pp.")$pagecount, 6)
  expect_equal(polish_physical_extent("1 sheet ([1] p.)")$pagecount, 2)
  expect_equal(polish_physical_extent("1 sheet ([1]) p.")$pagecount, 2)
  expect_equal(polish_physical_extent("1 sheet ([2] p.)")$pagecount, 2)
  expect_equal(polish_physical_extent("152,151-573,[1]p.,plates")$pagecount, 578)
  expect_equal(polish_physical_extent("v.3 (558,[2]p.),plates")$pagecount, 564)
  expect_equal(polish_physical_extent("v.8 (551,[1]p.),plates")$pagecount, 556)
  expect_equal(polish_physical_extent("v.2(viii,502p.)")$pagecount, 510)
  expect_equal(polish_physical_extent("p. 209-[210]")$pagecount, 2)
  expect_equal(polish_physical_extent("[2],iii,[1],25,[26],50-69,[1];213,[67]p.,plates")$pagecount, 386)
  expect_equal(polish_physical_extent("[44], 136, 177-296, 313-400, 409-488 p.")$pagecount, 532)
  expect_equal(polish_physical_extent("39, 42-49, [1] p.")$pagecount, 50)
  expect_equal(polish_physical_extent("v.3 (558,[2]p.),plates")$pagecount, 564)
  expect_equal(polish_physical_extent("v.8 (551,[1]p.),plates")$pagecount, 556)
  expect_equal(polish_physical_extent("[2],xxi,[9],191,194-205,[5]p.,plate")$pagecount, 244)
  expect_equal(polish_physical_extent("v.2(viii,502p.)")$pagecount, 510)
  expect_equal(polish_physical_extent("2v.([2],lx,viii,1650,[50]p.),plates")$pagecount, 1766)
  expect_equal(polish_physical_extent("[2], 34, 41-48 p.")$pagecount, 50)
  expect_equal(polish_physical_extent("4, 8, 17-48 p.")$pagecount, 48)
  expect_equal(polish_physical_extent("[20], 225, [7], 369-680, 721-1051, [5] p.")$pagecount, 1083)
  expect_equal(polish_physical_extent("[2],16,25-261,[3]p.")$pagecount, 266)
  expect_equal(polish_physical_extent("p. 209-[210]")$pagecount, 2)
  expect_equal(polish_physical_extent("iv,[1],6-140,[2],40,[2]p.")$pagecount, 149) # or 144 ? if starting romans included in the arab series.   
  expect_equal(polish_physical_extent("[2],45,56-78,[2]p.")$pagecount, 82)
  expect_equal(polish_physical_extent("[10],42,45-88p.")$pagecount, 98)
  expect_equal(polish_physical_extent("[21],vi-xlviii,248,[20]p.,plate,table")$pagecount, 336)
  expect_equal(polish_physical_extent("2v.([4],x,741,[25],iii,[4],744-853,[1]p.)")$pagecount, 897)
  expect_equal(polish_physical_extent("v.12 (460,vii,[1],civ p.),plates")$pagecount, 569)  
  expect_equal(polish_physical_extent("[4],vii-xii,[4],222p.,plates")$pagecount, 240)
  expect_equal(polish_physical_extent("[14],356,361-408;76,79-216,[14]p.,plates")$pagecount, 656)
  expect_equal(polish_physical_extent("48,59-66p.")$pagecount, 66)
  expect_equal(polish_physical_extent("[3],vi-xxiv,424p.")$pagecount, 446)
  expect_equal(polish_physical_extent("[2],v-xvii,[1],248p.,plate")$pagecount, 266)
  expect_equal(polish_physical_extent("[3],vi-vii,[3],110p.")$pagecount, 118)
  expect_equal(polish_physical_extent("[4],231,240-428p.,plate")$pagecount, 434)
  expect_equal(polish_physical_extent("[2],ii,v-vii,[1],427,[1]p.")$pagecount, 438)
  expect_equal(polish_physical_extent("264,269-723,[3]p.,plates")$pagecount, 730)
  expect_equal(polish_physical_extent("[2],99,[4],102-110,113-119,[1],119-120,[2];[2],121-246p.,tables")$pagecount, 261)
  expect_equal(polish_physical_extent("24,[2],25-66p.")$pagecount, 68)
  expect_equal(polish_physical_extent("2v.(xxiv,[1],6-438,[5],446-876p.)")$pagecount, 906)
  expect_equal(polish_physical_extent("xi,[1],356,[4],357-398,[2],399-466,[2]p.,plates")$pagecount, 490)
  expect_equal(polish_physical_extent("[2], 34, 41-48 p.")$pagecount, 50)
  expect_equal(polish_physical_extent("[2], 6, 9-12 p.")$pagecount, 14)
  expect_equal(polish_physical_extent("[20], 225, [7], 369-680, 721-1051, [5] p.")$pagecount, 1083)
  expect_equal(polish_physical_extent("4, 253-480 p.")$pagecount, 480)
  expect_equal(polish_physical_extent("v,[3],124,[4],129,[3]p.")$pagecount, 144)
  expect_equal(polish_physical_extent("v,[1],7-18p.")$pagecount, 18)
  expect_equal(polish_physical_extent("1 v. [2 p.]")$pagecount, 2)
  expect_equal(polish_physical_extent("xxxii [i.e. xxxiii] leaves")$pagecount, 66) 
  expect_equal(polish_physical_extent("5-49 i.e 5-51]")$pagecount, 47) 
  expect_equal(polish_physical_extent("12 [i.e. 8 p.]")$pagecount, 8)
  expect_equal(polish_physical_extent("2 i.e 5")$pagecount, 5)
  expect_equal(polish_physical_extent("2 p. [i.e. 4 p.]")$pagecount, 4)
  expect_equal(polish_physical_extent("2 [i.e. 4] leaves")$pagecount, 8) 
  expect_equal(polish_physical_extent("[16],438[i.e.428],[52]p.")$pagecount, 496)
  expect_equal(polish_physical_extent("[5], 4 [i.e. 6]-8 p.")$pagecount, 8)
  #expect_equal(polish_physical_extent("[2], 169-182 [i.e. 14] p.")$pagecount, 16)
  expect_equal(polish_physical_extent("v.")$pagecount, 5)
  expect_equal(polish_physical_extent("v.8([6],338,[204]),plates")$pagecount, 552)  
  expect_equal(polish_physical_extent("2-3 i.e 5")$pagecount, 4) # 2 - 5
  expect_equal(polish_physical_extent("2-3 [ie. 5]")$pagecount, 4) # 2 - 5
  expect_equal(polish_physical_extent("2-3 [ie 5]")$pagecount, 4) # 2 - 5
  expect_equal(polish_physical_extent("2-3 [ ie 5]")$pagecount, 4) # 2 - 5
  expect_equal(polish_physical_extent("2-3 [i.e 5]")$pagecount, 4) # 2 - 5
  expect_equal(polish_physical_extent("2-3 [i.e. 5]")$pagecount, 4) # 2 - 5
  expect_equal(polish_physical_extent("xi,[1],309[i.e., 310],[2]p.")$pagecount, 324)
  expect_equal(polish_physical_extent("xvi,3-46,[2]p.")$pagecount, 62)  
  expect_equal(polish_physical_extent("6 p. [i.e.3 leaves] ;")$pagecount, 6) 
  expect_equal(polish_physical_extent("324[i.e.325]plates")$pagecount, 650)   
  expect_equal(polish_physical_extent("36 p [1]")$pagecount, 37)
  expect_equal(polish_physical_extent("25, 27-33, [4] p.")$pagecount, 37)  
  expect_equal(polish_physical_extent("2v.([2],lx,viii,1650,[50]p.),35plates")$pagecount, 1832)
  expect_equal(polish_physical_extent("2v.([2],xxiv,615,[4],616-1318,[64]p.)")$pagecount, 1412)
  expect_equal(polish_physical_extent("36p.,fold.plate")$pagecount, 38)
  expect_equal(polish_physical_extent("4], 18, 130, 149-388, 397-398, 391-394, 403-404, 397-548, 579-580, 551-554, 585-596, 745-979, [1], 980-[981], 981-[982], 982-[983], 983-987, [1], 988-[989], 989-[990], 990-992, 992-1130 p., plates")$pagecount, 1140)  
  expect_equal(polish_physical_extent("[8],xvi,111,[46],114-314,[6]p.,table")$pagecount, 392)
  expect_equal(polish_physical_extent("vi,iii-x,[2],346,[2] p.")$pagecount, 360)  
  expect_equal(polish_physical_extent("[8],264,295-342,[4]p.")$pagecount, 354)
  expect_equal(polish_physical_extent("2v.(li,[13],839,[1]p.,tables)")$pagecount, 908)  
  expect_equal(polish_physical_extent("2 pts in 1 v. (viii, 332, 5, [1] p.)")$pagecount, 341)  
  expect_equal(polish_physical_extent("36p.,fold.plate")$pagecount, 38)  
  expect_equal(polish_physical_extent("[10], 554, [5], 556-812, [32] p.")$pagecount, 859)
  expect_equal(polish_physical_extent("6], 104, 109-127, [1] p.")$pagecount, 134)  
  expect_equal(polish_physical_extent("[2] 4 p.")$pagecount, 6)  
  expect_equal(polish_physical_extent("ca. 3108 p. in various pagings")$pagecount, 3108)
  expect_equal(polish_physical_extent("[4] p. (the last 3 p. blank)")$pagecount, 4)
  expect_equal(polish_physical_extent("2 Sheets (versos blank)")$pagecount, 4)  
  expect_equal(polish_physical_extent("[2], 3-58 p.")$pagecount, 58)
  expect_equal(polish_physical_extent("[2], 283-287, [1] p.")$pagecount, 8)
  expect_equal(polish_physical_extent("p. 237 [i.e. 245]-247, [1]")$pagecount, 4)
  expect_equal(polish_physical_extent("[4], 31, 28-138, [2] p.")$pagecount, 144)
  expect_equal(polish_physical_extent("[2] 6 p.")$pagecount, 8)  
  expect_equal(polish_physical_extent("[3],6-31,[1]p.")$pagecount, 30)
  expect_equal(polish_physical_extent("[2],xxxv,[3],106,[26],286,[30]p.,plates,table")$pagecount, 388)
  expect_equal(polish_physical_extent("v.4 ([8],418,[30]p.),plate")$pagecount, 458)
  expect_equal(polish_physical_extent("9,[17]p.")$pagecount, 26)  
  expect_equal(polish_physical_extent("366 p.")$pagecount, 366)
  expect_equal(polish_physical_extent("[4], 31, 28-138, [2] p.")$pagecount, 144)  
  expect_equal(polish_physical_extent("3 sheets (3 pages)")$pagecount, 6)  
  expect_equal(polish_physical_extent("35,8,9,16p")$pagecount, 35)
  expect_equal(polish_physical_extent("2v.([6],iii,[1],lxxxviii,994p.)")$pagecount, 1089)
  expect_equal(polish_physical_extent("[24+} p.")$pagecount, 24)
  expect_equal(polish_physical_extent("2v.(CLI,[1],800p.)")$pagecount, 952)

  expect_equal(polish_physical_extent("[4] s. (s. [4] tyhjä)")$pagecount, 4)
  expect_equal(polish_physical_extent("XXIV s.")$pagecount, 24)
  expect_equal(polish_physical_extent("IX + 313 s.")$pagecount, 322)
  expect_equal(polish_physical_extent("9 + 15 s.")$pagecount, 24)
  expect_equal(polish_physical_extent("6 vihkoa (396 s.)")$pagecount, 396)
  expect_equal(polish_physical_extent("4 nid. (464 s.)")$pagecount, 464)
  expect_equal(polish_physical_extent("2 osaa (229 s.)")$pagecount, 229)
  expect_equal(polish_physical_extent("[XXIII], 161 s.")$pagecount, 184)

  # NA Cases
  expect_true(is.na(polish_physical_extent("[fewer than 50 pages]")$pagecount))
  expect_true(is.na(polish_physical_extent("1 v")$pagecount))
  expect_true(is.na(polish_physical_extent("2v")$pagecount))

  # Fennica
  expect_equal(polish_physical_extent("2 kuvalehteä")$pagecount, 4)
  expect_equal(polish_physical_extent("2 kuvaliitettä")$pagecount, 4)
  expect_equal(polish_physical_extent("2 kuvasivua")$pagecount, 4)
  expect_equal(polish_physical_extent("2 malliliitettä")$pagecount, 4)
  expect_equal(polish_physical_extent("2 kartblad")$pagecount, 4)
  expect_equal(polish_physical_extent("2 kuvaa")$pagecount, 4)
  expect_equal(polish_physical_extent("2 karttaa")$pagecount, 4)
  expect_equal(polish_physical_extent("2 blad")$pagecount, 4)
  expect_equal(polish_physical_extent("2 muotokuvalehteä")$pagecount, 4)
  expect_equal(polish_physical_extent("2 pl.")$pagecount, 4)
  expect_equal(polish_physical_extent("2 blad.")$pagecount, 4)
  expect_equal(polish_physical_extent("2 irtokuval.")$pagecount, 4)
  expect_equal(polish_physical_extent("2 irtokuvalehteä")$pagecount, 4)
  expect_equal(polish_physical_extent("2 kartor")$pagecount, 4)
  expect_equal(polish_physical_extent("2 valokuvaa")$pagecount, 4)
  expect_equal(polish_physical_extent("2 liitelehteä")$pagecount, 4)
  expect_equal(polish_physical_extent("2 numeroimatonta lehteä")$pagecount, 4)
  expect_equal(polish_physical_extent("2 silhuetter")$pagecount, 4)
  expect_equal(polish_physical_extent("2 dubbelsidor")$pagecount, 4)
  expect_equal(polish_physical_extent("2 taulua")$pagecount, 4)

})


test_that("volume count is correct", {
  expect_equal(polish_physical_extent("v.7-9,plates")$volcount, 3)
  expect_true(is.na(polish_physical_extent("v")$volcount))
  expect_equal(polish_physical_extent("2 v")$volcount, 2)
  expect_equal(polish_physical_extent("2v")$volcount, 2)
  expect_equal(polish_physical_extent("5v.")$volcount, 5)
  expect_equal(polish_physical_extent("73 vols")$volcount, 73)
  expect_equal(polish_physical_extent("73 vol ")$volcount, 73)
  expect_equal(polish_physical_extent("73 v ")$volcount, 73)
  expect_equal(polish_physical_extent("73 v")$volcount, 73)
  expect_true(is.na(polish_physical_extent("73 parts, 2 pages")$volcount))
  expect_true(is.na(polish_physical_extent("73 pts,2 pages")$volcount)) 
  expect_true(is.na(polish_physical_extent("73 pts.,2 pages")$volcount))
  expect_equal(polish_physical_extent("1atlas")$volcount, 1)
  expect_true(is.na(polish_physical_extent("v, 5")$volcount)) # 5 + 5 pages, 1 volume
  expect_true(is.na(polish_physical_extent("v")$volcount))  
  expect_true(is.na(polish_physical_extent("v ;")$volcount))

})


test_that("volume count is correct", {
  expect_equal(polish_physical_extent("v.5")$volnumber, 5)
  expect_true(is.na(polish_physical_extent("v.7-9,plates")$volnumber))
})
