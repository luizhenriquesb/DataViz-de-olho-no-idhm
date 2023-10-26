

# Library() ---------------------------------------------------------------

library(tidyverse)
library(abjData)

extrafont::loadfonts("win")

# Bases -------------------------------------------------------------------

df <- abjData::pnud_min

shape <- geobr::read_municipality()

df_shape <- shape |>
  mutate(code_muni = as.character(code_muni)) |>
  left_join(df, by = c("code_muni" = "muni_id"))

# IDHM ----

### 2010 ----

df_shape |>
  drop_na() |>
  filter(ano == 2010) |>
  ggplot() +
  geom_sf(aes(fill = idhm), color = "transparent") +
  scale_fill_viridis_c(guide = guide_legend(label.position = "left",
                                            title.position = "top",
                                            reverse = TRUE,
                                            byrow = FALSE),
                       breaks = seq(0, 1, by = 0.05)) +
  theme_void() +
  labs(
    title = "Índice de Desenvolvimento Humano (IHDM)",
    subtitle = "Mapa do IDHM dos municípios brasileiros em 2010",
    caption = "PNUD Brasil | Atlas do Desenvolvimento Humano dos Municípios",
    fill = ""
  ) +
  theme(
    plot.title = element_text(color = "#4e4d47",
                              size= 14,
                              face = "bold",
                              family = "Calibri",
                              hjust = 0),
    plot.subtitle = element_text(color = "#4e4d47",
                                 size= 14,
                                 family = "Calibri",
                                 hjust = 0),
    plot.caption = element_text(color = "#4e4d47",
                                size=11,
                                hjust = 0,
                                vjust = 5),
    legend.title = element_text(size= 12,
                                face = "bold",
                                color = "#4e4d47",
                                family = "Calibri"),
    plot.background = element_rect(fill = "#f5f5f2", colour = NA),
    panel.background = element_rect(fill = "#f5f5f2", colour = NA),
    legend.background = element_rect(fill = "#f5f5f2", colour = NA),
    legend.position = c(.90, .2)
    )


### 2000 ----

df_shape |>
  drop_na() |>
  filter(ano == 2000) |>
  ggplot() +
  geom_sf(aes(fill = idhm), color = "transparent") +
  scale_fill_viridis_c(guide = guide_legend(label.position = "left",
                                            title.position = "top",
                                            reverse = TRUE,
                                            byrow = FALSE),
                       breaks = seq(0, 1, by = 0.05)) +
  theme_void() +
  labs(
    title = "Índice de Desenvolvimento Humano (IHDM)",
    subtitle = "Mapa do IDHM dos municípios brasileiros em 2000",
    caption = "PNUD Brasil | Atlas do Desenvolvimento Humano dos Municípios",
    fill = ""
  ) +
  theme(
    plot.title = element_text(color = "#4e4d47",
                              size= 14,
                              face = "bold",
                              family = "Calibri",
                              hjust = 0),
    plot.subtitle = element_text(color = "#4e4d47",
                                 size= 14,
                                 family = "Calibri",
                                 hjust = 0),
    plot.caption = element_text(color = "#4e4d47",
                                size=11,
                                hjust = 0,
                                vjust = 5),
    legend.title = element_text(size= 12,
                                face = "bold",
                                color = "#4e4d47",
                                family = "Calibri"),
    plot.background = element_rect(fill = "#f5f5f2", colour = NA),
    panel.background = element_rect(fill = "#f5f5f2", colour = NA),
    legend.background = element_rect(fill = "#f5f5f2", colour = NA),
    legend.position = c(.90, .2)
  )

### 1990 ----

df_shape |>
  drop_na() |>
  filter(ano == 1991) |>
  ggplot() +
  geom_sf(aes(fill = idhm), color = "transparent") +
  scale_fill_viridis_c(guide = guide_legend(label.position = "left",
                                            title.position = "top",
                                            reverse = TRUE,
                                            byrow = FALSE),
                       breaks = seq(0, 1, by = 0.05)) +
  theme_void() +
  labs(
    title = "Índice de Desenvolvimento Humano (IHDM)",
    subtitle = "Mapa do IDHM dos municípios brasileiros em 1991",
    caption = "PNUD Brasil | Atlas do Desenvolvimento Humano dos Municípios",
    fill = ""
  ) +
  theme(
    plot.title = element_text(color = "#4e4d47",
                              size= 14,
                              face = "bold",
                              family = "Calibri",
                              hjust = 0),
    plot.subtitle = element_text(color = "#4e4d47",
                                 size= 14,
                                 family = "Calibri",
                                 hjust = 0),
    plot.caption = element_text(color = "#4e4d47",
                                size=11,
                                hjust = 0,
                                vjust = 5),
    legend.title = element_text(size= 12,
                                face = "bold",
                                color = "#4e4d47",
                                family = "Calibri"),
    plot.background = element_rect(fill = "#f5f5f2", colour = NA),
    panel.background = element_rect(fill = "#f5f5f2", colour = NA),
    legend.background = element_rect(fill = "#f5f5f2", colour = NA),
    legend.position = c(.90, .2)
  )

# Todos os anos ----

df_shape |>
  drop_na() |>
  ggplot() +
  geom_sf(aes(fill = idhm), color = "transparent") +
  facet_wrap(facets = vars(ano)) +
  scale_fill_viridis_c(guide = guide_legend(label.position = "left",
                                            title.position = "top",
                                            reverse = TRUE,
                                            byrow = FALSE),
                       breaks = seq(0, 1, by = 0.1)) +
  theme_classic() +
  labs(
    title = "Índice de Desenvolvimento Humano (IHDM)",
    subtitle = "Mapa do IDHM dos municípios brasileiros em 1991, 2000 e 2010",
    caption = "PNUD Brasil | Atlas do Desenvolvimento Humano dos Municípios",
    fill = ""
  ) +
  theme(
    plot.title = element_text(color = "#4e4d47",
                              size= 14,
                              face = "bold",
                              family = "Calibri",
                              hjust = 0),
    plot.subtitle = element_text(color = "#4e4d47",
                                 size= 14,
                                 family = "Calibri",
                                 hjust = 0),
    plot.caption = element_text(color = "#4e4d47",
                                size=11,
                                hjust = 0,
                                vjust = 5),
    legend.title = element_text(size= 12,
                                face = "bold",
                                color = "#4e4d47",
                                family = "Calibri"),
    plot.background = element_rect(fill = "#f5f5f2", colour = NA),
    panel.background = element_rect(fill = "#f5f5f2", colour = NA),
    legend.background = element_rect(fill = "#f5f5f2", colour = NA),
    legend.position = c(.90, .2)
  )


