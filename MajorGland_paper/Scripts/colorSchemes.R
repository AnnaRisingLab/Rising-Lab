library(RColorBrewer)
library(ggsci)
library(viridis)

glands = c( "Aggregate","Aggregate duct","Major","Minor","Pyriform","Flagelliform","Tubuliform","Aciniform","OtherTissue")




glandColor = c(Major = "#FFD700FF",
               Minor = "#FFB14EFF",
               Flagelliform = "#FA8775FF",
               Aggregate = "#FF91C4FF",
               AggregateDuct = "#FF91C488",
               Tubuliform = "#C935B5FF",
               AciniPyri = "#FF84FFFF",
               Pyriform = "#7142FFFF",
               Aciniform = "#FF84FFFF",
               OtherTissue = "#BBBBBB33")

names(glandColor)[5] = "Aggregate duct"


majorColorsSCNames = c("Tail_1",
                       "Tail_2",
                       "Tail_3",
                       "Inbetween",
                       "Sac_A",
                       "Sac_B",
                       "Sac_C",
                       "Inbetween2",
                       "Duct_1",
                       "Duct_2")


majorColorsSC = c("#440154FF",
                           "#482878FF",
                           "#3E4A89FF",
                           "#31688EFF",
                           "#26828EFF",
                           "#1F9E89FF",
                           "#35B779FF",
                           "#6DCD59FF",
                           "#B4DE2CFF",
                           "#FDE725FF")

majorColorsSCNames = c("Tail_1",
                           "Tail_2",
                           "Tail_3",
                           "Inbetween",
                           "Sac_A",
                           "Sac_B",
                           "Sac_C",
                           "Inbetween2",
                           "Duct_1",
                           "Duct_2")
 

library(RColorBrewer)
p1 = RColorBrewer::brewer.pal(n = 9, name = "Pastel1")



pal_pastel1 = c("#FDDAEC99",
                           "#FDDAEC99",
                           "#CCEBC577",
                           "#FBB4AE99",
                           "#B3CDE399",
                           "#FED9A699",
                           "#DECBE499",
                           "#FFFFCCFF",
                           "#F2F2F244")

names(pal_pastel1) = glands


pal_pastel2 = c("#FDDAECFF",
                           "#FDDAECFF",
                           "#CCEBC5FF",
                           "#FBB4AEFF",
                           "#B3CDE3FF",
                           "#FED9A6FF",
                           "#DECBE4FF",
                           "#FFFFCCFF",
                           "#F2F2F244")


#install.packages("paletteer")


pal_pastel1 = c(Minor = "#FDDAECFF",
                "Aggregate duct" = "#D2D2D2FF",
                Major = "#CCEBC5FF",
                Flagelliform =  "#FBB4AEFF",
                Tubuliform =  "#B3CDE3FF",
                Aciniform  =  "#FED9A6FF",
                Aggregate = "#DECBE4FF",
                Pyriform =  "#FFFF77FF",
                Other = "#F2F2F244")                           

pal_pastel2 = c(Minor = "#FD9AECFF",
                "Aggregate duct" =  "#D2D2D2FF",
                Major =  "#CCEBC5FF",
                Flagelliform =  "#FBB4AEFF",
                Tubuliform =  "#738DC3FF",
                Aciniform  =     "#FED9A6FF",
                Aggregate =          "#DECBE4FF",
                Pyriform = "#FFFF77FF",
                OtherTissue = "#D2D2D233")        
                

                names(pal_pastel2) -> glands
                
glandShades = c(Gland = "#666666BB",
                OtherTissue = "#D2D2D266")        

                

# "#FBB4AE" "#B3CDE3" "#CCEBC5" "#DECBE4" "#FED9A6" "#FFFFCC" "#E5D8BD" "#FDDAEC" "#F2F2F2"

data.frame(pal_pastel1)




bulkClustersGenes = c(Duct_2 = "#440154FF",
                 Duct_1 = "#482878FF",
                 InBetween1= "#3E4A89FF",
                 Sac_LASC013329 = "#31688EFF",
                Sac_1 = "#26828EFF",
                Sac_MaSp3 = "#1F9E89FF",
                InBetween2 = "#35B779FF",
                Tail_MaSp1 ="#6DCD59FF",
                Tail_SpiCE8 = "#B4DE2CFF",
                Tail_MaSp2 = "#FDE725FF")



