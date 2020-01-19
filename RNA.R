library(CePa)

gene_data <- read.gct("C:/Users/Vasudev Namboodiri/Desktop/PAAD.gct")

gene_data = as.data.frame(gene_data)

meta_data = gene_data[1:124, ]

rna_data = gene_data[125:nrow(gene_data),  ]

rna_data[] <- lapply(rna_data, function(x) as.numeric(as.character(x)))

rna_data[rna_data=="NaN"] = 0

pca = prcomp(rna_data)
summary(pca)

biplot(pca)

rna_data[df_new=="neuroendocrine carcinoma nos" || df_new=="82463 neuroendocrine carcinoma nos" ||
       df_new=="neuroendocrine carcinoma"] = NA


