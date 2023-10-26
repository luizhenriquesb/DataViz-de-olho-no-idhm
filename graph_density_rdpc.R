# Grafico simples RDPC

df |>
  ggplot() +
  aes(x = rdpc, group = ano) +
  geom_density(fill = "#FFF238", alpha = .7, outline.type = "both") +
  facet_wrap(facets = vars(ano)) +
  geom_vline(xintercept = .5, linetype = "dashed")
