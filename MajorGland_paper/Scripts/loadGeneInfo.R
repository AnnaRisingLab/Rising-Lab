


library(tidyverse)





## Load geneInfo file 

select = dplyr::select
rename = dplyr::rename

getGeneInfoFull  <- function(repositoryPath){
  geneInfo = getGeneInfo(repositoryPath = repositoryPath)
  geneInfo = addGOIinfo(repositoryPath = repositoryPath, geneInfo = geneInfo)
  geneInfo = addscGeneInfo(geneInfo = geneInfo)
  
  
}

getLascID <- function(repositoryPath,
                      lascIDFile = "annotation/Lsc.v1.1.geneInfo.lascID"){
  
  fullPath = paste(repositoryPath, lascIDFile, sep = "/")
  lascInfo = read_tsv(fullPath)
  return(lascInfo)
}


getGeneInfo <- function(repositoryPath,
                        geneInfoFile = "annotation/Lsc.v1.1.geneInfo.gff.tsv",
                        productFile = "annotation/Lsc.v1.1.geneInfo.product.tsv",
                        lascIDFile =  "annotation/Lsc.v1.1.geneInfo.lascID"){
  geneInfo = read_tsv(paste(repositoryPath, geneInfoFile, sep = "/"), guess_max = 10000) 
  
  if(!is.na(productFile)){
    geneInfo.product = read_tsv(paste(repositoryPath, productFile, sep = "/"))
  }
  geneInfo = inner_join(geneInfo, geneInfo.product)
  if(!is.na(lascIDFile)){
    lascID = getLascID(repositoryPath = repositoryPath, lascIDFile =lascIDFile )
    geneInfo = inner_join(geneInfo, lascID) %>%
      mutate(geneName = replace(x = geneName, list = is.na(geneName), values = lascID[which(is.na(geneName))]))
  }
  return(geneInfo)
  
}


addGOIinfo <- function(geneInfo, repositoryPath,
                       SpiceGenesFile = "annotation/Lsc.v1.0.SPICEgeneInformation.tsv",
                       SpidroidsGeneFile = "annotation/Lsc.v1.0.SpidroingeneInformation.tsv",
                       CarbonicAcidsGeneFile = "annotation/Lsc.v1.0.CarbonicanhydrasegeneInformation.tsv"
){
  GOI <- data.frame(matrix(ncol = 4, nrow = 0))
  
  if(!is.na(SpiceGenesFile)){
    fullPath = paste(repositoryPath, SpiceGenesFile, sep = "/")
    SpiceGenes = read_tsv(fullPath)
    SpiceGenes %>%
      rename(gene_id = "makerids")  %>%
      mutate(geneName_GOI = paste("Spice", 1:nrow(SpiceGenes), sep = "_")) ->
      SpiceGenes
    if(nrow(GOI) == 0){
      GOI =SpiceGenes 
      
    }else{
      GOI = bind_rows(SpiceGenes, GOI) 
      
    }
    
  }
  if(!is.na(SpidroidsGeneFile)){
    fullPath = paste(repositoryPath, SpidroidsGeneFile, sep = "/")
    SpidroidsGene = read_tsv(fullPath)%>%
      rename(gene_id = "makerids") %>%
      rename(geneName_GOI = "Gene Name") %>%
      rename(Nephila_genome_Class = "Spidroin Class") 
    if(nrow(GOI) == 0){
      GOI =SpidroidsGene 
      
    }else{
      GOI = bind_rows(SpidroidsGene, GOI) 
      
    }
  }
  if(!is.na(CarbonicAcidsGeneFile)){
    fullPath = paste(repositoryPath, CarbonicAcidsGeneFile, sep = "/")
    
    CarbonicAcidsGene = read_tsv(fullPath)%>%
      rename(gene_id = "makerids") %>% 
      rename(geneName_GOI = "Gene Name") %>%
      rename(Nephila_genome_Class = "CAH Class") %>%
      mutate(geneName_GOI = gsub(pattern = "Gene", replacement = "CaAn_", x = geneName_GOI)) 
    if(nrow(GOI) == 0){
      GOI =CarbonicAcidsGene 
      
    }else{
      GOI = bind_rows(GOI,CarbonicAcidsGene) 
    }
  } 
  
  
  geneInfo = left_join(geneInfo,GOI) %>%
    mutate(geneName = replace(geneName, !is.na(geneName_GOI), geneName_GOI[!is.na(geneName_GOI)]))
  return(geneInfo)
  
}

getGene2Term  <- function(geneInfo, repositoryPath,
                          gene2termFile = "annotation/Lsc.v1.1.geneInfo.gene2term.tsv"){
  fullPath = paste(repositoryPath, gene2termFile, sep = "/")

  gene2TermInfo = read_tsv(fullPath) 
  geneInfo = left_join(geneInfo,gene2TermInfo)
  return(geneInfo)
  
} 


