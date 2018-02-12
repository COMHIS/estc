library(devtools)
load_all()

source("get_publisher_functions.R")
source("get_publisher_tokens_functions.R")
# locations_accepted <- read.csv("inst/extdata/publisher_locations.csv",
#                                header = TRUE, stringsAsFactors = FALSE)$location
publisher_location_table <- read.csv("inst/extdata/publisher_locations.csv", header = TRUE, stringsAsFactors = FALSE)
tokentype_data <- read.csv("inst/extdata/tokentype_data.csv", header = TRUE, stringsAsFactors = FALSE)
fullstop_keeplist <- as.character(read.csv("inst/extdata/tokens_keep_fullstop.csv")$tokens)

publisher_strings <- as.character((readRDS(file = "~/projects/comhis/data-output-temp/testdata_estc.RDS"))$publisher)
# pubdata <- readRDS(file = "~/projects/comhis/data-output-temp/testdata_estc.RDS")
# sold_at_set <- estc_df[grepl("sold at", estc_df$publisher), ]$publisher
# estc_df <- readRDS(file = "~/projects/comhis/data-output-temp/testdata_estc.RDS")

test_pub_string <- function(publisher_string, reload_funcs = TRUE) {
  if (reload_funcs) {
    source("get_publisher_functions.R")
    source("get_publisher_tokens_functions.R")
    # locations_accepted <- read.csv("inst/extdata/publisher_locations.csv",
    #                                header = TRUE, stringsAsFactors = FALSE)$location
    publisher_location_table <- read.csv("inst/extdata/publisher_locations.csv", header = TRUE, stringsAsFactors = FALSE)
    tokentype_data <- read.csv("inst/extdata/tokentype_data.csv", header = TRUE, stringsAsFactors = FALSE)
    fullstop_keeplist <- as.character(read.csv("inst/extdata/tokens_keep_fullstop.csv")$tokens)
  }
  cleaned_publisher_string <- clean_publisher_datastring(publisher_string)
  tokens <- tokenize_publisher_string(cleaned_publisher_string, fullstop_keeplist)
  print(tokens)
  tokens_and_types <- get_tokens_types(tokens, tokentype_data)
  verbs <- get_verbs(tokens_and_types, publisher_location_table)
  verbs_final <- add_verbs_actors(verbs, publisher_location_table)
  verbs_final_filtered <- filter_pubdata_actors(verbs_final)
  verbs_df <- get_verbs_df(verbs_final_filtered, publisher_string)
  View(verbs_df)
  # return(verbs_df)
}


