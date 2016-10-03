# Pacotes -----------------------------------------------------------------
library(tidyverse)

# Leitura do banco de dados -----------------------------------------------

bd <- read_csv("data/cota-parlamentar-2016.csv")


# Gráfico simples ---------------------------------------------------------
bd %>%
  group_by(txNomeParlamentar, sgPartido) %>%
  summarise(vlrLiquido = sum(vlrLiquido, na.rm = T)) %>%
  ungroup() %>%
  arrange(desc(vlrLiquido)) %>%
  slice(1:10)

bd %>%
  group_by(txNomeParlamentar, sgPartido) %>%
  summarise(vlrLiquido = sum(vlrLiquido, na.rm = T)) %>%
  ungroup() %>%
  arrange(vlrLiquido) %>%
  slice(1:10)


bd %>% filter(txNomeParlamentar == "ROSÂNGELA CURADO") %>% View()

