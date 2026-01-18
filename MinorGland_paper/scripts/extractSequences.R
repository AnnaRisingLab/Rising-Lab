library(Biostrings)

s = readDNAStringSet("~/Box/bridgeSpider/sequences/Lsc.v1.0.genes.fa")

mRNANames  = names(s)

loc1 = grep(pattern = "evm-000223F-processed-gene-10.9", x = mRNANames)
loc3 = grep(pattern = "evm-000033F-processed-gene-24.21-GeneA", x = mRNANames)
loc2 = grep(pattern = "maker-000267F-exonerate_protein2genome-gene-10.6", x = mRNANames)
selection = s[c(loc1,loc2,loc3)]


writeXStringSet(selection, "~/Box/bridgeSpider/sequences/Lsc.v1.0.genes.selection.fa",
                append=FALSE,
                compress=FALSE,
                compression_level=NA, format="fasta")



readDNAMultipleAlignment("~/Box/bridgeSpider/Phylogenetic_Analysis/Spidroin_NT/NT_usedforRaxML_aligned.fasta",
                         format = "stockholm")



file<-read.table("~/Box/bridgeSpider/Phylogenetic_Analysis/Spidroin_NT/NT_usedforRaxML_aligned.fasta",
                 dec=".",sep="\t",header=FALSE);

file = file[-1,]

df = data.frame(p1 = file[c(1:159)],p2 = file[c(160:318)],p3 =  file[c(319:477)])  

dim(file)
file[c(2:(159*3+1)),1]

dim(file)
