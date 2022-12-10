## Hello world

## import packages
library(psych)
library(polycor)


## dataframe
df <- read.csv("~/Documentos/UFPE/Covid/Covid Instrument/Data/NEAP Covid (respostas) - componentes - Covid.csv", header = TRUE, sep = ",")

## Correlation
corr_matrix <- cor(df, method = "pearson")
corr_matrix_poly <- polychoric(df,)[["rho"]]

## screen plot
fa.parallel(df, fa = "fa", cor = "poly", fm = "wls")

## FA

EFA <- fa(df, nfactors = 2, rotate = "oblimin", fm = "wls", cor = "poly")
loadings <- EFA$loadings
plot(loadings)

alpha(df)
