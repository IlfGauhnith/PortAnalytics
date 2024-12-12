SELECT
    dados.ano as ano,
    dados.sigla_uf AS sigla_uf,
    diretorio_sigla_uf.nome AS sigla_uf_nome,
    dados.id_municipio AS id_municipio,
    diretorio_id_municipio.nome AS id_municipio_nome,
    dados.produto as produto,
    dados.area_destinada_colheita as area_destinada_colheita,
    dados.area_colhida as area_colhida,
    dados.quantidade_produzida as quantidade_produzida,
    dados.rendimento_medio_producao as rendimento_medio_producao,
    dados.valor_producao as valor_producao
FROM `basedosdados.br_ibge_pam.lavoura_permanente` AS dados
LEFT JOIN (SELECT DISTINCT sigla,nome  FROM `basedosdados.br_bd_diretorios_brasil.uf`) AS diretorio_sigla_uf
    ON dados.sigla_uf = diretorio_sigla_uf.sigla
LEFT JOIN (SELECT DISTINCT id_municipio,nome  FROM `basedosdados.br_bd_diretorios_brasil.municipio`) AS diretorio_id_municipio
    ON dados.id_municipio = diretorio_id_municipio.id_municipio