getGOinfo <- function(geneInfo, repositoryPath ,
                      GOinfoFile = "annotation/Lsc.v1.1.geneInfo.GOterm.tsv"){
  
  fullPath = paste(repositoryPath, GOinfoFile, sep = "/")
  GOinfo = read_tsv(fullPath)
  geneInfo = left_join(geneInfo,GOinfo)
  
} 

getGeneOrthology <- function(geneInfo, repositoryPath , 
                             GeneOrthologyFile = "annotation/Lsc.v1.0.geneInfo.orthogroup.tsv"){
  
  fullPath = paste(repositoryPath, GeneOrthologyFile, sep = "/")
  GeneOrthologyInfo = read_tsv(fullPath) %>%
    select(gene_id, Orthogroup,LSc_Predicted_Functions,FunctionsfromAllOrganism) 
  geneInfo_full = left_join(geneInfo,GeneOrthologyInfo)
  return(geneInfo_full)
}

addscGeneInfo <- function(geneInfo){
  geneInfo = addscGeneName(geneInfo)
  geneInfo = addscGeneID(geneInfo)
  return(geneInfo)
  
}

addscGeneName <- function(geneInfo){
  geneInfo %>%
    mutate(scGeneName = geneName) %>%
    mutate(scGeneName = gsub(pattern = "tret1_2","tret1--2", scGeneName)) %>%
    mutate(scGeneName = gsub(pattern = "lap_2","lap--2", scGeneName)) %>%
    mutate(scGeneName = gsub(pattern = "_","-", scGeneName)) ->
    geneInfo
  return(geneInfo)
  
  
}
addscGeneID <- function(geneInfo){
  geneInfo %>%
    mutate(sc_gene_id = gsub(pattern = "_","-", gene_id)) ->
    geneInfo
  return(geneInfo)
}




addFCinfo <-function(geneInfo, repositoryPath,
                     fcFile = "annotation/Lsc.v1.1.geneInfo.featureCount.csv"){
  fcFile = paste(repositoryPath, fcFile, sep = "/")
  
  
  featureCountInfo = read_csv(fcFile) %>%
    geneInfo = inner_join(geneInfo,featureCountInfo)
  return(geneInfo)
}


addTranscriptInfo <- function(geneInfo, repositoryPath, 
                              transcriptFile = "annotation/Lsc.v1.1.transcriptInfo.csv"){
  transcriptFile = paste(repositoryPath, transcriptFile, sep = "/")
  
  transcriptInfo = read_csv(transcriptFile) %>% select(gene_id,lascID, tx_name,nexon,tx_len)
  geneInfo = inner_join(geneInfo,transcriptInfo)
  return(geneInfo)
}

addTranscriptInfo2 <- function(geneInfo, repositoryPath, 
                               transcriptFile = "annotation/Lsc.v1.1.transcriptInfo.csv"){
  transcriptFile = paste(repositoryPath, transcriptFile, sep = "/")
  
  transcriptInfo = read_csv(transcriptFile) %>%
    select(gene_id,lascID, tx_name,nexon,tx_len)
  geneInfo = left_join(geneInfo,transcriptInfo)
  return(geneInfo)
}

getSignalPeptideInfo <- function(repositoryPath,
                                 signalPFile = "annotation/signalP/Lsc.v1.1.SignalP.v6.tsv",geneInfo.transcript){
  term2Gene.signalP = read_tsv(paste(repositoryPath,
                                     signalPFile,
                                     sep = "/"),
                               skip = 1)%>%
    filter(Prediction == "SP") %>%
    rename(tx_name = "# ID") %>% 
    inner_join(geneInfo.transcript)  %>% 
    mutate(Term = "signalP") %>%
    select(Term,geneName) %>%
    distinct()
  return(term2Gene.signalP)
}

getMajorAmpullateGlandProteins <- function(repositoryPath,
                                           file ="annotation/silk.proteins.1.2.csv"){
  path = paste(repositoryPath,file,sep ="/")
  
  proteinsInSilk =read_csv(path)
  getGeneInfoFull(repositoryPath) %>%
    select(gene_id,geneName) %>%
    inner_join(proteinsInSilk)->
    proteinsInSilk
  
  return(proteinsInSilk)
  
  
}

getMajorAmpullateGlandProteinsSC <- function(repositoryPath,
                                             file ="annotation/silk.proteins.1.2.csv"){
  path = paste(repositoryPath,file,sep ="/")
  
  
  proteinsInSilk =read_csv(path)
  getGeneInfoFull(repositoryPath) %>%
    select(gene_id,geneName,scGeneName) %>%
    inner_join(proteinsInSilk)->
    proteinsInSilk
  
  return(proteinsInSilk)
  
  
}

