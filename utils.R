# Parsing Functions ----------------------------------------------------------

get_attrs <- function(data){
  data <- html_children(data)
  data.frame(.id = html_name(data), value = html_text(data), stringsAsFactors = F)
}

parse_despesa <- function(despesa){
  
  get_attrs(despesa) %>%
    tidyr::spread(.id, value)
}

parse_despesas <- function(dados){
  dados <- xml_child(dados, "DESPESAS")
  tamanho <- xml_length(dados)
  dados <- xml_children(dados)
  plyr::ldply(1:tamanho, function(i){
    despesa <- dados[[i]]
    parsed_despesa <- parse_despesa(despesa)
    return(parsed_despesa)
  }, .progress = "text")
}