# working:
publisher_string <- "printed by E[dward]. G[riffin]. for W.L. 1647. Reprinted by E. Curll"
publisher_string <- "printed for C. Dilly, in the Poultry; H. Murray, Fleet-Street; and Vernor and Hood, Birchin-Lane, Cornhill, London; and sold by W. Tesseyman, York, and the booksellers of Oxford, Cambridge, Edinburgh, &c"
publisher_string <- "printed for T. and J. Egerton, Charing Cross"
publisher_string <- "printed by Messrs. Moncrieffe, Jenkin, White, Burnet, Burton, Byrne, H. Whitestone, Heery and Davis"
publisher_string <- "Printed for William Creech; and sold by T. Cadell, and T. Longman, London"
publisher_string <- "Printed for J. Brindley at the King's-Arms in New-Bond-Street; and sold by J. Roberts in Warwick-Lane; J. Wilford behind the Chapter-House, near St. Paul's; E. Nutt under the Royal-Exchange; and A. Dodd without Temple-Bar"
publisher_string <- "printed for the author, and sold by C. Nourse, in the Strand"
publisher_string <- "printed for R. Moncrieff, Bookseller, in Capel-Street"
publisher_string <- "printed by and for T. Gardner, at Cowley's Head' without Temple-Bar"
publisher_string <- "printed by J. Bentham, Printer to the University; and sold by William Thurlbourn Bookseller at Cambridge, and R. & J. Dodsley in Pall-Mall, London"
publisher_string <- "printed for W. Owen, near Temple-Bar, and J. Leake, and J. Frederick, at Bath"
publisher_string <- "printed by G. Ireland, for G. Robinson, in Pater-Noster-Row, and T. Cadell, in the Strand, London"
publisher_string <- "printed for W. Lowndes, J. Nichols S. Bladon, and W. Nicholl"
publisher_string <- "printed for the author, and sold by W. and J. Mount and T. Page, on Tower-Hill"
publisher_string <- "printed for G. G. and J. Robinson, Pater-Noster-Row"
publisher_string <- "printed for G. G. J. and J. Robinson, No. 25, Pater-Noster-Row"
publisher_string <- "printed by Alex. Donaldson and John Reid. For Alexander Donalson"
publisher_string <- "printed and sold by J. Salter. Sold also by Messrs. Robinsons, No. 25, Paternoster-Row, London; Mr. Wood, Shrewsbury; Mr. Poole, Chester; Mr. Wright, Whitchurch; Mr. Hughes, Wrexham; Mr. Maddox, Ellesmere; and Mr. O. Jones, Welsh-Pool; and Mr. Thomas, Ludlow"
publisher_string <- "printed for T. Cadell, B. White, T. Payne. P. Elmsley, J. Walter, and J. Debrett"
publisher_string <- "printed for A. Ward, in Little-Britain, R. Hett, in the Poultry, S. Birt and B. Dod in Ave-Mary-Lane"
publisher_string <- "printed by J. Bentham, Printer to the University; and sold by William Thurlbourn Bookseller at Cambridge, and R. & J. Dodsley in Pall-Mall, London"
publisher_string <- "printed for the author; and sold by G. G. J. and J. Robinson, Paternoster-Row"
# Junior & senior
publisher_string <- "Printed by James Hoey Sen. and James Hoey Jun. at the Mercury in Skinner-Row"
publisher_string <- "printed for T. Carnan and F. Newbery, jun., at No. 65, in St. Paul's Church Yard"
publisher_string <- "Printed by Hamilton, Balfour, and Neill, for W. Gray Junior"
publisher_string <- "printed for S. Powell, P. and W. Wilson, J. Exshaw, H. Bradley, J. Potts, D. Chamberlaine, W. Sleator, H. Saunders, S. Watson, J. Williams, J. Hoey, Jun. J. Porter, and T. Walker"
publisher_string <- "printed by W. Sands, A. Murray, and J. Cochran. For William Gray junior. Sold by G. Crawfurd, W. Gordon, and J. Brown, Edinburgh; J. Barry, Glasgow; and T. Glas, Dundee"
# in the year
publisher_string <- "printed in the year M.DCC.LXXVI. And sold by the booksellers of London and Bath"
publisher_string <- "Printed in the year MDCCLIX. For Robert Sayer, opposite Fetter-Lane, Fleet-Street"
publisher_string <- "Printed in the year"
# now working
publisher_string <- "printed for J. Bew"
publisher_string <- NA
publisher_string <- "sold by J. Roberts, near the Oxford Arms in Warwick lane"
publisher_string <- "sold at the Bible and Heart, in Cornhill"
publisher_string <- "printed, and sold Benj. Bragge"
publisher_string <- "re-printed at the Old Post Office in Fish shamble street"
publisher_string <- "printed for Thomas Ewing, and William Smith"
publisher_string <- "reprinted"
publisher_string <- "printed for M. Cooper, at the Globe, in Pater noster Row"
publisher_string <- "Printed by T. Bensley, London"
# location filtering bug
publisher_string <- "printed for J. Lackington, Chiswell street, Finsbury square, Moorfields"
# location not detected correctly
publisher_string <- "Sold at no. 3. Moors-court-catharine, Wheel alley [sic], White chapel"
# location not detected correctly 3
publisher_string <- "printed by S. Powell, for G. and A. Ewing, and W. Smith, in Dame-Street and G. Faulkner, in Essex-Street, Booksellers"
# location not detected correctly 2
publisher_string <- "printed for D. Browne, without Temple-Bar A. Millar, in the Strand J. Whiston and B. White, in Fleet-Street R. and J. Dodsley, in Pall-Mall and W. Sandby, in Fleet-Street"
# bug with location detection: St. Paul's Church-Yard Deighton
publisher_string <- "printed by T. Bloom; and sold by J. Johnson, St. Paul's Church-Yard J. Deighton, Holborn, London; and by the booksellers in Cambridge, Oxford and Canterbury"
publisher_string <- "printed by W. Wilkins, at the Dolphin in Little-Britain"
publisher_string <- "printed by David Paterson, and sold by him at his printing-office, lawn-market; and by the booksellers"
# [location] printed
publisher_string <- "Dublin printed: London reprinted, and sold by T. Cooper; and A. Dodd"
publisher_string <- "Dublin printed. London: re-printed for A. Moore"
publisher_string <- "London printed, and Dublin re-printed for James Kelburn"
# successor to x
publisher_string <- "Printed for the author. And sold by J. Scatcherd and I. Whitaker, successor to E. Johnson, Ave-Mary-Lane"
# successor to
publisher_string <- "printed by H. Reynell, (successor to the late Mr. Towers,)"
publisher_string <- "printed for F. Wingrave, successor to Mr. Nourse"
publisher_string <- "printed for John Churchill (executor of Charles Churchill) and William Flexney"

