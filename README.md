# Projeto Aplicado I - Mackenzie - 2023.02

## Produção Sustentável no Brasil - Desafios e Oportunidades

Este repositório contém o trabalho de análise exploratória de dados desenvolvido no âmbito da disciplina Projeto Aplicado I, do curso de Ciência de Dados da Universidade Presbiteriana Mackenzie. O trabalho pode ser visto [neste documento](/Produção%20Sustentável%20no%20Brasil%20-%20Desafios%20e%20Oportunidades%20-%20Relatório.pdf) e o vídeo da apresentação [aqui](https://youtu.be/5ZRszh5tCHM).

O objetivo deste trabalho é analisar os padrões e tendências das práticas de produção e consumo agrícolas no Brasil; contribuindo para a compreensão dos padrões de produção e para incentivar comportamentos mais responsáveis em relação aos recursos naturais e ao meio ambiente. Especificamente, estamos focados no acompanhamento do Objetivo de Desenvolvimento Sustentável (ODS) número 12.3, buscando compreender como um dos principais componentes da cadeia de produção de alimentos está respondendo à necessidade de prevenir o desperdício e reduzir a emissão de gases do efeito estufa.

Os dados necessários para a condução deste trabalho foram obtidos do Sistema de Estimativas de Emissões e Remoções de Gases de Efeito Estufa (SEEG), que é administrado pelo Observatório do Clima, da Produção Agrícola Municipal (PAM) e do Censo Agropecuário, ambos do Instituto Brasileiro de Geografia e Estatística (IBGE). Abaixo está uma tabela que contém a descrição das variáveis utilizadas e suas respectivas origens.

## Pré-requisitos

Antes de reproduzir localmente, você vai precisar ter instalado em sua máquina as seguintes ferramentas:
[Git](https://git-scm.com), [Python 3.9.13 >=](https://www.python.org/). Posto isso, basta utilizar a sequência de comandos abaixo.

```bash
# Clone este repositório
$ git clone <https://github.com/baldoinov/projeto-aplicado-i>

# Acesse a pasta do projeto no terminal/cmd
$ cd projeto-aplicado-i

# Crie e ative o ambiente virtual
$ python -m venv .venv

$ \.venv\Scripts\activate

# Instale as dependências
$ pip install -r requirements.txt
```

## Contribuidores

| Nome                   |
|------------------------|
| Felipe José da Cunha   |
| Hideki Nakamura        |
| Natália Françozo       |
| Nícolas Pereira Cabral |
| Vitor Baldoino         |

## Dados

| Nome                              | Descrição                                                                                           | Origem do Dado                                                                 |
|-----------------------------------|-----------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------|
| ano                               | Ano                                                                                                 |                                                                                |
| sigla_uf                          | Sigla da Unidade da Federação                                                                       |                                                                                |
| nome_uf                           | Nome da Unidade da Federação                                                                        |                                                                                |
| nome_regiao                       | Nome da região do país                                                                              |                                                                                |
| produto                           | Produto agrícola                                                                                    | Pesquisa Agrícola Municipal (PAM)                                              |
| area_plantada                     | Área destinada ao plantio, em hectares                                                              | Pesquisa Agrícola Municipal (PAM)                                              |
| area_colhida                      | Área colhida, em hectares                                                                           | Pesquisa Agrícola Municipal (PAM)                                              |
| quantidade_produzida              | Quantidade total produzida, em toneladas                                                            | Pesquisa Agrícola Municipal (PAM)                                              |
| perdas                            | Quantidade perdida no pós-colheita. Calculada como `area_plantada * rendimento_medio - area_colhida`| Pesquisa Agrícola Municipal (PAM)                                              |
| valor_producao                    | Valor nominal total da produção, em reais                                                           | Pesquisa Agrícola Municipal (PAM)                                              |
| emissao                           | Emissão                                                                                             | Sistema de Estimativas de Emissões e Remoções de Gases de Efeito Estufa (SEEG) |
| area_nao_utilizada                | Área total não utilizada                                                                            | Censo Agropecuário                                                             |
| quantidade_estabelecimentos_cafe  | Número de estabelecimentos                                                                          | Censo Agropecuário                                                             |
| area_cafe                         | Área destinada ao plantio de café                                                                   | Censo Agropecuário                                                             |
| producao_cafe                     | Produção de café em toneladas                                                                       | Censo Agropecuário                                                             |
| valor_total_producao_cafe         | Valor total da produção de café                                                                     | Censo Agropecuário                                                             |
| despesa_total_comparacao          | Despesa total                                                                                       | Censo Agropecuário                                                             |
| despesa_total                     | Despesa total. Calculada como a soma de todas as outras despesas da base.                           | Censo Agropecuário                                                             |
| despesa_defensivos                | Despesa Total com defensivos agrícolas                                                              | Censo Agropecuário                                                             |
| quantidade_tratores               | Número absoluto de tratores                                                                         | Censo Agropecuário                                                             |
| quantidade_maquina_colheita       | Número absoluto de máquina de colheita                                                              | Censo Agropecuário                                                             |
| quantidade_maquinas_plantio       | Número absoluto de máquinas de plantio                                                              | Censo Agropecuário                                                             |
| proporcao_despesa_defensivos      | Proporção da despesa gasta com defensivos agrícolas                                                 | Censo Agropecuário                                                             |


## Bibliografia

> [Lista de bibliotecas de visualização de dados úteis.](https://aeturrell.github.io/coding-for-economists/vis-intro.html)

> [Dados do Censo Agropecuário](https://basedosdados.org/dataset/55a39c28-58f3-4804-827d-6eee5ed27b6b?table=5366d485-e7db-4367-911a-a6a0198dda13)

> [Dados da Pesquisa Agrícola Municipal (PAM)](https://basedosdados.org/dataset/fc403b40-a7e1-40e7-9efe-910847b45a69?table=bd9b2960-361f-4465-be23-baaadaaf266d)

> [Dados do Sistema de Estimativas de Emissões e Remoções de Gases de Efeito Estufa (SEEG)](https://basedosdados.org/dataset/9a22474f-a763-4431-8e3d-667908a1c7ab?table=104c6201-b0e7-47aa-b858-83252e2b149f)
