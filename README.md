# Projeto Aplicado I - Mackenzie - 2023.02

Este repositório contém o trabalho de análise exploratória de dados desenvolvido no âmbito da disciplina Projeto Aplicado I, do curso de Ciência de Dados da Universidade Presbiteriana Mackenzie. O trabalho possui como tema o Objetivo de Desenvolvimento Sustentável (ODS) número 12: Produção e Consumo Responsáveis, tendo como objetivo examinar padrões e tendências relacionadas às práticas de produção e consumo agrícolas no Brasil, contribuindo para a compreensão de padrões produtivos e a promoção de comportamentos mais responsáveis em relação aos recursos naturais e ao meio ambiente.

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

| Nome                   | Contato |
|------------------------|---------|
| Felipe José da Cunha   |         |
| Hideki Nakamura        |         |
| Natália Françozo       |         |
| Nícolas Pereira Cabral |         |
| Vitor Baldoino         |         |

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
> TODO: Adicionar links das tabelas usadas para montar o trabalho.