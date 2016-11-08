#!/bin/bash

PREFIX=CAV_LP_Ipsi_tdTpos_cell_1-SRR2140356-GSM1840944_R1.polyATrim.adapterTrim.rmRep.sorted.rg
BAM1=$PREFIX.bam
BAM2=$PREFIX.subset.bam
samtools view -hb $BAM chr16:84827990-84834810 chr14:64123350-64417090 chr10:128491030-128502410 chr14:24490750-24495790 chr2:136713600-136781098 chr17:80201600-80207190 chr9:67024566-67043590 chr7:126487490-126490310 chr5:125386210-125389800 > $BAM2

PREFIX3=$PREFIX.subset.sorted
BAM3=$PREFIX3.bam
samtools sort $BAM2 $PREFIX3

samtools index $BAM3


PREFIX=CAV_LP_Ipsi_tdTpos_cell_2-SRR2140357-GSM1840945_R1.polyATrim.adapterTrim.rmRep.sorted.rg