bulkClustersGenes2 = c(Duct_2 = "#440154FF",
                       InBetween1 = "#482878FF",
                       Duct_1= "#3E4A89FF",
                      Sac_LASC013329 = "#31688EFF",
                      Sac_1 = "#26828EFF",
                      Sac_MaSp3 = "#1F9E89FF",
                      InBetween2 = "#35B779FF",
                      Tail_MaSp1 ="#6DCD59FF",
                      Tail_SpiCE8 = "#B4DE2CFF",
                      Tail_MaSp2 = "#FDE725FF",
                      Other = "#CCCCCCFF")





bulkClustersGenes3 = c(Duct_2 = "#440154FF",
                       Duct_1 = "#48267744",
                       Sac_LASC013329 = "#238A8DFF",
                       Sac_1 = "#32648EFF",
                       Sac_MaSp3 = "#29AF7FFF",
                       Tail_MaSp1 ="#74D055FF",
                       Tail_SpiCE8 = "#B8DE29FF",
                       Tail_MaSp2 = "#FDE725FF",
                       Other = "#CCCCCCFF")


bulkClustersZones3 = c(Duct_2 = "#440154FF",
                       Duct_1 = "#48267744",
                       "ZoneC_SpiCE-LMa1" = "#238A8DFF",
                       Sac_1 = "#32648EFF",
                       ZoneB_MaSp3 = "#29AF7FFF",
                       ZoneA_MaSp1 ="#74D055FF",
                       ZoneA_SpiCE8 = "#B8DE29FF",
                       ZoneA_MaSp2 = "#FDE725FF",
                       Other = "#CCCCCCFF")

#[1] "#440154FF" "#481568FF" "#482677FF" "#453781FF" "#3F4788FF" "#39558CFF" "#32648EFF" "#2D718EFF" "#287D8EFF"
#[10] "#238A8DFF" "#1F968BFF" "#20A386FF" "#29AF7FFF" "#3CBC75FF" "#56C667FF" "#74D055FF" "#94D840FF" "#B8DE29FF"
#[19] "#DCE318FF" "#FDE725FF"

#bulkClustersZone = c(Duct_2 = "#440154FF",
#                     InBetween1 = "#482878FF",
#                 Duct_1= "#3E4A89FF",
#                 Sac_ZoneC = "#31688EFF",
#                 Sac_1 = "#26828EFF",
#                 Sac_ZoneB = "#1F9E89FF",
#                 InBetween2 = "#35B779FF",
#                 Tail_MaSp1 ="#6DCD59FF",
#                 Tail_SpiCE8 = "#B4DE2CFF",
#                 Tail_MaSp2 = "#FDE725FF")


bulkClustersZone = c(Duct_2 = "#440154FF",
                     Duct_1 = "#44015488",
                     Sac_ZoneC= "#3E4A89FF",
                     Sac_1 = "#26828EFF",
                     Sac_ZoneB = "#1F9E89FF",
                     InBetween2 = "#35B779FF",
                     Tail_MaSp1 ="#6DCD59FF",
                     Tail_SpiCE8 = "#B4DE2CFF",
                     Tail_MaSp2 = "#FDE725FF")

UreaColors = c("Silk in 2M Urea" = "#238A8DFF",			
               "Silk in 4M Urea" = "#29AF7FFF",		
               "Silk in 8M Urea" = "#74D055FF")


AllColors = c(Duct_2 = "#440154FF",
              Duct_1 = "#48267744",
              "ZoneC_SpiCE-LMa1" = "#238A8DFF",
              "ZoneC_LASC013329" = "#238A8DFF",
              Sac_1 = "#32648EFF",
              ZoneB_MaSp3 = "#29AF7FFF",
              ZoneA_MaSp1 ="#74D055FF",
              ZoneA_SpiCE8 = "#B8DE29FF",
              "ZoneA_SpiCE-LMa3" = "#B8DE29FF",
              ZoneA_MaSp2 = "#FDE725FF",
              ZoneC = "#238A8DFF",
              ZoneB = "#29AF7FFF",
              ZoneA = "#FDE725FF",
              Tail ="#FDE725FF",
              Sac ="#1F9E89FF",
              Duct = "#482878FF")

