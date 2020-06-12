SAMPLEs = ["iris", "pbmc3k_2000hvg", "pbmc3k_500hvg", "pbmc3k_100hvg", "pbmc3k_50hvg"]
DEGs = ["wilcoxon", "edger", "mast"]

#
# Prepare datasets
#
subworkflow datasets_workflow:
    workdir:
        "datasets"
    snakefile:
        "datasets/Snakefile"
    configfile:
        "datasets/config.yaml"

#
# scTGIF
#
subworkflow sctgif_workflow:
    workdir:
        "sctgif"
    snakefile:
        "sctgif/Snakefile"
    configfile:
        "sctgif/config.yaml"

#
# DEG methods
#
subworkflow deg_workflow:
    workdir:
        "deg"
    snakefile:
        "deg/Snakefile"
    configfile:
        "deg/config.yaml"

