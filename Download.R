
#Assignment 3 R Markdown 
###January 24, 2018
###Sehaj Raina


#1.Load Package
library(rentrez)


#2. Fetch specific DNA sequences fom NCBI 
ncbi_ids <- c("HQ433692.1","HQ433694.1","HQ433691.1") #Create a vector containing a string of ncbi I.Ds of DNA sequences for different strains of the 16S gene of Borrelia burgdorferi
Bburg<-entrez_fetch(db = "nuccore", id = ncbi_ids, rettype = "fasta") #Create an object that contains the DNA sequences using entrez_fetch function which looks for the specified I.Ds from the previous vector (ncbi_ids) and fetches it from the database (db) nuccore, specifically in the FASTA file format
Bburg


#3. Split the extracted data into 3 components (1 sequence per strain)
Split<-strsplit(Bburg, ">" ) #The function splits the data in Bburg into a separate component at every ">" character
Split


#5.Export modified dataset as csv
write.csv(Split, "Sequences.csv")
