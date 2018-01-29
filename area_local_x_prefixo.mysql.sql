create table area_local_x_prefixo as select distinct convert(concat(ds_prefixo, lpad(nr_inicial, 4 , '0')), unsigned integer) as nr_inicial, convert(concat(ds_prefixo, lpad(nr_final, 4 , '0')) , unsigned integer) as nr_final, ds_sigla_area_local from cnl_central;
create index idx_area_x_prefixo on area_local_x_prefixo (ds_sigla_area_local, nr_inicial, nr_final);