# test:
# initial without dot
publisher_string <- "printed for A. Millar, at Buchanan's Head, over-against St. Clement's Church in the Strand; and sold by J Roberts at the Oxford-Arms in Warwick-Lane"

# not working:
# Son
publisher_string <- "printed for T. Longman, B. Law and Son, H. Baldwin, C. Dilly, G. G. and J. Robinson, T. Cadell, J. Nichols, F. and C. Rivington, W. Goldsmith, H. Murray, W. Otridge, W. Lowndes, S. Hayes, R. Faulder, G. and T. Wilkie, P. Macqueen, B. Collins, Hookham and Carpenter, Darton and Harvey, Vernor and Hood, Cadell jun. and Davies, and R. Jameson"
# [location] printed - also refers to person with same verb
publisher_string <- "London printed for J. Tonson, 1706. Dublin: printed for M. Gunne, Bookseller in Essex-Street"
# printed in [location] for
publisher_string <- "London printed: and re-printed in Dublin, for G. Risk"
# x and company
publisher_string <- "Printed for T. Lowndes, in Fleet-street; T. Davies, in Russel-street, Covent-Garden; T. Becket and P.A. De Hondt, in the Strand; F. Newbery, at the Corner of Ludgate-street; and Mess. Carnan and Newbery, in St. Paul's Church Yard, London; W. Jackson, in Oxford; and A. Kincaid, and Company, in Edinburgh"
# assigns of x
publisher_string <- "In the Savoy: printed by Eliz. Nutt and R. Gosling, (assigns of Edw. Sayer, Esq;) for J. Walthoe, R. Gosling, W. Innys, J. Osborn and T. Longman, J. Hooke, B. Williamson, A. Ward, D. Browne, and T. Osborn"
# lost token
publisher_string <- "W. J[ones,] sold by ["
# Error
publisher_string <- "printed for John Whiston, and Charles Bathurst; Lockyer Davis; Benjamin White; and John Nichols (successor to W.Bowyer)"
publisher_string <- "printed for J. Mozley, Gainsbrough"

# -----------------------
# method 2
# -----------------------
test_pub_string(publisher_string)


# -----------------------
# method 1
# -----------------------
print(publisher_string)
cleaned_publisher_string <- clean_publisher_datastring(publisher_string)
print(cleaned_publisher_string)

tokens <- tokenize_publisher_string(cleaned_publisher_string, fullstop_keeplist)
print(tokens)

tokens_and_types <- get_tokens_types(tokens, tokentype_data)
print(tokens_and_types)

verbs <- get_verbs(tokens_and_types, publisher_location_table)
verbs_final <- add_verbs_actors(verbs, publisher_location_table)
verbs_final_filtered <- filter_pubdata_actors(verbs_final)
verbs_df <- get_verbs_df(verbs_final_filtered, publisher_string)
View(verbs_df)
