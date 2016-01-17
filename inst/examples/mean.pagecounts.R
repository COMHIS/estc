print("Average pagecounts")
mean.pagecounts.multivol <- mean_pagecounts_multivol(df) 
mean.pagecounts.univol <- mean_pagecounts_univol(df) 
mean.pagecounts.issue <- mean_pagecounts_issue(df) 
mean.pagecounts <- full_join(mean.pagecounts.univol, mean.pagecounts.multivol, by = "doc.dimension")
mean.pagecounts <- full_join(mean.pagecounts, mean.pagecounts.issue, by = "doc.dimension")
mean.pagecounts$doc.dimension <- factor(mean.pagecounts$doc.dimension, levels = levels(mean.pagecounts.univol$doc.dimension))
write.table(mean.pagecounts, file = paste(output.folder, "estimated_page_counts.csv", sep = ""), quote = F, row.names = F, sep = ",")

