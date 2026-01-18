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
silkColors  = c(MaSp1 ="#4CED72",
                MaSp2 ="#B4EF11",
                MaSp3 ="#76A6F4",
                MaSp4 ="#EDA524",
                "SpiCE-LMa" ="#9E4D0B",
                "AmSp-like" ="#7FD6EA")



scCellOrderColorMinor = c(ZoneA_MiSpabd = c("#B33E52"),
                          ZoneB_MiSpc = c("#B3823E"),
                          "ZoneC_SpICE-LMa1" = c("#78B33E"),
                          Duct_2 = c("#3D0F99"),
                          Duct_1 = c("#967ACC"))
                          


scCellOrderColorMajor = c(Duct_1 = "#C7B8E6",
               Duct_2 = "#653EB3",
               "ZoneC_SpiCE-LMa1" = "#A3CC7A",
               ZoneB_MaSp3 = "#CCAA7A",
               ZoneABC = "#B8DEE6",
               ZoneA_MaSp1 ="#CC7A88",
               "ZoneA_SpiCE-LMa3" = "#E6B8BF",
               ZoneA_MaSp2 ="#990F26")


scCellZoneOrderColorBoth = c(ZoneA = c("#990F26"),
                          ZoneB = c("#B3823E"),
                          ZoneC = c("#78B33E"),
                          ZoneABC = c("#B8DEE6"),
                          Duct = c("#3D0F99"))

scCellCelltypeOrderColorBoth = c(
                          Minor_ZoneA_MiSpabd = c("#B33E52"),
                          Ma_ZoneA_MaSp2 ="#990F26",
                          Ma_ZoneA_MaSp1 ="#CC7A88",
                          "Ma_ZoneA_SpiCE-LMa3" = "#E6B8BF",
                          Minor_ZoneB_MiSpc = c("#B3823E"),
                          Ma_ZoneB_MaSp3 = "#CCAA7A",
                          Ma_ZoneABC = "#B8DEE6",
                          "Minor_ZoneC" = c("#78B33E"),
                          "Ma_ZoneC_SpiCE-LMa1" = "#A3CC7A",
                          Minor_Duct_2 = c("#3D0F99"),
                          Minor_Duct_1 = c("#967ACC"),
                          Ma_Duct_1 = "#C7B8E6",
                          Ma_Duct_2 = "#653EB3"
                          )


scCellCelltypeOrderColorBoth = c(
  Minor_ZoneA_MiSpabd = c("#B33E52"),
  Major_ZoneA_MaSp2 ="#990F26",
  Major_ZoneA_MaSp1 ="#CC7A88",
  Major_ZoneA_SpiCE = "#E6B8BF",
  Minor_ZoneB_MiSpc = c("#B3823E"),
  Major_ZoneB_MaSp3 = "#CCAA7A",
  Major_ZoneABC = "#B8DEE6",
  Minor_ZoneC_SpiCE = c("#78B33E"),
  Major_ZoneC_SpiCE = "#A3CC7A",
  Minor_Duct_2 = c("#3D0F99"),
  Minor_Duct_1 = c("#967ACC"),
  Major_Duct_1 = "#C7B8E6",
  Major_Duct_2 = "#653EB3",
  No = "#DDDDDD"
)


CellCelltypeOrderCommon= c(
  ZoneA_MiSpabd = c("#B33E52"),
  ZoneA_MaSp2 ="#990F26",
  ZoneA_MaSp1 ="#CC7A88",
  "ZoneA_SpiCE-LMa3" = "#E6B8BF",
  ZoneB_MiSpc = c("#B3823E"),
  ZoneB_MaSp3 = "#CCAA7A",
  ZoneABC = "#B8DEE6",
  ZoneC_SpICE = c("#78B33E"),
  "ZoneC_SpiCE-LMa1" = "#A3CC7A"
  )

CellCelltypeOrderCommon2= c(
  ZoneA_MiSpabd = c("#B33E52"),
  ZoneB_MiSpc = c("#B3823E"),
  ZoneC_SpICE = c("#78B33E"),
  ZoneA_MaSp2 ="#990F26",
  ZoneA_MaSp1 ="#CC7A88",
  "ZoneA_SpiCE-LMa3" = "#E6B8BF",
ZoneB_MaSp3 = "#CCAA7A",
  ZoneABC = "#B8DEE6",
  "ZoneC_SpiCE-LMa1" = "#A3CC7A"
)



