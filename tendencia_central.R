
# Explorando o conjunto de dados disponíveis no pacote abjData

# Autor: Luiz Henrique
# Contato: sbluizhenrique@gmail.com

# Library -----------------------------------------------------------------

library(tidyverse)
library(abjData)

# Dados -------------------------------------------------------------------

df <- abjData::pnud_min

# Visualizando as variáveis -----------------------------------------------

view(abjData::pnud_siglas) # pnud_siglas mpresenta o glossário das variáveis

# Média dos índices em 1991, 2000 e 2010 ----------------------------------

df |>
  group_by(ano) |>
  summarise(across(
    .cols = idhm:gini,
    .fns = mean
  ))

# Mediana dos índices em 1991, 2000 e 2010 ---------------------------------

df |>
  group_by(ano) |>
  summarise(across(
    .cols = idhm:gini,
    .fns = median
  ))

