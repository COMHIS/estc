library(knitr)
knit("tutorial.Rmd")
knit("Rhelp.Rmd")

library(rmarkdown)
rmarkdown::render("tutorial.Rmd")
