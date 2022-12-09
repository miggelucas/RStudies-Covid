## Hello world

## import packages
load(psych)
library(psych)
library(polycor)


## dataframe
df <- read.csv("~/Documentos/UFPE/Covid/Covid Instrument/NEAP Covid (respostas) - componentes - Covid.csv", header = TRUE, sep = ",")

## Correlation
corr_matrix <- cor(df, method = "pearson")
corr_matrix_poly <- polychoric(df,)[["rho"]]

corr_matrix_poly
## FA

EFA <- fa(df, nfactors = 2, rotate = "oblimin", fm = "wls", cor = "poly")
loadings <- EFA$loadings
plot(loadings)
