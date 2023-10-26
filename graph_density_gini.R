# Grafico simples GINI

df |>
  ggplot() +
  aes(x = gini, group = ano) +
  geom_density(fill = "#12E327", alpha = .7, outline.type = "both") +
  facet_wrap(facets = vars(ano)) +
  geom_vline(xintercept = .5, linetype = "dashed")
