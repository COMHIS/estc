tab <- NULL
if (length(hits) > 0) {
  hits <- hits[names(which(sapply(hits, function (x) {nrow(x) > 0})))]
  for (place in names(hits)) {
    print(place)
    tmp <- hits[[place]][, c(1:3, 5:19, 4)]
    tmp$modification.date <- NULL
    tmp$feature.class <- NULL
    tmp$feature.code <- NULL
    tmp$cc2 <- NULL
    tmp$admin3 <- NULL
    tmp$admin4 <- NULL
    tmp$elevation <- NULL
    tmp$dem <- NULL
    tmp <- unique(tmp)  	  
    tab <- rbind(tab, cbind(ESTC = rep(place, nrow(hits[[place]])), tmp))
  }
}

print("Write missing hits")
write.table(tab, file = paste(output.folder, "missinggeocoordinates.csv", sep = ""), quote = F, row.names = F, sep = "\t")