BulkPartMinor= c(
  Tail_proximal ="#990F26",
  Sac_proximal ="#E6B8BF",
  Sac_center = "#CCAA7A",
  Sac_distal = "#78B33E",
  Sac_distal_Duct = "#653EB3"
)

BulkPartMinor2= c(
  Tail_proximal ="#990F26",
  Sac_proximal ="#E6B8BF",
  Sac_center = "#CCAA7A",
  Sac_distal = "#78B33E",
  Duct = "#653EB3"
)



Zones= c(
  ZoneA ="#990F26",
  ZoneB = "#CCAA7A",
  ZoneC = "#78B33E",
  Duct = "#C7B8E6"
)


BulkZones= c(
  "Tail strong" ="#990F26",
  "Sac weak" = "#CCAA7A",
  "Sac strong" = "#78B33E"
)

GlandColor= c(
  Major ="#555555",
  Minor ="#EBEBEB",
  Both = "#979797"
)


AAcolors <- c( "#0000FF", "#00FF00", "#FF00FF", "#FFFF00", "#FF8000",
               "#00FFFF", "#8000FF", "#FF0000", "#9F1480","#00FF99", "#000080",
               "#FF6500",  "#896903", "#7FFF00", "#FF69B4",
               "#32CD32", "#FFD711", "#8A2BE2", "#E6E6F0", "#00BFFF")


geneOrderMajor = c("MaSp2b","MaSp2c","MaSp2e","MaSp2f","MaSp4",
               "MaSp1a","MaSp1b","MaSp1c",
               "SpiCE-LMa6","SpiCE-LMa3",
               "SpiCE-LMa5",
               "MaSp3a","MaSp3b","AmSp-like2","AmSp-like1","SpiCE-LMa4",
               "SpiCE-LMa2","SpiCE-LMa1")

geneOrderMinor = c("MaSp2b","MaSp2c","MaSp2e","MaSp2f","MaSp4",
                   "MaSp1a","MaSp1b","MaSp1c",
                   "SpiCE-LMa6","SpiCE-LMa3",
                   "SpiCE-LMa5",
                   "MaSp3a","MaSp3b","AmSp-like2","AmSp-like1","SpiCE-LMa4",
                   "SpiCE-LMa2","SpiCE-LMa1")

geneOrderBoth = c("MaSp2b","MaSp2c","MaSp2e","MaSp2f","MaSp4",
                   "MaSp1a","MaSp1b","MaSp1c",
                   "SpiCE-LMa6","SpiCE-LMa3",
                   "SpiCE-LMa5",
                   "MaSp3a","MaSp3b","AmSp-like2","AmSp-like1","SpiCE-LMa4",
                   "SpiCE-LMa2","SpiCE-LMa1")


termOrder = c("MiSp","AmSp-like","Spidroins","SpiCE",
              "SignalPeptide","RibosomalProteins","NoSignalPeptide")
termColors <- brewer.pal(8, "Set2")[1:7]
names(termColors) <- termOrder



spidroin_colors <- c(
  # Highlighted: MaSp family (deep blues)
  "MaSp" = "#1f78b4",      # strong blue
  "MaSp1" = "#1f78b4BB",      # strong blue
  "MaSp2" = "#1f78b490",
  "MaSp2B" = "#1f78b460",
  "MaSp3" = "#1f78b440",
  "MaSp3B" = "#1f78b420",
  
  # Highlighted: MiSp
  "MiSp" = "#8c510a",       # warm brown
  
  # Highlighted: General Spidroin family
  "Spidroin" = "#6a3d9a",          # base light blue
  "Putative_spidroin" = "#6a3d9a80",
  "Ampullate_spidroin" = "#6a3d9aCC",
  
  # Other classes (neutral/muted but distinct)
  "AgSp1" = "#c7e9b4",      # pale green
  "AgSp2" = "#a1d99b",
  
  "AcSp"  = "#fdbb84",      # soft orange
  "CySp"  = "#d9d9d9",      # light gray
  "PySp"  = "#fdd0a2",      # light peach
  "CrSp"  = "#e5f5f9",      # icy blue
  
  "Flag"  = "#e0ecf4",      # pale blue-gray
  "Pflag" = "#bfd3e6"       # slightly deeper
)



