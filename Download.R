

#1.Load Package
library(rentrez)


#2.
ncbi_ids <- c("HQ433692.1","HQ433694.1","HQ433691.1") #create an object
?entrez_fetch #
Bburg<-entrez_fetch(db = "nuccore", id = ncbi_ids, rettype = "fasta") #object with...
Bburg


#3.
?strsplit()


Split<-strsplit(Bburg, ">" )
Split



#5.Export modified dataset as csv
write.csv(Split, "Sequences.csv")
