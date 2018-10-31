
# Paper consumption

# This could be improved - varies in time !
  printrun <- 1000

# TODO add later elsewhere?
message("Add estimated paper consumption")
    # Estimated print run size for paper consumption estimates

# Paper consumption in sheets
# (divide document area by standard sheet area
    sheet.area <- subset(sheet_sizes(), format == "sheet")$area
    df.preprocessed <- mutate(df.preprocessed,
            paper = printrun * (pagecount/2) * (width * height)/sheet.area)

  }

# -----------------------------------------

    message("Add estimated print area")
    df.preprocessed <- mutate(df.preprocessed,
            print_area = (pagecount/2) * (width * height)/sheet.area)


# -------------------------------