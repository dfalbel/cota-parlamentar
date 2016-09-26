# Packages ----------------------------------------------------------------

library(httr)
library(xml2)
library(plyr)
library(rvest)
source("utils.R")

# Download Dataset --------------------------------------------------------

request_data <- GET("http://www.camara.gov.br/cotas/AnoAtual.zip", write_disk("data-raw/AnoAtual.zip"))


if(request_data$status_code == 200){
  unzip("data-raw/AnoAtual.zip", exdir = "data-raw/")
  dados <- read_xml("data-raw/AnoAtual.zip")
  parsed <- parse_despesas(dados)
  readr::write_csv(parsed, "data/cota-parlamentar-2016.csv")
  readr::write_rds(parsed, "data/cota-parlamentar-2016.rds", compress = "gz")
}

system("./upload-github.sh")
