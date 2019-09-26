######## ?RBOL FILOGEN?TICO A1_1 ########

#24/09/2019#


if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("ggtree")
library(treeio)
library(ggplot2)
library(ggtree)
library(tidyr)
library(dplyr)
library(tidytree)



## ARBOL A1_1 NEWICK ##

arbol <- read.newick("A1_1_refs_actualizado_PhyML.nwk")
summary(arbol)
ggtree(arbol)

arbol_edit<-(ggtree(arbol, layout="rectangular", linetype="solid", color="black")  +
geom_treescale(y=-6, fontsize=2.5) +
geom_tiplab(size=1.3, offset=0.001, color="black") +
geom_nodepoint(shape=1,color="blue", alpha=0.75, size=1) +
geom_tippoint (color="black", alpha=0.75, size=1) +
geom_rootedge(rootedge = 3) +
xlim(0,0.23))
arbol_edit


## ARBOL A1_1 BEAST MCCTREE ##
arbol=read.beast("A1_1_sinrangos_resumido_sinseqsrangos_mcctree")

head(arbol)
names(arbol)
beast_tree <- read.beast(arbol)
#No funciona read.beast(file)!!!!!!!!!!!!!!!!!!!!!!?


ggtree(arbol) + theme_tree2()


## EXPORTAR ?RBOL ##

#Exportar como .tree o como .nwk !!!!!!!!!!!!!!!!!!?
write.beast(arbol,file="arbol_guardado")


#Exportar como tiff:
ggtree(arbol) + theme_tree2()
ggsave("imagen_del_arbol.tiff")

