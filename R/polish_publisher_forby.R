#' @title Polish Publisher 
#' @description Polish publisher field separating for/by.
#' @param x Publisher vector
#' @return Polished vector
#' @export
#' @details Polish publisher field. 
#' @author Mika Koistinen \email{leo.lahti@@iki.fi}
#' @references See citation("bibliographica")
#' @examples # polish_publisher("printed and sold by R. Marchbank")
#' @keywords utilities
polish_publisher_forby <- function (x) {
  #x=df100$publisher
  x <- as.character(x)
  xorig <- x
  #x="[s.n.]"
  x1 <- tolower(x)
  x1 = gsub("\\[sic\\] "," ",x1)
  x1 = gsub(" sic "," ",x1) 
  
  x1 = gsub(" \\["," ",x1)
  x1 = gsub("\\[","",x1)
  x1 = gsub("\\]  "," ",x1)
  x1 = gsub("\\]","",x1)
  
  
  #x1 <- gsub("\\[", "", x)
  #x1 <- gsub("\\]", "", x1)
  #x1 <- gsub("\\.$", "", x1)
  #x1 <- gsub("\\,$", "", x1)
  #x1 <- gsub("^s\\.n$", "s\\.n\\.", x1)
  

  
    
  x1 = gsub(" \\("," ",x1)
  x1 = gsub("\\(","",x1)
  x1 = gsub("\\)","",x1)  
  x1 = gsub("\\) "," ",x1)  
  x1 = gsub("\\? "," ",x1)  
  x1 = gsub("\\?","",x1)  
  
  # Change print statements into lowercase
  
  x1 = gsub(" & by "," by ",x1) 
  x1 = gsub(" by, "," by ",x1) 
  x1 = gsub(" by. "," by ",x1) 
  x1 = gsub(" byr "," by ",x1) 
  x1 = gsub(" byor "," by ",x1) 
  x1 = gsub(" byh "," by ",x1) 
  x1 = gsub(" by: "," by ",x1) 
  x1 = gsub(" for, "," for ",x1) 
  x1 = gsub(" for. "," for ",x1) 
  
  x1 = gsub("printed, ","printed ",x1)
  x1 = gsub("printed: ","printed ",x1)
  x1 = gsub("printed; ","printed ",x1)

  x1 = gsub("imprimé pour ","printed for ",x1) #?
  x1 = gsub("imprimé par ","printed by ",x1)
  x1 = gsub("imprimée pour ","printed for ",x1) #?
  x1 = gsub("imprimée par ","printed by ",x1)
  
  x1 = gsub("imprimé et vendu par ","printed and sold by ",x1)
  x1 = gsub("imprimé dans l'an ","printed in the year ",x1)

  x1 = gsub("imprimé à ","printed at ",x1)
  
  
  x1 = gsub("impensis, ","impensis ",x1) #? latin
  
  x1 = gsub("impensis ","printed by ",x1) #? latin
  
  
  x1 = gsub("imprimée ehez ","printed by and for ",x1) #?chez
  x1 = gsub("printed by chez ","printed by and for ",x1)
  x1 = gsub("printed for and by ","printed by and for ",x1) #??
  x1 = gsub("printed for \\(and by ","printed by and for ",x1) #??

  x1 = gsub("printed forj. ","printed for j. ",x1)
  x1 = gsub("printed for-","printed for ",x1)
  x1 = gsub("printed or ","printed for ",x1)
  x1 = gsub("printed fo ","printed for ",x1)
  
  x1 = gsub("printed for.","printed for ",x1)
  x1 = gsub("printed, by ","printed by ",x1)
  x1 = gsub("by printed ","printed by ",x1)
  x1 = gsub("printedby ","printed by ",x1)
  x1 = gsub("printed \\(by ","printed by ",x1)
  x1 = gsub("printed, \\(by ","printed by ",x1)
  x1 = gsub("printed \\[by ","printed by ",x1)
  x1 = gsub("printed---by ","printed by ",x1)
  x1 = gsub("printed aby ","printed by ",x1)
  x1 = gsub("print by ","printed by ",x1)
  x1 = gsub("pr.by ","printed by ",x1)
  x1 = gsub("imprimted[sic]by ","printed by ",x1)
  
  
  #if contains printed then is not changed??
  x1 = gsub("imprinted ","printed ",x1)#
  x1 = gsub("re-printed ","reprinted ",x1)# epossibly "london: reprinted" to -> reprinted london??
  
  x1 = gsub("printed bu ","printed by ",x1)
  x1 = gsub("printed hy ","printed by ",x1)
  
  x1 = gsub("printed br ","printed by ",x1)
  x1 = gsub("printed bee ","printed by ",x1)
  x1 = gsub("printad ","printed ",x1)
  
  x1 = gsub("chèz ","printed for ",x1)
  x1 = gsub("ches ","printed for ",x1)
  x1 = gsub("chés ","printed for ",x1)
  x1 = gsub("chés ","printed for ",x1)
  x1 = gsub("chéz ","printed for ",x1)
  x1 = gsub("chez, ","printed for ",x1)
  x1 = gsub("chez. ","printed for ",x1)
  x1 = gsub("chez-","printed for ",x1)
  x1 = gsub("chez\\.\\.","printed for ",x1)
  x1 = gsub("chez ","printed for ",x1)
  
  #printed for and published by
  x1 = gsub("printed for, and published by ","printed by and for ",x1) 
  x1 = gsub("printed for and published by ","printed by and for ",x1)
  x1 = gsub("printed for, and published by, ","printed by and for ",x1)
  
  # Preprocessing [printed and sold by] 
  x1 = gsub("sold by-","sold by ",x1) 
  x1 = gsub("sold, ","sold ",x1) 
  
  x1 = gsub("printed, and for sale ","printed and sold by ",x1)
  x1 = gsub("and are to be sold by ","and sold by ",x1) #
  
  
  
  x1 = gsub(", and are to be sold by "," and sold by ",x1) #
  x1 = gsub(", and sold by "," and sold by ",x1)
  x1 = gsub("; and sold by "," and sold by ",x1)
  x1 = gsub("rinted  and sold ","printed and sold by ",x1)
  x1 = gsub("printed: and sold by ","printed and sold by ",x1)
  x1 = gsub("printed, and sold by ","printed and sold by ",x1)
  x1 = gsub("printed, and sold at ","printed and sold by at ",x1)
  x1 = gsub("printed, and sold in ","printed and sold by in ",x1)
  x1 = gsub("printed and sold at ","printed and sold by at ",x1)
  x1 = gsub("printed and sold in ","printed and sold by in ",x1)
  
    
  
  x1 = gsub("printed for, and sold by ","printed for and sold by ",x1)
  x1 = gsub("printed for, and sold by, ","printed for and sold by ",x1)
  x1 = gsub("printed for & sold by in: ","printed for and sold by ",x1)
  x1 = gsub("printed for & sold by tho: ","printed for and sold by ",x1)
  x1 = gsub("printed for and sold b ","printed for and sold by ",x1)
  x1 = gsub("printed for and sold only by ","printed for and sold by ",x1)
  x1 = gsub("printed for and are to sold sic by ","printed for and sold by ",x1)
  x1 = gsub("printed for & sold by ","printed for and sold by ",x1)
  x1 = gsub("printed for & sold at ","printed for and sold by at ",x1)
  x1 = gsub("printed for sold by","printed for and sold by ",x1)
  x1 = gsub("gedruckt im jahr","printed in the year ",x1)
  
  #x1 = gsub("au coin ","corner of ",x1)
  x1 = gsub("aux depens ","aux depen ",x1)
  x1 = gsub("aux dépens ","aux depen ",x1)
  x1 = gsub("aux dépends ","aux depen ",x1)
  x1 = gsub("aux depends ","aux depen ",x1)
  x1 = gsub("aux d\'epens ","aux depen ",x1)
  x1 = gsub("aux de\'pens ","aux depen ",x1)
  x1 = gsub("aux depen des ","aux depen de ",x1)
  x1 = gsub("aux depen d\'une ","aux depen de ",x1)
  
  x1 = gsub("aux depen de la comp. ","printed for company ",x1)

  x1 = gsub("aux depen de l\'auteur","printed for author",x1)
  x1 = gsub("aux depen de la compagnie","printed for company",x1)
  x1 = gsub("aux depen de au traducteur","printed for translator",x1)
  
  x1 = gsub("aux depen du ","aux depen de ",x1)
  x1 = gsub("aux depen de la ","printed for ",x1)
  x1 = gsub("aux depen de ","printed for ",x1)
  x1 = gsub("aux depen ","printed for ",x1)
  x1 = gsub("auf kosten des ","printed for ",x1)
  
  
  
  x1 = gsub("si vende ","sold by ",x1)
  x1 = gsub("trovasi ","sold by ",x1)
  x1 = gsub("catalogues to be had at the place of sale ","sold by ",x1)
  x1 = gsub("catalogues to be had ","sold by ",x1)
  x1 = gsub("ne se vend qu'à ","sold by ",x1)
  
  
  x1 = gsub("argraphwyd ","argraffwyd ",x1)
  x1 = gsub("argraphedig ","argraffwyd ",x1)
  x1 = gsub("argraphwyd, ","argraffwyd ",x1)
  
  x1 = gsub("argraffwyd ac ar werth ","printed and sold by ",x1)
  x1 = gsub("argraffwyd ac ar","printed and sold by ",x1) 
  x1 = gsub("argraffwyd dros","printed for ",x1)
  x1 = gsub("argraffwyd gan ","printed by ",x1)
  x1 = gsub("argraffwyd yn ","printed by ",x1)
  x1 = gsub("argraffwyd yng ","printed by ",x1)
  x1 = gsub("argraffwyd yn y flwyddyn","printed in the year ",x1) 
  x1 = gsub("argraphedig yn ","printed by ",x1)
  x1 = gsub("ac ar werth yno gan ","printed and sold by ",x1)
 
  
 
  x1 = gsub("argraffwyd yn y flwyddyn","printed in the year ",x1) 
  x1 = gsub("argraphedig yn ","printed by ",x1)
  x1 = gsub("ac ar werth yno gan ","printed and sold by ",x1)

  
  x1 = gsub("de l\'imprimerie ","printed by ",x1)
  
  x1 = gsub("en casa del ","printed by ",x1)
  x1 = gsub("en la imprenta de ","printed by ",x1)
  x1 = gsub("excudebant ","printed by ",x1)
  x1 = gsub("excudebad ","printed by ",x1)
  x1 = gsub("excudebat ","printed by ",x1)
  x1 = gsub("excuderunt ","printed by ",x1)
  x1 = gsub("excudêrunt ","printed by ",x1)
  x1 = gsub("excudit ","printed by ",x1)
  x1 = gsub("excudunt ","printed by ",x1)
  x1 = gsub("excusa ","printed by ",x1)
  x1 = gsub("ex offica ","printed by ",x1)
  x1 = gsub("ex ","printed by ",x1) #??
  x1 = gsub("from the press of ","printed by ",x1)
  x1 = gsub("presso ","printed by ",x1)
  
  
  x1 = gsub("printer ","printed by ",x1) # ?? before field
  x1 = gsub("printers ","printed by ",x1) # ?? before field
  
  x1 = gsub("gedruckt und verlegt bey ","printed by ",x1)
  x1 = gsub("gedrukt tot ","printed at ",x1) #? latin
  
  x1 = gsub("in fletestrete","at fletestrete ",x1)
 
  x1 = gsub("and are to be sold at","sold by at ",x1)  
  
  ############
  
  x1 = gsub("gedruckt bey und zu finden bey","printed by ",x1)
  x1 = gsub("gedruckt bey ","printed by ",x1)
  x1 = gsub("excusum per","printed by ",x1)
  x1 = gsub("imprimés a londres","printed at london ",x1)
  x1 = gsub("trykt hos","printed by ",x1) #danish
  
  

  
  
  x1 = gsub("appresso ","printed by ",x1)
  x1 = gsub("apud ","printed by ",x1)
  x1 = gsub("e prelo ","printed ",x1)
  
  
  x1 = gsub("printed at ","printed by at ",x1)
  x1 = gsub("printed in ","printed by in ",x1)
  x1 = gsub("printed from ","printed by ",x1)

  x1 = gsub("be ropert lekpreuik","printed by ropert lekpreuik",x1)
  x1 = gsub("VVinandi de VVorde","Winandi de Worde",x1)
  x1 = gsub("In edibus","In ædibus",x1)
  x1 = gsub("In ædibus ","printed by ",x1)
  
  x1 = gsub("gan ","printed by ",x1) #argraphwyd
  
  x1 = gsub("typis ","printed by ",x1) #argraphwyd
  x1 = gsub("gedrukt ","printed by ",x1) #? latin
  
  x1 = gsub("printed and sold, ","printed and sold by ",x1) 
  
  #x1 = gsub("sold ","printed by ",x1) #argraphwyd
  
  #x1 = gsub("printed and sold at ","printed and sold by at ",x1)
  #x1 = gsub(" and sold by ","and sold by ",x1)
  #x1 = gsub(" , and sold at "," and sold by at ",x1)

  #for(ind2 in 1:length(x1)){
  #  if(!grepl("sold by ",x1[ind2]) & grepl(" and sold",x1[ind2])){
  #    x1[ind2] = gsub(" and sold, "," sold by ",x1[ind2])
  #    x1[ind2] = gsub("; and sold "," sold by ",x1[ind2])
  #x1 = gsub("printed for, and sold ","printed for and sold by ",x1)
  #x1 = gsub("printed for and sold ","printed for and sold by ",x1)
  #  }
  #}

  #if first words are for or by -> printed for or printed by  
  for(ind2 in 1:length(x1)){
      s1=strsplit(x1[ind2],' ')
      first_l=s1[[1]][1]
      if (grepl("by",first_l)==TRUE) {
          x1[ind2]=gsub("by ","printed by ",x1[ind2]) 
      }
  }
  for(ind2 in 1:length(x1)){
    s1=strsplit(x1[ind2],' ')
    first_l=s1[[1]][1]
    if (grepl("for",first_l)==TRUE) {
      x1[ind2]=gsub("for ","printed for ",x1[ind2]) 
    }
  }
  
  
  
  

  # Search for special fields: 
  #Splits every string in vector x1 by last column of c if found else second last then third last until found.
  #for example:
  #str="printed by wilson, spence, and mawman; sold by g. g. j. and j. robinson, t. cadell, b. white, j. robson, and j. murray, london; and by all the booksellers in york"   
  #pick_print_fields(str,c(" by ",", and ")) 
  #"mawman; sold by g. g. j. and j. robinson, t. cadell, b. white, j. robson"
  #pick_print_fields(str,c(" by ","not exist")) 
  #"wilson, spence, and mawman; sold ..."

  #x1 = gsub("printer,","printer ",x1) #argraphwyd
  
  for(ind22 in 1:length(x1)){
    x1[ind22] = gsub("printer,","printer ",x1[ind22]) #argraphwyd
    
    if(grepl('printer',x1[ind22],)==TRUE) {
      x1[ind22]=paste("printed by ",x1[ind22])     
    } 
  }
  x1 = gsub("sold at ","sold by at ",x1)
  x1 = gsub("sold in ","sold by at ",x1)
  x1 = gsub("sold only in ","sold by at ",x1)
  x1 = gsub("sold together with ","sold by at ",x1)
  
  x1 = gsub("printed ","printed by ",x1) #?
  
    
  xsoldby <- sapply(pick_print_fields(x1, c("sold by ","printed and sold by ","printed for and sold by ","printed for sold by ")), function (x) {x}) 
                    #"sold at the "
  xby <- sapply(pick_print_fields(x1, c("printed by ","printed and sold by ","printed by and for ","printed for and by")), function (x) {x})
  xfor <- sapply(pick_print_fields(x1, c("printed for ","printed for and sold by ","printed by and for ","printed for sold by ","printed for and by")), function (x) {x})
  xreprint <- sapply(pick_print_fields(x1, c("reprinted ")), function (x) {x})
  
  
  #Check for more specific rules:
  for(ind2 in 1:length(x1)){
    # Check if there is no sold by and printed by then by and for is accepted as [printed by]
    if(is.na(xsoldby[ind2]) & is.na(xby[ind2])){
      xby[ind2]=pick_print_fields(x1[ind2],' by ') 
      xfor[ind2]=pick_print_fields(x1[ind2],' for ')
      
      #if [printed by] is not empty and contains also "for"
    } 
  }
  
  for(ind2 in 1:length(x1)){
    if(!is.na(xby[ind2]) & is.na(xfor[ind2])) {
      #if next is number not accept this rule
      word1=strsplit(xfor[ind2],' ')[[1]][1]
      word1=gsub(",","",word1) 
      if(!is.na(suppressWarnings(as.numeric(word1)))==TRUE) {
          xfor[ind2]=NA
          next
      }
      text=xby[ind2]
      
      #the part before is only printed for; so the end part is removed
      xby[ind2]=strsplit(text,'for ')[[1]][1] #!grepl("printed for and sold by ",x1[ind2]) & 
    } 
  }
  
  for(ind2 in 1:length(x1)){
    if(!is.na(xfor[ind2]) & is.na(xsoldby[ind2])) {
      #if [for] is not empty and contains also " sold by"
      xfor[ind2]=pick_print_fields(x1[ind2],' for ')
      text=xfor[ind2]
      #the part before is only printed for; so the end part is removed
      xfor[ind2]=strsplit(text,' sold by ')[[1]][1]
    } 
  }
  
  
  #removes if last character is ","
  xfor=remove_ending_chars(xfor)
  xby=remove_ending_chars(xby)
  xsoldby=remove_ending_chars(xsoldby)
  
  #splitting xfor into xfor_1st and xfor_at
  output=split_doer_and_place(xfor)
  xfor_at=output$x_place
  xfor_1st=output$x_doer
  
  #splitting xby into xby_1st and xby_at
  output2=split_doer_and_place(xby)
  xby_at=output2$x_place
  xby_1st=output2$x_doer
  
  #splitting xfor into xby_1st and xby_at
  output3=split_doer_and_place(xsoldby)
  xsoldby_at=output3$x_place
  xsoldby_1st=output3$x_doer
  

  #remove ending "and" "," or ";"
  for(ind2 in 1:length(xfor)){
    xfor_1st[ind2]=remove_ending_chars(xfor_1st[ind2])  
  }
  
  for(ind2 in 1:length(xfor_1st)){
    xfor_1st[ind2]=remove_ending_chars(xfor_1st[ind2])  
  }
  
  for(ind2 in 1:length(xby)){
    xfor_1st[ind2]=remove_ending_chars(xfor_1st[ind2])  
  }
  for(ind2 in 1:length(xby_1st)){
    xfor_1st[ind2]=remove_ending_chars(xfor_1st[ind2])  
  }
  
  #create final dataframe
  xorig[xorig == ""] <- NA
  x1[x1 == ""] <- NA
  
  xrest <- xorig
  xrest2 <- x1
  
  #xrest2 <- tolower(xorig)
  
  xrest[which(!is.na(xfor) | !is.na(xby) | !is.na(xsoldby)| !is.na(xreprint))] <- NA
  xrest2[which(!is.na(xfor) | !is.na(xby) | !is.na(xsoldby)| !is.na(xreprint))] <- NA
  
  
  #for(ind2 in 1:length(rest2)){
   # if(!is.na(xrest2[ind2])) {
      #if [for] is not empty and contains also " sold by"
      
      #  xfor[ind2]=pick_print_fields(x1[ind2],' for ')
      #text=xfor[ind2]
      #the part before is only printed for; so the end part is removed
      #xfor[ind2]=strsplit(text,' sold by ')[[1]][1]
    #} 
  #}
  
  
  
  res <- list(original = xorig, original_mod=x1,printedfor = xfor,
              printedfor_doer = xfor_1st,printedfor_place = xfor_at, 
              printedby = xby, printedby_doer = xby_1st,
              printedby_place = xby_at, 
              soldby=xsoldby, soldby_doer = xsoldby_1st, 
              soldby_place = xsoldby_at, 
              reprinted=xreprint,
              rest = xrest,
              rest2 =xrest2)
  as.data.frame(res)

}





