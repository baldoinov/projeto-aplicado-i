import numpy as np
import pandas as pd
import geopandas as gpd


def criar_base_sot():
    # Tratamento da Pesquisa Agrícola Municipal (PAM)
    df_pesquisa_agricola = pd.read_csv("dados/dados-pesquisa-agricola-municipal.csv")
    df_pesquisa_agricola["perdas"] = df_pesquisa_agricola["perdas"].clip(lower=0)
    df_pesquisa_agricola["produto"] = df_pesquisa_agricola["produto"].replace({"Café (em grão) Total": "Café"})

    # Tratamento da Censo Agropecuário
    df_censo_agropecuario = pd.read_csv("dados/dados-censo-agropecuario.csv")
    df_censo_agropecuario["proporcao_despesa_defensivos"] = (df_censo_agropecuario["despesa_defensivos"] / df_censo_agropecuario["despesa_total"])

    # Sistema de Estimativa de Emissoes
    df_estimativa_de_emissoes = pd.read_csv("dados/dados-sistema-de-estimativa-de-emissoes.csv")
    df_estimativa_de_emissoes = df_estimativa_de_emissoes[df_estimativa_de_emissoes["nivel_6"].isin(["Outras Culturas", "Solos orgânicos", "Solos orgânicos"])]
    df_estimativa_de_emissoes = df_estimativa_de_emissoes.pivot_table(index=["ano", "sigla_uf"], values="emissao").reset_index()

    # Informacoes Geograficas
    df_geo = gpd.read_file("dados/BRASIL_UFS/")
    df_geo = df_geo.rename({"SIGLA": "sigla_uf", "NM_UF": "nome_uf", "NM_REGIAO": "nome_regiao"}, axis=1)

    df = pd.merge(df_pesquisa_agricola, df_estimativa_de_emissoes, how="left", on=["sigla_uf", "ano"],)
    df = pd.merge(df, df_censo_agropecuario, how="left", on=["sigla_uf", "ano"])
    df = pd.merge(df, df_geo, how="left", on=["sigla_uf"])

    df = df[
        [
            "ano",
            "sigla_uf",
            "nome_uf",
            "nome_regiao",
            "produto",
            "area_plantada",
            "area_colhida",
            "quantidade_produzida",
            "perdas",
            "valor_producao",
            "emissao",
            "area_nao_utilizada",
            "quantidade_estabelecimentos_cafe",
            "area_cafe",
            "producao_cafe",
            "valor_total_producao_cafe",
            "despesa_total_comparacao",
            "despesa_total",
            "despesa_defensivos",
            "quantidade_tratores",
            "quantidade_maquina_colheita",
            "quantidade_maquinas_plantio",
            "proporcao_despesa_defensivos",
            "geometry",
        ]
    ]

    print(df.shape)

    return df
