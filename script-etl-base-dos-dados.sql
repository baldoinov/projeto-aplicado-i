/*Consulta da Pesquisa Agrícola Municipal (PAM)

- (area_plantada x rendimento_medio / 1000) - quantidade_produzida

*/

SELECT 
    ano,
    sigla_uf,
    produto,
    SUM(area_plantada) AS area_plantada,
    SUM(area_colhida) AS area_colhida,
    SUM(quantidade_produzida) AS quantidade_produzida,
    SUM((area_plantada * (rendimento_medio / 1000)) - quantidade_produzida) AS perdas,
    SUM(valor_producao) AS valor_producao
FROM `basedosdados.br_ibge_pam.municipio_lavouras_permanentes`
WHERE (ano >= 2010 AND ano <= 2017) AND
produto IN ("Café (em grão) Total")
GROUP BY ano, sigla_uf, produto
ORDER BY ano, sigla_uf;


/*Consulta do Censo Agropecuário*/

SELECT 
    ano,
    sigla_uf,
    SUM(area_nao_utilizada) AS area_nao_utilizada,
    SUM(quantidade_estabelecimentos_cafe) AS quantidade_estabelecimentos_cafe,
    SUM(area_cafe) AS area_cafe,
    SUM(producao_cafe) AS producao_cafe,
    SUM(valor_total_producao_cafe) AS valor_total_producao_cafe,
    SUM(despesa_total) AS despesa_total_comparacao,
    SUM(despesa_sementes + despesa_arrendamentos + despesa_salarios + despesa_defensivos + despesa_cotas) AS despesa_total,
    SUM(despesa_defensivos) AS despesa_defensivos,
    SUM(quantidade_tratores) AS quantidade_tratores,
    SUM(quantidade_maquina_colheita) AS quantidade_maquina_colheita,
    SUM(quantidade_maquinas_plantio) AS quantidade_maquinas_plantio
FROM `basedosdados.br_ibge_censo_agropecuario.municipio`
WHERE (ano >= 2010 AND ano <= 2017)
GROUP BY ano, sigla_uf
ORDER BY ano, sigla_uf;

/*Consulta do Sistema de Estimativas de Emissões e Remoções de Gases de Efeito Estufa (SEEG) */

SELECT  
    *
FROM `basedosdados.br_seeg_emissoes.uf`
WHERE (ano >= 2010 AND ano <= 2017) AND
atividade_economica = "AGR"
ORDER BY ano, sigla_uf;

/*nivel_1 = "Agropecuária" AND
nivel_2 IN ("Queima de Resíduos Agrícolas", "Solos Manejados", "Alterações de Uso do Solo", "Remoção por Vegetação Secundária", "Resíduos Sólidos", "Emissões pela Queima de Combustíveis") AND
nivel_3 IN ("Agropecuário", "Diretas", "Indiretas") AND*/