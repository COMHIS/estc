# common.R start point

# note: order matters
# process_dimension.R # Indepdedent / Runs through with test set -> now migrating to COMHIS/estc-physicaldimension
process_pagecount.R # Depends: physical_dimension / Runs through with test set

process_language.R  # Indepdedent / Runs through with test set
process_publication_time.R # Independent / finalize
process_publication_frequency.R # Independent / finalize
process_publication_interval.R # Independent / finalize
process_subject_topic.R # Independent / finalize
process_publication_topic.R # Independent / finalize
process_note_dissertation.R # Independent / finalize
process_corporate.R # Independent / finalize
process_note_granter.R # Independent / finalize
process_generic.R # Trivial: control_number, system_control_number; TODO: add other simple ones
author_name, author_date? -> Mark Hill; will add author_date; how about pseudonyms -> someone could add based on our earlier code
publisher   -> Ville
editions, title, title_uniform, title_uniform2     -> Ali; does this include titles as well, and which fields exactly?
publication_place, subject_geography, publication_geography -> Iiro Tiihonen
# Can be removed? row.index, original_row

# TODO
-> Many other fields available in ESTC; see the Excel plan and MARC files
# After all -> pick these and complete for udpated workflow
enrich.R
combine.R
validate.R
analyses.R
Rename files to be more exact and informative
Gitlab vs Github -> migrate all
paper per single copy is not in dimension info + pagecount info now - add the necessary enrichments
