cotas-parlamentares
=========================

Da [página de dados abertos](http://www2.camara.leg.br/transparencia/cota-para-exercicio-da-atividade-parlamentar/dados-abertos-cota-parlamentar) da câmara dos deputados:

> Este serviço de Dados Abertos disponibiliza arquivos XML compactados para download contendo os dados relativos aos gastos parlamentares registrados na Câmara dos Deputados. O acesso é gratuito e não requer autorização de uso. A intenção do serviço é permitir que os dados possam ser importados por sistemas de gerenciamento de banco de dados (SGBD) externos à Câmara dos Deputados para serem manipulados de acordo com as necessidades dos diversos setores da sociedade. Os arquivos são atualizados diariamente.

O repositório ainda não é atualizado diariamente.

## Leitura dos dados

O arquivo `.csv` pode ser encontrado na pasta `data`. Clone o repositório
e no `R` use:

```
dados <- readr::read_csv("data/cota-parlamentar-2016.csv")
```

## Descrição dos dados

<table class="tabela-2" style="text-align: left; float: left;"><tbody><tr><th>
<p>Elemento de Dado</p>
</th><th>
<p style="text-align: left; ">Nome do Dado</p>
</th><th>
<p style="text-align: left; ">Definição do Dado</p>
</th></tr><tr class="odd"><td>
<p style="text-align: left; ">txNomeParlamentar</p>
</td>
<td style="text-align: left; ">
<p>Nome Parlamentar</p>
</td>
<td style="text-align: left; ">
<p style="text-align: left; ">Nome adotado pelo Parlamentar ao tomar posse do seu mandato. Compõe-se de dois elementos: um prenome e o nome; dois nomes; ou dois prenomes, salvo, a juízo do Presidente da Casa legislativa, que poderá alterar essa regra para que não ocorram confusões.</p>
</td>
</tr><tr><td>ideCadastro</td>
<td>Identificador Único do Parlamentar</td>
<td>Número que identifica unicamente&nbsp;<span>um deputado federal na CD.</span></td>
</tr><tr class="even"><td>
<p>nuCarteiraParlamentar</p>
</td>
<td>
<p style="text-align: left; ">Número da&nbsp; Carteira Parlamentar</p>
</td>
<td>
<p style="text-align: left; ">Documento usado para identificar um deputado federal na CD. Pode alterar a cada Legislatura nova.</p>
</td>
</tr><tr><td>
<p>nuLegislatura</p>
</td>
<td>
<p style="text-align: left; ">Número da&nbsp; Legislatura</p>
</td>
<td>
<p>Legislatura: Período de quatro anos coincidente com o mandato parlamentar dos Deputados Federais. No contexto da cota CEAP, representa o ano base de início da legislatura e é utilizado para compor a Carteira Parlamentar, pois esta poderá ser alterada à medida que se muda de Legislatura.</p>
</td>
</tr><tr class="even"><td>
<p>sgUF</p>
</td>
<td>
<p style="text-align: left; ">Sigla da UF</p>
</td>
<td>
<p style="text-align: left; ">No contexto da cota CEAP, representa a unidade da federação pela qual o deputado foi eleito e é utilizada para definir o valor da cota a que o deputado tem.</p>
</td>
</tr><tr><td>
<p>sgPartido</p>
</td>
<td>
<p style="text-align: left; ">Sigla do Partido</p>
</td>
<td>
<p style="text-align: left; ">O seu conteúdo representa a sigla de um partido. Definição de partido: é uma organização formada por pessoas com interesse ou ideologia comuns, que se associam com o fim de assumir o poder para implantar um programa de governo. Tem personalidade jurídica de direito privado e goza de autonomia e liberdade no que diz respeito à criação, organização e funcionamento, observados os princípios e preceitos constitucionais.</p>
</td>
</tr><tr class="even"><td>
<p>codLegislatura</p>
</td>
<td>
<p style="text-align: left; ">Código da Legislatura</p>
</td>
<td>
<p style="text-align: left; ">Legislatura: Período de quatro anos coincidente com o mandato parlamentar dos Deputados Federais. No contexto da cota CEAP, o seu conteúdo representa o código identificador da Legislatura, que um número ordinal sequencial, alterado de um em um, a cada início de uma nova Legislatura (por exemplo, a Legislatura que iniciou em 2011 é a 54ª Legislatura).</p>
</td>
</tr><tr><td>
<p>numSubCota</p>
</td>
<td>
<p style="text-align: left; ">Número da Subcota</p>
</td>
<td>
<p style="text-align: left; ">No contexto da Cota CEAP, o conteúdo deste dado representa o código do Tipo de Despesa referente à despesa realizada pelo deputado e comprovada por meio da emissão de um documento fiscal, a qual é debitada na cota do deputado.</p>
</td>
</tr><tr class="even"><td>
<p>txtDescricao</p>
</td>
<td>
<p style="text-align: left; ">Descrição da Subcota</p>
</td>
<td>
<p style="text-align: left; ">O seu conteúdo é a descrição do Tipo de Despesa relativo à despesa em questão.</p>
</td>
</tr><tr><td>
<p>numEspecificacaoSubCota</p>
</td>
<td>
<p style="text-align: left; ">Número da Especificação da Subcota</p>
</td>
<td>
<p style="text-align: left; ">No contexto da Cota CEAP, há despesas cujo Tipo de Despesa necessita ter uma especificação mais detalhada (por exemplo, “Combustível”). O conteúdo deste dado representa o código desta especificação mais detalhada.</p>
</td>
</tr><tr class="even"><td>
<p>txtDescricaoEspecificacao</p>
</td>
<td>
<p style="text-align: left; ">Descrição da Especificação da Subcota</p>
</td>
<td>
<p style="text-align: left; ">Representa a descrição &nbsp;especificação mais detalhada de um referido Tipo de Despesa.</p>
</td>
</tr><tr><td>
<p>txtFornecedor</p>
</td>
<td>
<p>Fornecedor</p>
</td>
<td>
<p>O conteúdo deste dado representa o nome do fornecedor do produto ou serviço presente no documento fiscal</p>
</td>
</tr><tr class="even"><td>
<p>txtCNPJCPF</p>
</td>
<td>
<p>CNPJ/CPF</p>
</td>
<td>
<p>O conteúdo deste dado representa o CNPJ ou o CPF do emitente do documento fiscal, quando se tratar do uso da cota em razão do reembolso despesas comprovadas pela emissão de documentos fiscais.</p>
</td>
</tr><tr><td>
<p>txtNumero</p>
</td>
<td>
<p>Número do Documento</p>
</td>
<td>
<p>O conteúdo deste dado representa o número de face do documento fiscal emitido ou o número do documento que deu causa à despesa debitada na cota do deputado.</p>
</td>
</tr><tr class="even"><td>
<p>indTipoDocumento</p>
</td>
<td>
<p>Indicativo de Tipo de Documento Fiscal</p>
</td>
<td>
<p>Este dado representa o tipo de documento do fiscal – 0 (Zero), para Nota Fiscal; 1 (um), para Recibo; e 2, para Despesa no Exterior.</p>
</td>
</tr><tr><td>
<p>datEmissao</p>
</td>
<td>
<p>Data de Emissão</p>
</td>
<td>
<p>O conteúdo deste dado é a data de emissão do documento fiscal ou a data do documento que tenha dado causa à despesa.</p>
</td>
</tr><tr class="even"><td>
<p>vlrDocumento</p>
</td>
<td>
<p>Valor do Documento</p>
</td>
<td>
<p>O seu conteúdo é o valor de face do documento fiscal ou o valor do documento que deu causa à despesa. Quando se tratar de bilhete aéreo, esse valor poderá ser negativo, significando que o referido bilhete é um bilhete de compensação, pois compensa um outro bilhete emitido e não utilizado pelo deputado (idem para o dado vlrLiquido abaixo).</p>
</td>
</tr><tr><td>
<p>vlrGlosa</p>
</td>
<td>
<p>Valor da Glosa</p>
</td>
<td>
<p style="text-align: left; ">O seu conteúdo representa o valor da glosa do documento fiscal que incidirá sobre o Valor do Documento, ou o valor da glosa do documento que deu causa à despesa.</p>
</td>
</tr><tr class="even"><td>
<p>vlrLiquido</p>
</td>
<td>
<p style="text-align: left; ">Valor Líquido</p>
</td>
<td>
<p style="text-align: left; ">O seu conteúdo representa o valor líquido do documento fiscal ou do documento que deu causa à despesa e será calculado pela diferença entre o Valor do Documento e o Valor da Glosa. É este valor que será debitado da cota do deputado. Caso o débito seja do Tipo Telefonia e o valor seja igual a zero, significa que a despesa foi franqueada.</p>
</td>
</tr><tr><td>
<p>numMes</p>
</td>
<td>
<p style="text-align: left; ">Mês</p>
</td>
<td>
<p style="text-align: left; ">O seu conteúdo representa o Mês da competência financeira do documento fiscal ou do documento que deu causa à despesa. É utilizado, junto com o ano, para determinar em que período o débito gerará efeito financeiro sobre a cota.</p>
</td>
</tr><tr class="even"><td>
<p>numAno</p>
</td>
<td>
<p style="text-align: left; ">Ano</p>
</td>
<td>
<p style="text-align: left; ">O seu conteúdo representa o Ano da competência financeira do documento fiscal ou do documento que deu causa à despesa. É utilizado, junto com o mês, para determinar em que período o débito gerará efeito financeiro sobre a cota.</p>
</td>
</tr><tr><td>
<p>numParcela</p>
</td>
<td>
<p style="text-align: left; ">Número da Parcela</p>
</td>
<td>
<p style="text-align: left; ">O seu conteúdo representa o número da parcela do documento fiscal. Ocorre quando o documento tem de ser reembolsado de forma parcelada.</p>
</td>
</tr><tr class="even"><td>
<p>txtPassageiro</p>
</td>
<td>
<p style="text-align: left; ">Passageiro</p>
</td>
<td>
<p style="text-align: left; ">O conteúdo deste dado representa o nome do passageiro, quando o documento que deu causa à despesa se tratar de emissão de bilhete aéreo.</p>
</td>
</tr><tr><td>
<p>txtTrecho</p>
</td>
<td>
<p style="text-align: left; ">Trecho</p>
</td>
<td>
<p style="text-align: left; ">O conteúdo deste dado representa o trecho da viagem, quando o documento que deu causa à despesa se tratar de emissão de bilhete aéreo.</p>
</td>
</tr><tr class="even"><td>
<p>numLote</p>
</td>
<td>
<p style="text-align: left; ">Número do Lote</p>
</td>
<td>
<p style="text-align: left; ">No contexto da Cota CEAP, o Número do Lote representa uma capa de lote que agrupa os documentos que serão entregues à Câmara para serem ressarcidos. Este dado, juntamente com o Número do Ressarcimento, auxilia a localização do documento no Arquivo da Casa.</p>
</td>
</tr><tr><td style="text-align: left; ">
<p>numRessarcimento</p>
</td>
<td style="text-align: left; ">
<p style="text-align: left; ">Número do Ressarcimento</p>
</td>
<td>
<p style="text-align: left; ">No contexto da Cota CEAP, o Número do Ressarcimento indica o ressarcimento do qual o documento fez parte por ocasião do processamento do seu reembolso. Este dado, juntamente com o Número do Ressarcimento, auxilia a localização do documento no Arquivo da Casa.</p>
</td>
</tr><tr class="even"><td style="text-align: left; ">
<p></p>
<p>vlrRestituicao</p>
</td>
<td style="text-align: left; ">
<p style="text-align: left; "></p>
<p style="text-align: left; "><span>Valor da </span>Restituição</p>
</td>
<td>
<p style="text-align: left; "></p>
<p style="text-align: left; "><span>O seu conteúdo representa o valor restituído do documento fiscal que incidirá sobre o Valor do Documento.</span></p>
</td>
</tr><tr><td style="text-align: left; ">
<p>nuDeputadoId</p>
</td>
<td>
<p>Identificador do Solicitante</p>
</td>
<td>
<p style="text-align: left; "><span>Número que identifica um Parlamentar ou Liderança na Transparência da Cota para Exercício da Atividade Parlamentar</span><span>.</span></p>
</td>
</tr></tbody></table>

[Fonte](http://www2.camara.leg.br/transparencia/cota-para-exercicio-da-atividade-parlamentar/explicacoes-sobre-o-formato-dos-arquivos-xml)