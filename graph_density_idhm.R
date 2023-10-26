
# Grafico de densidade personalizado  ----

df |>
  ggplot() +
  aes(x = idhm, group = ano) +
  geom_density(fill = "#0070D9", alpha = .7, outline.type = "both",
               linewidth = 0.7) +
  facet_wrap(facets = vars(ano)) +
  geom_vline(xintercept = .5, linetype = "dashed") +
  theme_classic() +
  labs(
    y = "",
    x = "",
    title = "Índice de Desenvolvimento Humano (IDHM)",
    subtitle = "Distribuição dos munícipios brasileiros nos anos de 1991, 2000 e 2001"
  ) +
  theme(
    # Alterando painel
    panel.background = element_rect(fill = "#f5f5f2"),
    # Alterando plano de fundo
    plot.background = element_rect(fill = "#f5f5f2"),
    # Título
    plot.title = element_text(size= 14,
                              family = "Calibri",
                              color = "#3B3B3B",
                              face = "bold"),
    # Subtítulo
    plot.subtitle = element_text(size= 12,
                                 family = "Calibri",
                                 color = "#575757"),
    # Linha do eixo y
    axis.line.x = element_line(color = "#3B3B3B",
                               linewidth = 1),
    # Valores dos eixos x e y
    axis.text = element_text(size = 10,
                             family = "Calibri",
                             color = "#000000"),
    # Textos do facet (1991, 2000 e 2010)
    strip.text = element_text(size = 12,
                              family = "Calibri",
                              colour = "#f5f5f2",
                              face = "bold"),
    # "Caixinha" do facet
    strip.background = element_rect(colour = "#3264D9",
                                    fill = "#3264D9")
  )


