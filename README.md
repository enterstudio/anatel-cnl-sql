# anatel-cnl-sql

Dados importados da Anatel referente ao CNL. 

Você pode usar esta base de dados para identificar áreas conurbadas (que não precisam utilizar o prefixo DDD nas discagens).

Exemplo de uso:

## Chamada da área conurbada de Porto Alegre para Campo Bom/RS (não usa DDD)
`select case when exists ( select 1 from area_local_x_prefixo where ds_sigla_area_local='PAE' and 5135972158 between nr_inicial and nr_final) then 0 else 1 end as usa_ddd`

## Chamada da área conurbada de Porto Alegre para Tramandaí/RS (usa DDD)
`select case when exists ( select 1 from area_local_x_prefixo where ds_sigla_area_local='PAE' and 5136611155 between nr_inicial and nr_final) then 0 else 1 end as usa_ddd;`

