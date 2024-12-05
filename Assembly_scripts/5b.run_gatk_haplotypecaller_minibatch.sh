#!/bin/bash -e
#SBATCH -p ei-long
#SBATCH -N 1 # number of nodes
#SBATCH -c 1 # number of tasks
#SBATCH --mem 50G
#SBATCH -J gatk-interval
#SBATCH --constraint="intel"

Interval=$1

source gatk-4.2.0.0

cd /ei/projects/3/3c493fe7-33a3-4d92-b57f-50d4e29c3391/scratch/KDJ_beans_project/bwa_Andean_M/picardtools

gatk HaplotypeCaller -ploidy 2 -L ${Interval}  -O /ei/projects/3/3c493fe7-33a3-4d92-b57f-50d4e29c3391/scratch/KDJ_beans_project/bwa_Andean/gatk_all_samples/${Interval}_GATK.output.vcf \
-R /ei/projects/3/3c493fe7-33a3-4d92-b57f-50d4e29c3391/scratch/KDJ_beans_project/ref_genomes/Andean_assembly/Pvulgaris_442_v2.0.fa \
-I ./S0001_G50516H.mdup.bam        \
-I ./S0002_G18322.mdup.bam        \
-I ./S0003_G7231.mdup.bam        \
-I ./S0004_PHA13861.mdup.bam        \
-I ./S0005_G16401.mdup.bam        \
-I ./S0006_G50516T.mdup.bam        \
-I ./S0007_JSPINTO.mdup.bam        \
-I ./S0008_PHA12739.mdup.bam        \
-I ./S0009_G12608.mdup.bam        \
-I ./S0010_G51285G.mdup.bam        \
-I ./S0011_G11808.mdup.bam        \
-I ./S0012_G10626.mdup.bam        \
-I ./S0013_PHA13973.mdup.bam        \
-I ./S0014_MADEIRAMARRON.mdup.bam        \
-I ./S0015_G50997B_2.mdup.bam        \
-I ./S0016_PHA5358_2.mdup.bam        \
-I ./S0017_PHA4153.mdup.bam        \
-I ./S0018_G23434A.mdup.bam        \
-I ./S0019_BONNEBOUCHE.mdup.bam        \
-I ./S0020_G50516S.mdup.bam        \
-I ./S0021_G51285F.mdup.bam        \
-I ./S0022_SCHONEVONRICHIGEN.mdup.bam        \
-I ./S0023_G19227A.mdup.bam        \
-I ./S0024_TROUTBEAN.mdup.bam        \
-I ./S0025_JSBLACKTURTLE.mdup.bam        \
-I ./S0026_G12207.mdup.bam        \
-I ./S0027_PHA1488.mdup.bam        \
-I ./S0028_G5910.mdup.bam        \
-I ./S0029_G18324.mdup.bam        \
-I ./S0030_G12371.mdup.bam        \
-I ./S0031_G4672.mdup.bam        \
-I ./S0032_PHA4346.mdup.bam        \
-I ./S0033_G11013.mdup.bam        \
-I ./S0034_G50516P.mdup.bam        \
-I ./S0035_G12702.mdup.bam        \
-I ./S0037_G12636.mdup.bam        \
-I ./S0038_G23723.mdup.bam        \
-I ./S0039_PHA13936.mdup.bam        \
-I ./S0040_SARAHSOLDFASHION.mdup.bam        \
-I ./S0041_G1920.mdup.bam        \
-I ./S0042_G12667.mdup.bam        \
-I ./S0043_PHA13885.mdup.bam        \
-I ./S0044_G22041.mdup.bam        \
-I ./S0045_PHA4149.mdup.bam        \
-I ./S0046_G505161.mdup.bam        \
-I ./S0047_G12706.mdup.bam        \
-I ./S0048_PHA13867.mdup.bam        \
-I ./S0049_G11715.mdup.bam        \
-I ./S0050_PHA13864.mdup.bam        \
-I ./S0051_G11780D.mdup.bam        \
-I ./S0052_G12633.mdup.bam        \
-I ./S0053_G11708.mdup.bam        \
-I ./S0054_PHA14074.mdup.bam        \
-I ./S0055_G51013.mdup.bam        \
-I ./S0056_G4653.mdup.bam        \
-I ./S0057_PHA1650.mdup.bam        \
-I ./S0058_MEUCH.mdup.bam        \
-I ./S0059_G11557.mdup.bam        \
-I ./S0060_PHA14077.mdup.bam        \
-I ./S0061_G11819.mdup.bam        \
-I ./S0062_PHA4155.mdup.bam        \
-I ./S0063_G6861.mdup.bam        \
-I ./S0064_PHA13866.mdup.bam        \
-I ./S0065_G12073.mdup.bam        \
-I ./S0066_G50840B.mdup.bam        \
-I ./S0067_PHA13863.mdup.bam        \
-I ./S0068_G50840A.mdup.bam        \
-I ./S0069_G50516J.mdup.bam        \
-I ./S0070_G23462.mdup.bam        \
-I ./S0071_JSDALMATIN.mdup.bam        \
-I ./S0073_G12712_2.mdup.bam        \
-I ./S0074_PHA13865.mdup.bam        \
-I ./S0075_G10655.mdup.bam        \
-I ./S0076_PHA13870.mdup.bam        \
-I ./S0077_G50516E.mdup.bam        \
-I ./S0078_G51285C.mdup.bam        \
-I ./S0079_PHA13857.mdup.bam        \
-I ./S0080_G18323.mdup.bam        \
-I ./S0081_PHA13921.mdup.bam        \
-I ./S0082_RUTHBIBLE.mdup.bam        \
-I ./S0083_G4613.mdup.bam        \
-I ./S0084_G50516U.mdup.bam        \
-I ./S0085_PHA13872.mdup.bam        \
-I ./S0086_G12375.mdup.bam        \
-I ./S0087_TARBAIS.mdup.bam        \
-I ./S0088_PHA6906.mdup.bam        \
-I ./S0089_TUNNYBEAN.mdup.bam        \
-I ./S0090_G4547.mdup.bam        \
-I ./S0091_G11742.mdup.bam        \
-I ./S0092_G22819.mdup.bam        \
-I ./S0093_G12373.mdup.bam        \
-I ./S0094_G14172.mdup.bam        \
-I ./S0095_G11778.mdup.bam        \
-I ./S0096_G19895.mdup.bam        \
-I ./S0097_PHA14071.mdup.bam        \
-I ./S0098_G10942.mdup.bam        \
-I ./S0099_G23850.mdup.bam        \
-I ./S0100_G5036.mdup.bam        \
-I ./S0101_G5713.mdup.bam        \
-I ./S0102_G8161.mdup.bam        \
-I ./S0103_MAJORCOOK.mdup.bam        \
-I ./S0104_G51131.mdup.bam        \
-I ./S0105_PHA4154.mdup.bam        \
-I ./S0106_RYDERSBLUECOCO.mdup.bam        \
-I ./S0107_G1302.mdup.bam        \
-I ./S0108_G13220.mdup.bam        \
-I ./S0109_G12374.mdup.bam        \
-I ./S0110_G12637.mdup.bam        \
-I ./S0111_G12372.mdup.bam        \
-I ./S0112_G12628.mdup.bam        \
-I ./S0113_GRAMMAWALTERS.mdup.bam        \
-I ./S0114_G51013A.mdup.bam        \
-I ./S0115_G50516B.mdup.bam        \
-I ./S0116_G50834.mdup.bam        \
-I ./S0117_PHA13869.mdup.bam        \
-I ./S0118_G12671.mdup.bam        \
-I ./S0119_G50840.mdup.bam        \
-I ./S0120_G8208.mdup.bam        \
-I ./S0121_MARVELVENICE.mdup.bam        \
-I ./S0122_PHA14073.mdup.bam        \
-I ./S0123_PHA13890.mdup.bam        \
-I ./S0124_PHA13871.mdup.bam        \
-I ./S0125_PHA13190.mdup.bam        \
-I ./S0126_G50516N.mdup.bam        \
-I ./S0127_G51433.mdup.bam        \
-I ./S0128_PHA1791.mdup.bam        \
-I ./S0129_G4702.mdup.bam        \
-I ./S0130_G50516L.mdup.bam        \
-I ./S0131_G51285E.mdup.bam        \
-I ./S0133_PHA13868.mdup.bam        \
-I ./S0134_G50516K.mdup.bam        \
-I ./S0135_PHA7436.mdup.bam        \
-I ./S0136_BRIDGWATER.mdup.bam        \
-I ./S0137_G12639.mdup.bam        \
-I ./S0138_G50516C.mdup.bam        \
-I ./S0139_PHA6882.mdup.bam        \
-I ./S0140_G50516G.mdup.bam        \
-I ./S0141_PHA13862.mdup.bam        \
-I ./S0142_G12136.mdup.bam        \
-I ./S0143_G51191.mdup.bam        \
-I ./S0144_G6969.mdup.bam        \
-I ./S0145_G50516Q.mdup.bam        \
-I ./S0146_G50516F.mdup.bam        \
-I ./S0147_PHA4150.mdup.bam