AllColors2 = c(Duct_2 = "#440154FF",
              Duct_1 = "#48267744",
              "ZoneC_SpiCE-LMa1" = "#238A8DFF",
              DopeC = "#238A8DFF",
              "ZoneC_LASC013329" = "#238A8DFF",
              Sac_1 = "#32648EFF",
              ZoneBC = "#32648EFF",
              ZoneB_MaSp3 = "#29AF7FFF",
              DopeB = "#29AF7FFF",
              ZoneA_MaSp1 ="#74D055FF",
              ZoneA_SpiCE8 = "#B8DE29FF",
              "ZoneA_SpiCE-LMa3" = "#B8DE29FF",
              ZoneA_MaSp2 = "#FDE725FF",
              ZoneC = "#238A8DFF",
              DopeIII = "#238A9DFF",
              ZoneB = "#29AF7FFF",
              DopeII = "#29AF8FFF",
              ZoneA = "#FDE725FF",
              DopeI = "#EDE745FF",
              Tail ="#FDE725FF",
              Sac ="#1F9E89FF",
              Duct = "#482878FF",
              None = "#FFFFFF", 
              SingleCell= "#AAAAAA", 
              Spatial= "#666666",
              BulkRNA = "#111111",
              Dope= "#AAAAAA", 
              Vesicle= "#666666",
              ImageI= "#CCCCCC", 
              ImageII= "#999999",
              ImageIII= "#555555",
              "Silk in 8M Urea"= "#FDE725FF",
              "Silk in 4M Urea" = "#29AF7FFF",
              "Silk in 2M Urea" = "#238A8DFF",
              "3" = "#238A8DFF",
              "2" = "#29AF7FFF",
              "1" = "#FDE725FF"
              
              )



SpidroinColor = c(
              MaSp1 ="#74D055FF",
              MaSp2 = "#FDE725FF",
              MaSp4 = "#FDE725FF"
)


bulkClustersH = c(sac_bulk_1 = "#1F9E8977",
                  sac_bulk_2 = "#1F9E89AA",
                  sac_bulk_3 = "#1F9E89FF",
                  tail_bulk_1 = "#FDE725FF",
                  tail_bulk_2 = "#FDE725AA",
                  tail_bulk_3 = "#FDE72588",
                  tail_bulk_4 = "#FDE72555",
                    NotInSilk = "#AAAAAA66"
)

MajorColors = c(
  Tail ="#FDE725FF",
  Sac ="#1F9E89FF",
  Duct = "#482878FF")



silkColors  = c(MaSp1 ="#4CED72",
                MaSp2 ="#B4EF11",
                MaSp3 ="#76A6F4",
                MaSp4 ="#EDA524",
                "SpiCE-LMa" ="#9E4D0B",
                "AmSp-like" ="#7FD6EA")


majorColorsSCNames = c("3",
                       "4",
                       "5",
                       "6",
                       "7",
                       "1",
                       "2",
                       "Inbetween2",
                       "Duct_1",
                       "Duct_2")


             
pal_Set1 = brewer.pal(n = 9, name = 'Set1')
pal_Set1[9] = "#60616011"
names(pal_Set1) = glands


color3 = c("#69ef7b",
  "#0f767a",
  "#167b2b",
  "#66d9cf",
  "#bbcf7a",
  "#fbcab9",
  "#f5943b",
  "#995c1b",
  "#3f4c08")
  color3[9] = "#60616011"
names(color3) = glands


geneOrder = c("MaSp2b","MaSp2c","MaSp2e","MaSp2f","MaSp4",
             "MaSp1a","MaSp1b","MaSp1c",
             "SpiCE-LMa3","SpiCE-LMa6","SpiCE-LMa17",
             "MaSp3a","AmSp-like2","AmSp-like1","SpiCE-LMa2","SpiCE-LMa11",
             "SpiCE-LMa1","SpiCE-LMa8","SpiCE-LMa9","SpiCE-LMa10",
            "SpiCE-LMa14","SpiCE-LMa4","SpiCE-LMa5",
             "SpiCE-LMa7","SpiCE-LMa12","SpiCE-LMa13","SpiCE-LMa15","SpiCE-LMa16")
  


geneOrder2 = c("MaSp2b","MaSp2c","MaSp2e","MaSp2f","MaSp4",
              "MaSp1a","MaSp1b","MaSp1c",
              "SpiCE-LMa6","SpiCE-LMa3",
              "SpiCE-LMa4","SpiCE-LMa5",
              "MaSp3a","MaSp3b","AmSp-like2","AmSp-like1",
              "SpiCE-LMa2","SpiCE-LMa1")


geneOrder3 = c("MaSp2b","MaSp2c","MaSp2e","MaSp2f","MaSp4",
               "MaSp1a","MaSp1b","MaSp1c",
               "SpiCE-LMa6","SpiCE-LMa3",
               "SpiCE-LMa5",
               "MaSp3a","MaSp3b","AmSp-like2","AmSp-like1","SpiCE-LMa4",
               "SpiCE-LMa2","SpiCE-LMa1")

clusterOrder = c("ZoneA_MaSp2", "ZoneA_MaSp1", "ZoneA_SpiCE-LMa3",
                 "ZoneABC", "ZoneB_MaSp3",
                 "ZoneC_SpiCE-LMa1",
                 "Duct_1","Duct_2")                                
