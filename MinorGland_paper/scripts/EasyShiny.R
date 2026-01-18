pkgs = c("data.table", "DT", "ggdendro", "ggplot2", "ggrepel", "glue", "grid", "hdf5r", "magrittr", "Matrix", "patchwork" ,"RColorBrewer", "readr", "remotes", "reticulate", "R.utils", "Seurat", "shiny", "shinyhelper", "shinythemes", "shinycssloaders")

pkg = pkgs[!(pkgs %in% installed.packages()[,"Package"])]
if(length(pkg)){install.packages(pkg)}
remotes::install_github("NBISweden/easyshiny", ref="revamp")



library(easyshiny)
library(Seurat)


obj_conf = create_config(spatial.combined.info2)
make_app(spatial.combined.info2, obj_conf, gex.assay="Spatial", gex.slot="data", gene.mapping = FALSE, shiny.title = "App", shiny.dir="app")
shiny::runApp("app")

