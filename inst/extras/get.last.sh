wget http://www2.census.gov/topics/genealogy/1990surnames/dist.all.last
cut -d " " -f 1 dist.all.last > last.csv
gzip last.csv
mv last.csv.gz ../extdata/names/lastnames/

