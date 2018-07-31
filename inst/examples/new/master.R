# common.R start point

# note: order matters
process_language.R  # Indepdedent / Runs through with test set
process_dimension.R # Indepdedent / Runs through with test set
process_pagecount.R # Depends: physical_dimension / Runs through with test set
author_name -> Mark Hill
publisher   -> Ville
editions    -> Ali
publication_place, subject_geography, publication_geography -> Iiro Tiihonen

# Remaining fields - trivial
control_number 
system_control_number
row.index 
original_row
estc_control_number

# To be transferred
publication_time, publication_frequency, publication_interval 
author_date
title, title_uniform, title_uniform2 
subject_topic, publication_topic
note_dissertation, corporate
note_granter

# To be done
-> Many other fields available in ESTC; see the Excel plan and MARC files

# ---------------------------------------------------

# TODO: After all -> pick these and complete for udpated workflow
enrich.R
combine.R
validate.R
analyses.R
