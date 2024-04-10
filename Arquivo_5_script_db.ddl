-- Gerado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   em:        2024-02-29 18:21:45 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



DROP TABLE t_sgv_atend_sac CASCADE CONSTRAINTS;

DROP TABLE t_sgv_categ_prod CASCADE CONSTRAINTS;

DROP TABLE t_sgv_categ_video CASCADE CONSTRAINTS;

DROP TABLE t_sgv_cliente CASCADE CONSTRAINTS;

DROP TABLE t_sgv_cliente_pf CASCADE CONSTRAINTS;

DROP TABLE t_sgv_cliente_pj CASCADE CONSTRAINTS;

DROP TABLE t_sgv_depto CASCADE CONSTRAINTS;

DROP TABLE t_sgv_func CASCADE CONSTRAINTS;

DROP TABLE t_sgv_item_pedido CASCADE CONSTRAINTS;

DROP TABLE t_sgv_pedido CASCADE CONSTRAINTS;

DROP TABLE t_sgv_produtos CASCADE CONSTRAINTS;

DROP TABLE t_sgv_tel_cliente CASCADE CONSTRAINTS;

DROP TABLE t_sgv_tel_func CASCADE CONSTRAINTS;

DROP TABLE t_sgv_video_produto CASCADE CONSTRAINTS;

DROP TABLE t_sgv_vis_video CASCADE CONSTRAINTS;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE t_sgv_atend_sac (
    cd_chamado         NUMBER(10) NOT NULL,
    cd_produto         NUMBER(10) NOT NULL,
    cd_cliente         NUMBER(10) NOT NULL,
    cd_func            NUMBER(5) NOT NULL,
    ds_chamado         VARCHAR2(4000) NOT NULL,
    dt_aber_chamado    DATE NOT NULL,
    dt_atend_chamado   DATE,
    dur_atend_chamado  NUMBER(5) NOT NULL,
    ds_ret_chamado     VARCHAR2(4000),
    tp_chamado         VARCHAR2(10) NOT NULL,
    st_chamado         CHAR(1) NOT NULL,
    idx_satisf_chamado INTEGER,
    tmp_atend_chamado  NUMBER(4) NOT NULL
);

COMMENT ON TABLE t_sgv_atend_sac IS
    'Tabela mantenedora das informações de atendimento SAC realizados.

cd_chamado -> Código identificador do chamado, composto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

cd_produto -> Código identificador do produto, composto por 10 dgitos numéricos. Informação de acesso interno, sem máscara de dados.

cd_cliente -> Código identificador do cliente, composto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

cd_func -> Código identificador do funcinário. Composto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

cd_depto -> Código identificador do departamento, composto por 5 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

ds_chamado -> Descrição do chamado prodvida pelo cliente, compsta por até 4000 caractéres diversos. Informação de acesso interno, sem máscara de dados. Dados armazenados no padrão InitCap.

dt_aber_chamado -> Data de abertura do chamado no formato DateTime. Informação de acesso interno, sem máscara de dados.

dt_atend_chamado -> Date de atendimento do chamado no formato DateTime. Informação de acesso interno, sem máscara de dados.

dur_atend_chamado -> Duração de atendimento do chamado em minutos, composto por 5 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

ds_ret_chamado -> Descrição do retorno do chamado provida pelo funcionário, composta por até 4000 carácteres diversos. Informação de acesso interno, sem máscara de dados. Dados armazenados no padrão InitCap.

tp_chamado -> Tipo do chamado, podendo ser ''Sugestão'' ou ''Reclamação'', composto por até 10 caractéres. Informação de acesso interno, sem máscara de dados.

st_chamado -> Situação do chamado, podendo ser ''A''  (Aberto), ''E'' (Em andamento), ''C'' (Cancelado), ''F'' (Fechado com sucesso) ou ''X'' (Fechado com instisfação do cliente).

idx_satisf_chamado -> Índice de satisfação do cliente com o atendimento prestado. Composto por um número inteiro entre 1 e 10.Informação de acesso interno, sem máscara de dados.

tmp_atend_chamado -> Tempo entre a abertura do chamado e o atendimento do mesmo, computado em horas. Composto por até 4 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_atend_sac.cd_chamado IS
    'cd_chamado -> Código identificador do chamado, composto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_atend_sac.cd_produto IS
    'cd_produto -> Código identificador do produto, composto por 10 dgitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_atend_sac.cd_cliente IS
    'cd_cliente -> Código identificador do cliente, composto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_atend_sac.cd_func IS
    'cd_func -> Código identificador do funcinário. Composto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_atend_sac.ds_chamado IS
    'ds_chamado -> Descrição do chamado prodvida pelo cliente, compsta por até 4000 caractéres diversos. Informação de acesso interno, sem máscara de dados. Dados armazenados no padrão InitCap.'
    ;

COMMENT ON COLUMN t_sgv_atend_sac.dt_aber_chamado IS
    'dt_aber_chamado -> Data de abertura do chamado no formato DateTime. Informação de acesso interno, sem máscara de dados.';

COMMENT ON COLUMN t_sgv_atend_sac.dt_atend_chamado IS
    'dt_atend_chamado -> Date de atendimento do chamado no formato DateTime. Informação de acesso interno, sem máscara de dados.';

COMMENT ON COLUMN t_sgv_atend_sac.dur_atend_chamado IS
    'dur_atend_chamado -> Duração de atendimento do chamado em minutos, composto por 5 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_atend_sac.ds_ret_chamado IS
    'ds_ret_chamado -> Descrição do retorno do chamado provida pelo funcionário, composta por até 4000 carácteres diversos. Informação de acesso interno, sem máscara de dados. Dados armazenados no padrão InitCap.
';

COMMENT ON COLUMN t_sgv_atend_sac.tp_chamado IS
    'tp_chamado -> Tipo do chamado, podendo ser ''Sugestão'' ou ''Reclamação'', composto por até 10 caractéres. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_atend_sac.st_chamado IS
    'st_chamado -> Situação do chamado, podendo ser ''A''  (Aberto), ''E'' (Em andamento), ''C'' (Cancelado), ''F'' (Fechado com sucesso) ou ''X'' (Fechado com instisfação do cliente).
';

COMMENT ON COLUMN t_sgv_atend_sac.idx_satisf_chamado IS
    'idx_satisf_chamado -> Índice de satisfação do cliente com o atendimento prestado. Composto por um número inteiro entre 1 e 10.Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_atend_sac.tmp_atend_chamado IS
    'tmp_atend_chamado -> Tempo entre a abertura do chamado e o atendimento do mesmo, computado em horas. Composto por até 4 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

ALTER TABLE t_sgv_atend_sac
    ADD CONSTRAINT t_atend_sac_ck_st_chamado CHECK ( st_chamado IN ( 'A', 'E', 'C', 'F', 'X' ) );

ALTER TABLE t_sgv_atend_sac
    ADD CONSTRAINT t_atend_sac_ck_idx_satisf CHECK ( idx_satisf_chamado BETWEEN 1 AND 10 );

ALTER TABLE t_sgv_atend_sac
    ADD CONSTRAINT t_atend_sac_ck_tp_chamado CHECK ( tp_chamado IN ( 'Sugestão', 'Reclamação' ) );

ALTER TABLE t_sgv_atend_sac ADD CONSTRAINT t_sgv_atend_sac_pk PRIMARY KEY ( cd_chamado );

CREATE TABLE t_sgv_categ_prod (
    cd_categoria     NUMBER(5) NOT NULL,
    ds_categoria     VARCHAR2(50) NOT NULL,
    st_categoria     CHAR(1) NOT NULL,
    dt_ini_categoria DATE NOT NULL,
    dt_fim_categoria DATE
);

COMMENT ON TABLE t_sgv_categ_prod IS
    'Tabela mantenedora das informações sobre as categorias de produto existentes.

Composição:

cd_categoria -> Código identificador da categoria. Composto por 5 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

ds_categoria -> Descrição da categoria. Composto por até 20 caracteres diversos. Informação de acesso interno, sem máscara de dados. Dados armazenados no padrão InitCap.

st_categoria -> Status da categoria. Indica se a categoria esta ativa ou não. Recebe os valroes ''A'' (ativo) e ''I'' (inativo). Composto por uma letra.

dt_ini_categoria -> Data de inicio da categoria. Formato Date. Informação de acesso interno, sem máscara de dados.

dt_fim_categoria -> Data fim da categoria. Formato Date. Informação de acesso interno, sem máscara de dados.';

COMMENT ON COLUMN t_sgv_categ_prod.cd_categoria IS
    'cd_categoria -> Código identificador da categoria. Composto por 5 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_categ_prod.ds_categoria IS
    'ds_categoria -> Descrição da categoria. Composto por até 20 caracteres diversos. Informação de acesso interno, sem máscara de dados. Dados armazenados no padrão InitCap.'
    ;

COMMENT ON COLUMN t_sgv_categ_prod.st_categoria IS
    'st_categoria -> Status da categoria. Indica se a categoria esta ativa ou não. Recebe os valroes ''A'' (ativo) e ''I'' (inativo). Composto por uma letra.'
    ;

COMMENT ON COLUMN t_sgv_categ_prod.dt_ini_categoria IS
    'dt_ini_categoria -> Data de inicio da categoria. Formato Date. Informação de acesso interno, sem máscara de dados.
';

COMMENT ON COLUMN t_sgv_categ_prod.dt_fim_categoria IS
    'dt_fim_categoria -> Data fim da categoria. Formato Date. Informação de acesso interno, sem máscara de dados.';

ALTER TABLE t_sgv_categ_prod
    ADD CONSTRAINT t_categ_prod_ck_st_categ CHECK ( ( st_categoria = 'A'
                                                      AND dt_fim_categoria IS NULL )
                                                    OR ( st_categoria = 'D'
                                                         AND dt_fim_categoria IS NOT NULL ) );

ALTER TABLE t_sgv_categ_prod ADD CONSTRAINT t_sgv_categ_prod_pk PRIMARY KEY ( cd_categoria );

ALTER TABLE t_sgv_categ_prod ADD CONSTRAINT t_categ_prod_ds_categ UNIQUE ( ds_categoria );

CREATE TABLE t_sgv_categ_video (
    cd_categoria_video NUMBER(5) NOT NULL,
    ds_categ_video     VARCHAR2(50) NOT NULL,
    st_categ_video     CHAR(1) NOT NULL
);

COMMENT ON TABLE t_sgv_categ_video IS
    'Tabela mantenedora das informações sobre as categorias de vídeos.

Composição:

cd_categ_video -> Código identificador da categoria do video. Composto por 5 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

ds_categ_video -> Descrição da categoria do vídeo. Composto por até 50 caracteres diversos. Informação de acesso interno, sem máscara de dados. Dados armzenados no formato InitCap.

st_categ_video -> Status da categoria do vídeo. Informa se um a categoria esta ativa ou não. Recebe ''A'' (ativa) e ''I'' (inativa). Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_categ_video.cd_categoria_video IS
    'cd_categ_video -> Código identificador da categoria do video. Composto por 5 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_categ_video.ds_categ_video IS
    'ds_categ_video -> Descrição da categoria do vídeo. Composto por até 50 caracteres diversos. Informação de acesso interno, sem máscara de dados. Dados armzenados no formato InitCap.
';

COMMENT ON COLUMN t_sgv_categ_video.st_categ_video IS
    'st_categ_video -> Status da categoria do vídeo. Informa se um a categoria esta ativa ou não. Recebe ''A'' (ativa) e ''I'' (inativa). Informação de acesso interno, sem máscara de dados.'
    ;

ALTER TABLE t_sgv_categ_video
    ADD CONSTRAINT t_categ_video_ck_st_categoria CHECK ( st_categ_video IN ( 'A', 'I' ) );

ALTER TABLE t_sgv_categ_video ADD CONSTRAINT t_categoria_video_pk PRIMARY KEY ( cd_categoria_video );

CREATE TABLE t_sgv_cliente (
    cd_cliente    NUMBER(10) NOT NULL,
    nm_cliente    VARCHAR2(50) NOT NULL,
    qtd_estrlas   NUMBER(2, 1),
    st_cliente    CHAR(1) NOT NULL,
    login_cliente VARCHAR2(50) NOT NULL,
    senha_cliente VARCHAR2(30) NOT NULL,
    tp_cliente    CHAR(1) NOT NULL
);

COMMENT ON TABLE t_sgv_cliente IS
    'Tabela mantenedora de infomações de clientes.

cd_cliente -> Código identificador do cliente. Composto por 10 dígitos númericos. Informação de acesso interno, sem máscara de dados.

nm_cliente -> Nome do cliente. Composto por até 50 caractéres diversos. Informação de acesso interno, sem máscara de dados. Dado armazenado no padrão InitCap.

qtd_estrelas -> Quantidade de estrleas de um cliente. Indica o ranking de um cliente frente aos critérios estabelecidos pela Melhores Compras. Composto por 2 dígtos numéricos, com uma casa decimal.Informação de acesso interno, sem máscara de dados.

st_cliente -> Status do cliente. Indica se o mesmo é ativo ou não. Compsoto por 1 letra, podendo ser ''A'' (Ativo) ou ''I'' (Inativo). Informação de acesso interno, sem máscara de dados.

login_cliente -> Login do cliente. Composto por até 50 caractéres diversos. Infomação de uso restrito, aplicar máscara sobre todos os caractéres não especiais e numéricos, com execeção do primero.
Ex: a*************60@*****.***.**

senha_cliente -> Senah de acesso do cliente. Composto por até 30 caractéres diversos. Informação de uso restrito, aplicar máscara de dados em todo o valor.
Ex: *************

tp_cliente -> Tipo do cliente. Indica se o cliente é Pessoa Física ou Jurídica e pode receber apenas os valores ''F'' ou ''J''. Composto por uma letra. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_cliente.cd_cliente IS
    'cd_cliente -> Código identificador do cliente. Composto por 10 dígitos númericos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_cliente.nm_cliente IS
    'nm_cliente -> Nome do cliente. Composto por até 50 caractéres diversos. Informação de acesso interno, sem máscara de dados. Dado armazenado no padrão InitCap.'
    ;

COMMENT ON COLUMN t_sgv_cliente.qtd_estrlas IS
    'qtd_estrelas -> Quantidade de estrleas de um cliente. Indica o ranking de um cliente frente aos critérios estabelecidos pela Melhores Compras. Composto por 2 dígtos numéricos, com uma casa decimal.Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_cliente.st_cliente IS
    'st_cliente -> Status do cliente. Indica se o mesmo é ativo ou não. Compsoto por 1 letra, podendo ser ''A'' (Ativo) ou ''I'' (Inativo). Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_cliente.login_cliente IS
    'login_cliente -> Login do cliente. Composto por até 50 caractéres diversos. Infomação de uso restrito, aplicar máscara sobre todos os caractéres não especiais e numéricos, com execeção do primero.
Ex: a*************60@*****.***.**';

COMMENT ON COLUMN t_sgv_cliente.senha_cliente IS
    'senha_cliente -> Senah de acesso do cliente. Composto por até 30 caractéres diversos. Informação de uso restrito, aplicar máscara de dados em todo o valor.
Ex: *************';

COMMENT ON COLUMN t_sgv_cliente.tp_cliente IS
    'tp_cliente -> Tipo do cliente. Indica se o cliente é Pessoa Física ou Jurídica e pode receber apenas os valores ''F'' ou ''J''. Composto por uma letra. Informação de acesso interno, sem máscara de dados.'
    ;

ALTER TABLE t_sgv_cliente
    ADD CONSTRAINT t_sgv_cliente_ck_tp_cliente CHECK ( tp_cliente IN ( 'F', 'J' ) );

ALTER TABLE t_sgv_cliente
    ADD CONSTRAINT t_sgv_cliente_ck_st_cliente CHECK ( st_cliente IN ( 'A', 'I' ) );

ALTER TABLE t_sgv_cliente ADD CONSTRAINT t_sgv_cliente_pk PRIMARY KEY ( cd_cliente );

CREATE TABLE t_sgv_cliente_pf (
    cd_cliente          NUMBER(10) NOT NULL,
    cpf_cliente_pf      NUMBER(13) NOT NULL,
    dt_nasc_clliente_pf DATE NOT NULL,
    sexo_cliente_pf     CHAR(1) NOT NULL,
    gen_cliente_pf      VARCHAR2(20)
);

COMMENT ON TABLE t_sgv_cliente_pf IS
    'Tabela mantenedora das informações dos cliente PF.

Composição:

cd_cliente -> Código identificador do cliente. Atributo herdado. Composto por até 10 dígitos númericos. Informação de acesso interno, sem máscara de dados.

cpf_cliente _pf -> Número do CPF do cliente. Composto por até 11 dígitos numéricos. Informação de acesso restrito, aplicar máscara de dados sobre os 8 dígitos posteriores.
Ex: 123xxxxxxxx

dt_nasc_cliente_pf -> Data de nascimento do cliente. Formato Date. Informação de acesso interno, sem máscara de dados.

sexo_cliente_pf -> Sexo biológico do cliente. Composto por 1 letra, sendo ''M'' (masculino) e ''F'' (feminino). Informação de acesso interno, sem máscara de dados.

gen_cliente_pf -> Gênero de identificação do cliente, provido pelo mesmo. Composto por até 20 caractéres diversos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_cliente_pf.cd_cliente IS
    'cd_cliente -> Código identificador do cliente. Atributo herdado. Composto por até 10 dígitos númericos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_cliente_pf.cpf_cliente_pf IS
    'cpf_cliente _pf -> Número do CPF do cliente. Composto por até 11 dígitos numéricos. Informação de acesso restrito, aplicar máscara de dados sobre os 8 dígitos posteriores.
Ex: 123xxxxxxxx';

COMMENT ON COLUMN t_sgv_cliente_pf.dt_nasc_clliente_pf IS
    'dt_nasc_cliente_pf -> Data de nascimento do cliente. Formato Date. Informação de acesso interno, sem máscara de dados.';

COMMENT ON COLUMN t_sgv_cliente_pf.sexo_cliente_pf IS
    'sexo_cliente_pf -> Sexo biológico do cliente. Composto por 1 letra, sendo ''M'' (masculino) e ''F'' (feminino). Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_cliente_pf.gen_cliente_pf IS
    'gen_cliente_pf -> Gênero de identificação do cliente, provido pelo mesmo. Composto por até 20 caractéres diversos. Informação de acesso interno, sem máscara de dados.'
    ;

ALTER TABLE t_sgv_cliente_pf
    ADD CONSTRAINT t_sgv_cliente_pf_ck_sx_clite CHECK ( sexo_cliente_pf IN ( 'M', 'F' ) );

ALTER TABLE t_sgv_cliente_pf ADD CONSTRAINT t_sgv_cliente_pf_pk PRIMARY KEY ( cd_cliente );

CREATE TABLE t_sgv_cliente_pj (
    cd_cliente      NUMBER(10) NOT NULL,
    dt_fundacao_pj  DATE,
    cnpj_cliente_pj NUMBER(14),
    nr_ins_estad_pj NUMBER(9)
);

COMMENT ON TABLE t_sgv_cliente_pj IS
    'Tabela Mantenedora das informações de cliente PJ.

Composição:

cd_cliente -> Código de identificação do cliente. Atributo herdado.Composto por até 10 digitos númericos. Informação de acesso interno, sem máscara de dados.

dt_fundacao_pj -> Data de fundação da PJ. Formato Date. Informação de acesso interno, sem máscara de dados.

cnpj_cliente_pp -> CNPJ do cliente PJ. Composto por 14 digitos numéricos. Informação de acesso restrito, aplocar máscara de dados sobre os 11 digitos posteriores.
Ex: 123***********

nr_ins_estadual_pj -> Inscrição estadual do cliente PJ. Composto por até 9 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_cliente_pj.cd_cliente IS
    'cd_cliente -> Código de identificação do cliente. Atributo herdado.Composto por até 10 digitos númericos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_cliente_pj.dt_fundacao_pj IS
    'dt_fundacao_pj -> Data de fundação da PJ. Formato Date. Informação de acesso interno, sem máscara de dados.';

COMMENT ON COLUMN t_sgv_cliente_pj.cnpj_cliente_pj IS
    'cnpj_cliente_pp -> CNPJ do cliente PJ. Composto por 14 digitos numéricos. Informação de acesso restrito, aplocar máscara de dados sobre os 11 digitos posteriores.
Ex: 123***********';

COMMENT ON COLUMN t_sgv_cliente_pj.nr_ins_estad_pj IS
    'nr_ins_estadual_pj -> Inscrição estadual do cliente PJ. Composto por até 9 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

ALTER TABLE t_sgv_cliente_pj ADD CONSTRAINT t_sgv_cliente_pj_pk PRIMARY KEY ( cd_cliente );

CREATE TABLE t_sgv_depto (
    cd_depto NUMBER(5) NOT NULL,
    nm_depto VARCHAR2(50) NOT NULL,
    sg_depto CHAR(3) NOT NULL,
    st_depto CHAR(1) NOT NULL
);

COMMENT ON TABLE t_sgv_depto IS
    'Tabela mantenedora de informações departamentais.

Composição:

cd_depto -> Código do departamento, composto por 5 dígitos númericos. Informação de acesso interno, sem máscara de dados.

nm_depto -> Nome do departamento, compsoto por até 50 caractéres diversos. Informação de acesos interno, sem máscara de dados.

sg_depto -> Sigla do departamento, composto por 3 letras. Infomação de acesso interno, sem máscara de dados.

st_depto -> Status do departamento, composto por 1 letra, indica se o departamento esta ativo ou não. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_depto.cd_depto IS
    'cd_depto -> Código do departamento, composto por 5 dígitos númericos. Informação de acesso interno, sem máscara de dados.';

COMMENT ON COLUMN t_sgv_depto.nm_depto IS
    'nm_depto -> Nome do departamento, compsoto por até 50 caractéres diversos. Informação de acesos interno, sem máscara de dados.';

COMMENT ON COLUMN t_sgv_depto.sg_depto IS
    'sg_depto -> Sigla do departamento, composto por 3 letras. Infomação de acesso interno, sem máscara de dados.';

COMMENT ON COLUMN t_sgv_depto.st_depto IS
    'st_depto -> Status do departamento, composto por 1 letra, indica se o departamento esta ativo ou não. Informação de acesso interno, sem máscara de dados.'
    ;

ALTER TABLE t_sgv_depto ADD CONSTRAINT t_sgv_depto_pk PRIMARY KEY ( cd_depto );

CREATE TABLE t_sgv_func (
    cd_func      NUMBER(5) NOT NULL,
    cd_depto     NUMBER(5) NOT NULL,
    nm_func      VARCHAR2(50) NOT NULL,
    cpf_func     NUMBER(11) NOT NULL,
    dt_nasc_func DATE NOT NULL,
    email_func   VARCHAR2(50) NOT NULL,
    cargo_func   VARCHAR2(20) NOT NULL
);

COMMENT ON TABLE t_sgv_func IS
    'Tebela mantenedora das informações pessoais dos funcionários.

Composição:

cd_depto -> Código do departamento, composto por 5 dígitos numéricos. Infomação de acesso interno, sem máscara de dados.

cd_func -> Código identificador do funcionário, composto 5 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

nm_func -> Nome do funcionário, composto por até 50 caractéres. Informação de acesso interno, sem máscara de dados.

cpf_func -> Número do CPF do funcionário, composto por 11  digitos numéricos. Infomação de acesso restrito, aplicar máscara de dados sbore os 8 dígitos posteriores.
Ex: 123xxxxxxxx

dt_nasc_func -> Data de nascimento do funcionário em formato Date. Informação de acesso interno, sem máscara de dados.

email_func -> Email do funcionário, composto por até 50 caractéres diversos. Informação de acesso interno, sem máscara de dados.

cargo_func -> Cargo do funcionário, composto por até 20 caractéres diversos. Informação de acesso interno, sem máscara de dados.';

COMMENT ON COLUMN t_sgv_func.cd_func IS
    'cd_func -> Código identificador do funcionário, composto 5 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_func.cd_depto IS
    'cd_depto -> Código do departamento, composto por 5 dígitos numéricos. Infomação de acesso interno, sem máscara de dados.';

COMMENT ON COLUMN t_sgv_func.nm_func IS
    'nm_func -> Nome do funcionário, composto por até 50 caractéres. Informação de acesso interno, sem máscara de dados.';

COMMENT ON COLUMN t_sgv_func.cpf_func IS
    'cpf_func -> Número do CPF do funcionário, composto por 11  digitos numéricos. Infomação de acesso restrito, aplicar máscara de dados sbore os 8 dígitos posteriores.
Ex: 123xxxxxxxx';

COMMENT ON COLUMN t_sgv_func.dt_nasc_func IS
    'dt_nasc_func -> Data de nascimento do funcionário em formato Date. Informação de acesso interno, sem máscara de dados.';

COMMENT ON COLUMN t_sgv_func.email_func IS
    'email_func -> Email do funcionário, composto por até 50 caractéres diversos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_func.cargo_func IS
    'cargo_func -> Cargo do funcionário, composto por até 20 caractéres diversos. Informação de acesso interno, sem máscara de dados.'
    ;

ALTER TABLE t_sgv_func ADD CONSTRAINT t_sgv_func_pk PRIMARY KEY ( cd_func );

ALTER TABLE t_sgv_func ADD CONSTRAINT t_sgv_func_un_cpf_func UNIQUE ( cpf_func );

CREATE TABLE t_sgv_item_pedido (
    cd_item_pedido NUMBER(10) NOT NULL,
    cd_produto     NUMBER(10) NOT NULL,
    cd_pedido      NUMBER(10) NOT NULL,
    qtd_itens      INTEGER NOT NULL
);

COMMENT ON TABLE t_sgv_item_pedido IS
    'Tabela mantenedora de informações sobre itens pedidos.

Composição:

cd_item_produto -> Código identificador do conjunto de itens pedidos. Compsoto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

cd_produto -> Código identificador do produto. Composto por até 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

cd_pedido -> Código de identificação do pedido. Composto por até 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

qtd_itens -> Quantidade dos produtos solicitados. Formato Integer. Informação de acesso interno, sem máscara de dados.';

COMMENT ON COLUMN t_sgv_item_pedido.cd_item_pedido IS
    'cd_item_produto -> Código identificador do conjunto de itens pedidos. Compsoto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_item_pedido.cd_produto IS
    'cd_produto -> Código identificador do produto. Composto por até 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_item_pedido.cd_pedido IS
    'cd_pedido -> Código de identificação do pedido. Composto por até 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_item_pedido.qtd_itens IS
    'qtd_itens -> Quantidade dos produtos solicitados. Formato Integer. Informação de acesso interno, sem máscara de dados.';

ALTER TABLE t_sgv_item_pedido ADD CONSTRAINT t_sgv_item_pedido_pk PRIMARY KEY ( cd_item_pedido );

CREATE TABLE t_sgv_pedido (
    cd_pedido  NUMBER(10) NOT NULL,
    cd_cliente NUMBER(10) NOT NULL,
    dt_pedido  DATE NOT NULL,
    st_pedido  CHAR(1) NOT NULL
);

COMMENT ON TABLE t_sgv_pedido IS
    'Tabela mantenedora das informaões de pedidos realizados por clientes.

Composição:

cd_pedido -> Código identificador do pedido. Composto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

cd_cliente -> Código identificador do cliente. Composto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

dt_pedido -> Data e hora do pedido. Formato DateTime. Informação de acesso interno, sem máscara de dados.

st_pedido -> Situação do pedido, podendo ser ''A'' (Aguardando Pagamento), ''E'' (Em preparação), ''V'' (Enviado), ''R'' (Recebido), ''D'' (Devolvido), ''X'' (Extraviado). Composto por 1 letra. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_pedido.cd_pedido IS
    'cd_pedido -> Código identificador do pedido. Composto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_pedido.cd_cliente IS
    'cd_cliente -> Código identificador do cliente. Composto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_pedido.dt_pedido IS
    'dt_pedido -> Data e hora do pedido. Formato DateTime. Informação de acesso interno, sem máscara de dados.';

COMMENT ON COLUMN t_sgv_pedido.st_pedido IS
    'st_pedido -> Situação do pedido, podendo ser ''A'' (Aguardando Pagamento), ''E'' (Em preparação), ''V'' (Enviado), ''R'' (Recebido), ''D'' (Devolvido), ''X'' (Extraviado). Composto por 1 letra. Informação de acesso interno, sem máscara de dados.'
    ;

ALTER TABLE t_sgv_pedido
    ADD CONSTRAINT t_sgv_pedido_ck_st_pedido CHECK ( st_pedido IN ( 'A', 'E', 'V', 'R', 'D',
                                                                    'X' ) );

ALTER TABLE t_sgv_pedido ADD CONSTRAINT t_sgv_pedido_pk PRIMARY KEY ( cd_pedido );

CREATE TABLE t_sgv_produtos (
    cd_produto           NUMBER(10) NOT NULL,
    cd_categoria         NUMBER(5) NOT NULL,
    ds_produto           VARCHAR2(20) NOT NULL,
    ds_produto_detalhado VARCHAR2(50) NOT NULL,
    cd_barras_produto    NUMBER(13),
    pr_unit_produto      NUMBER(7, 2) NOT NULL,
    st_produto           CHAR(1) NOT NULL
);

COMMENT ON TABLE t_sgv_produtos IS
    'Tabela mantenedora das informações sobre os produtos comercializados.

Composição:

cd_produto -> Código de identificação do produto. Composto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

cd_categoria -> Código identificador da categoria. Composto por até 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

ds_produto -> Descrição  simplicada do produto. Composto por até 20 caracteres diversos. Informação de acesso interno, sem máscara de dados. Dado armazenado no formato InitCap.

ds_produto_detalhado -> Descrição detalhada do produto. Composto por até 50 caracteres diversos. Informação de acesso interno, sem máscara de dados. Dado armazenado no formato InitCap.

cd_barras_produto -> Código de barras do produto. Composto por 13 digitos numéricos. Informação de acesso interno, sem máscara de dados.

pr_unit_produto -> Preço unitário do produto. Composto por 7 digitos os quais 2 são decimais. Informação de acesso interno, sem máscara de dados.

st_produto -> Status do produto. Indica se o mesmo encontra-se ativo ou não. Recebe os valores ''A'' (Ativo),  ''I'' (Inativo) ou ''P'' (prospecção). Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_produtos.cd_produto IS
    'cd_produto -> Código de identificação do produto. Composto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_produtos.cd_categoria IS
    'cd_categoria -> Código identificador da categoria. Composto por até 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_produtos.ds_produto IS
    'ds_produto -> Descrição  simplicada do produto. Composto por até 20 caracteres diversos. Informação de acesso interno, sem máscara de dados. Dado armazenado no formato InitCap.'
    ;

COMMENT ON COLUMN t_sgv_produtos.ds_produto_detalhado IS
    'ds_produto_detalhado -> Descrição detalhada do produto. Composto por até 50 caracteres diversos. Informação de acesso interno, sem máscara de dados. Dado armazenado no formato InitCap.'
    ;

COMMENT ON COLUMN t_sgv_produtos.cd_barras_produto IS
    'cd_barras_produto -> Código de barras do produto. Composto por 13 digitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_produtos.pr_unit_produto IS
    'pr_unit_produto -> Preço unitário do produto. Composto por 7 digitos os quais 2 são decimais. Informação de acesso interno, sem máscara de dados.
';

COMMENT ON COLUMN t_sgv_produtos.st_produto IS
    'st_produto -> Status do produto. Indica se o mesmo encontra-se ativo ou não. Recebe os valores ''A'' (Ativo),  ''I'' (Inativo) ou ''P'' (prospecção). Informação de acesso interno, sem máscara de dados.'
    ;

ALTER TABLE t_sgv_produtos
    ADD CONSTRAINT t_sgv_produtos_ck_st_prod CHECK ( st_produto IN ( 'A', 'I' ) );

ALTER TABLE t_sgv_produtos ADD CONSTRAINT t_sgv_produtos_pk PRIMARY KEY ( cd_produto );

ALTER TABLE t_sgv_produtos ADD CONSTRAINT t_sgv_produtos_un_ds_prod UNIQUE ( ds_produto );

CREATE TABLE t_sgv_tel_cliente (
    cd_cliente   NUMBER(10) NOT NULL,
    cd_telefone  NUMBER(5) NOT NULL,
    ddd_telefone NUMBER(2) NOT NULL,
    nr_telefone  NUMBER(9) NOT NULL
);

COMMENT ON TABLE t_sgv_tel_cliente IS
    'Tabela mantenedora das informações telefonicas dos clientes.

Composição:

cd_cliente -> Código identificador do cliente. Composto por até 10 digitos numéricos. Informação de acesso interno, sem máscara de dados.

cd_telefone -> Código identificador do telefone do cliente. Composto por até 5 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

DDD_telefone -> DDD do telefone do cliente. Composto por 2 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

nr_telefone -> Número do telefone do cliente. Composto por 9 dígitos numéricos. Informação de acesso interno, sem máscara de dados.';

COMMENT ON COLUMN t_sgv_tel_cliente.cd_cliente IS
    'cd_cliente -> Código identificador do cliente. Composto por até 10 digitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_tel_cliente.cd_telefone IS
    'cd_telefone -> Código identificador do telefone do cliente. Composto por até 5 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_tel_cliente.ddd_telefone IS
    'DDD_telefone -> DDD do telefone do cliente. Composto por 2 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_tel_cliente.nr_telefone IS
    'nr_telefone -> Número do telefone do cliente. Composto por 9 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

ALTER TABLE t_sgv_tel_cliente ADD CONSTRAINT t_tel_cliente_pk PRIMARY KEY ( cd_telefone,
                                                                            cd_cliente );

CREATE TABLE t_sgv_tel_func (
    cd_func           NUMBER(5) NOT NULL,
    cd_tel_func       NUMBER(5) NOT NULL,
    ddd_telefone_func NUMBER(2) NOT NULL,
    nr_telefone_func  NUMBER(9) NOT NULL
);

COMMENT ON TABLE t_sgv_tel_func IS
    'Tabela mantenedora dos telefones dos funcionários da Melhores compras.

Composição:

cd_func -> Código do funcionário composto por 5 dígitos númericos. Infomarção de acesso interno, sem máscara de dados.

cd_depto -> Código do departamento composto por 5 dígitos númericos. Infomação de acesso interno, sem máscara de dados.

cd_tel_func -> Código de identificação do telefone do funcionário composto por 5 dígitos númericos. Infomação de acesso interno, sem máscara de dados.

DDD_telefone_func -> DDD do telefone do funcionário composto por dois dígitos númericos. Infomação de acesso interno, sem máscara de dados.

nr_telefone_func -> Número de telefone do funcionário, composto por 9 dígitos númericos. Informação de  acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_tel_func.cd_func IS
    'cd_func -> Código do funcionário composto por 5 dígitos númericos. Infomarção de acesso interno, sem máscara de dados.';

COMMENT ON COLUMN t_sgv_tel_func.cd_tel_func IS
    'cd_tel_func -> Código de identificação do telefone do funcionário composto por 5 dígitos númericos. Infomação de acesso interno, sem máscara de dados.
';

COMMENT ON COLUMN t_sgv_tel_func.ddd_telefone_func IS
    'DDD_telefone_func -> DDD do telefone do funcionário composto por dois dígitos númericos. Infomação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_tel_func.nr_telefone_func IS
    'nr_telefone_func -> Número de telefone do funcionário, composto por 9 dígitos númericos. Informação de  acesso interno, sem máscara de dados.'
    ;

ALTER TABLE t_sgv_tel_func ADD CONSTRAINT t_tel_func_pk PRIMARY KEY ( cd_func,
                                                                      cd_tel_func );

CREATE TABLE t_sgv_video_produto (
    cd_produto         NUMBER(10) NOT NULL,
    cd_video           NUMBER(5) NOT NULL,
    cd_categoria_video NUMBER(5) NOT NULL,
    st_video           CHAR(1) NOT NULL,
    dt_cadastro_video  DATE NOT NULL
);

COMMENT ON TABLE t_sgv_video_produto IS
    'Tabela mantenedora de informações do video do produto.

Composição:

cd_produto -> Código identificador do produto. Composto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

cd_video -> Código identificador do vídeo. Composto por 5 digitos numéricos. Informação de acesso interno, sem máscara de dados.

cd_categoria_video -> Código identificador da categoria do vídeo. Composto por 5 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

st_video -> Status  do vídeo. Recebe os valores ''A'' (Ativos), ''I'' (Inativo) e ''P'' (Prospecção). Composto por 1 letra. Informação de acesso interno, sem máscara de dados.

dt_cadastro_video -> Data de cadastro do vídeo na plataforma. Formato Date. Informação de acesso interno, sem máscara de dados.';

COMMENT ON COLUMN t_sgv_video_produto.cd_produto IS
    'cd_produto -> Código identificador do produto. Composto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_video_produto.cd_video IS
    'cd_video -> Código identificador do vídeo. Composto por 5 digitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_video_produto.cd_categoria_video IS
    'cd_categoria_video -> Código identificador da categoria do vídeo. Composto por 5 dígitos numéricos. Informação de acesso interno, sem máscara de dados.
';

COMMENT ON COLUMN t_sgv_video_produto.st_video IS
    'st_video -> Status  do vídeo. Recebe os valores ''A'' (Ativos), ''I'' (Inativo) e ''P'' (Prospecção). Composto por 1 letra. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_video_produto.dt_cadastro_video IS
    'dt_cadastro_video -> Data de cadastro do vídeo na plataforma. Formato Date. Informação de acesso interno, sem máscara de dados.'
    ;

ALTER TABLE t_sgv_video_produto
    ADD CONSTRAINT t_video_prod_st_video CHECK ( st_video IN ( 'A', 'I', 'P' ) );

ALTER TABLE t_sgv_video_produto ADD CONSTRAINT t_sgv_video_produto_pk PRIMARY KEY ( cd_video,
                                                                                    cd_produto );

CREATE TABLE t_sgv_vis_video (
    cd_visualizacao NUMBER(10) NOT NULL,
    cd_produto      NUMBER(10) NOT NULL,
    cd_cliente      NUMBER(10) NOT NULL,
    dt_visualizacao DATE NOT NULL
);

COMMENT ON TABLE t_sgv_vis_video IS
    'Tabela mantenedora de informações sobre os vídeos de produtos.

Composição:

cd_visualização -> Código identificador da visualização do vídeo. Composto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

cd_produto -> Código identificador do produto. Composto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

cd_cliente -> Código identificador do cliente. Composto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.

dt_visualização -> Data de visuaização do cliente. Formato DateTime. Informação de acesso interno, sem máscara de dados.';

COMMENT ON COLUMN t_sgv_vis_video.cd_visualizacao IS
    'cd_visualização -> Código identificador da visualização do vídeo. Composto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_vis_video.cd_produto IS
    'cd_produto -> Código identificador do produto. Composto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_vis_video.cd_cliente IS
    'cd_cliente -> Código identificador do cliente. Composto por 10 dígitos numéricos. Informação de acesso interno, sem máscara de dados.'
    ;

COMMENT ON COLUMN t_sgv_vis_video.dt_visualizacao IS
    'dt_visualização -> Data de visuaização do cliente. Formato DateTime. Informação de acesso interno, sem máscara de dados.';

ALTER TABLE t_sgv_vis_video ADD CONSTRAINT t_sgv_vis_video_pk PRIMARY KEY ( cd_visualizacao );

ALTER TABLE t_sgv_atend_sac
    ADD CONSTRAINT t_atend_sac_clie_fk FOREIGN KEY ( cd_cliente )
        REFERENCES t_sgv_cliente ( cd_cliente );

ALTER TABLE t_sgv_atend_sac
    ADD CONSTRAINT t_atend_sac_func_fk FOREIGN KEY ( cd_func )
        REFERENCES t_sgv_func ( cd_func );

ALTER TABLE t_sgv_atend_sac
    ADD CONSTRAINT t_atend_sac_prod_fk FOREIGN KEY ( cd_produto )
        REFERENCES t_sgv_produtos ( cd_produto );

ALTER TABLE t_sgv_cliente_pf
    ADD CONSTRAINT t_clie_pf_clie_fk FOREIGN KEY ( cd_cliente )
        REFERENCES t_sgv_cliente ( cd_cliente );

ALTER TABLE t_sgv_cliente_pj
    ADD CONSTRAINT t_clie_pj_clie_fk FOREIGN KEY ( cd_cliente )
        REFERENCES t_sgv_cliente ( cd_cliente );

ALTER TABLE t_sgv_func
    ADD CONSTRAINT t_func_depto_fk FOREIGN KEY ( cd_depto )
        REFERENCES t_sgv_depto ( cd_depto );

ALTER TABLE t_sgv_item_pedido
    ADD CONSTRAINT t_item_pedido_prod_fk FOREIGN KEY ( cd_produto )
        REFERENCES t_sgv_produtos ( cd_produto );

ALTER TABLE t_sgv_pedido
    ADD CONSTRAINT t_pedido_clie_fk FOREIGN KEY ( cd_cliente )
        REFERENCES t_sgv_cliente ( cd_cliente );

ALTER TABLE t_sgv_item_pedido
    ADD CONSTRAINT t_pedido_pedido_fk FOREIGN KEY ( cd_pedido )
        REFERENCES t_sgv_pedido ( cd_pedido );

ALTER TABLE t_sgv_produtos
    ADD CONSTRAINT t_prod_categ_prod_fk FOREIGN KEY ( cd_categoria )
        REFERENCES t_sgv_categ_prod ( cd_categoria );

ALTER TABLE t_sgv_tel_cliente
    ADD CONSTRAINT t_tel_clie_clie_fk FOREIGN KEY ( cd_cliente )
        REFERENCES t_sgv_cliente ( cd_cliente );

ALTER TABLE t_sgv_tel_func
    ADD CONSTRAINT t_tel_func_func_fk FOREIGN KEY ( cd_func )
        REFERENCES t_sgv_func ( cd_func );

ALTER TABLE t_sgv_video_produto
    ADD CONSTRAINT t_video_prod_categ_video_fk FOREIGN KEY ( cd_categoria_video )
        REFERENCES t_sgv_categ_video ( cd_categoria_video );

ALTER TABLE t_sgv_video_produto
    ADD CONSTRAINT t_video_prod_prod_fk FOREIGN KEY ( cd_produto )
        REFERENCES t_sgv_produtos ( cd_produto );

ALTER TABLE t_sgv_vis_video
    ADD CONSTRAINT t_vis_video_clie_fk FOREIGN KEY ( cd_cliente )
        REFERENCES t_sgv_cliente ( cd_cliente );

ALTER TABLE t_sgv_vis_video
    ADD CONSTRAINT t_vis_video_prod_fk FOREIGN KEY ( cd_produto )
        REFERENCES t_sgv_produtos ( cd_produto );

CREATE OR REPLACE TRIGGER arc_arc_1_t_sgv_cliente_pf BEFORE
    INSERT OR UPDATE OF cd_cliente ON t_sgv_cliente_pf
    FOR EACH ROW
DECLARE
    d CHAR(1);
BEGIN
    SELECT
        a.tp_cliente
    INTO d
    FROM
        t_sgv_cliente a
    WHERE
        a.cd_cliente = :new.cd_cliente;

    IF ( d IS NULL OR d <> 'F' ) THEN
        raise_application_error(-20223, 'FK T_CLIE_PF_CLIE_FK in Table T_SGV_CLIENTE_PF violates Arc constraint on Table T_SGV_CLIENTE - discriminator column tp_cliente doesn''t have value ''F'''
        );
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER arc_arc_1_t_sgv_cliente_pj BEFORE
    INSERT OR UPDATE OF cd_cliente ON t_sgv_cliente_pj
    FOR EACH ROW
DECLARE
    d CHAR(1);
BEGIN
    SELECT
        a.tp_cliente
    INTO d
    FROM
        t_sgv_cliente a
    WHERE
        a.cd_cliente = :new.cd_cliente;

    IF ( d IS NULL OR d <> 'J' ) THEN
        raise_application_error(-20223, 'FK T_CLIE_PJ_CLIE_FK in Table T_SGV_CLIENTE_PJ violates Arc constraint on Table T_SGV_CLIENTE - discriminator column tp_cliente doesn''t have value ''J'''
        );
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE SEQUENCE t_sgv_atend_sac_cd_chamado_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER t_sgv_atend_sac_cd_chamado_trg BEFORE
    INSERT ON t_sgv_atend_sac
    FOR EACH ROW
    WHEN ( new.cd_chamado IS NULL )
BEGIN
    :new.cd_chamado := t_sgv_atend_sac_cd_chamado_seq.nextval;
END;
/

CREATE SEQUENCE t_sgv_item_pedido_cd_item_pedi START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER t_sgv_item_pedido_cd_item_pedi BEFORE
    INSERT ON t_sgv_item_pedido
    FOR EACH ROW
    WHEN ( new.cd_item_pedido IS NULL )
BEGIN
    :new.cd_item_pedido := t_sgv_item_pedido_cd_item_pedi.nextval;
END;
/

CREATE SEQUENCE t_sgv_pedido_cd_pedido_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER t_sgv_pedido_cd_pedido_trg BEFORE
    INSERT ON t_sgv_pedido
    FOR EACH ROW
    WHEN ( new.cd_pedido IS NULL )
BEGIN
    :new.cd_pedido := t_sgv_pedido_cd_pedido_seq.nextval;
END;
/

CREATE SEQUENCE t_sgv_produtos_cd_produto_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER t_sgv_produtos_cd_produto_trg BEFORE
    INSERT ON t_sgv_produtos
    FOR EACH ROW
    WHEN ( new.cd_produto IS NULL )
BEGIN
    :new.cd_produto := t_sgv_produtos_cd_produto_seq.nextval;
END;
/



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            15
-- CREATE INDEX                             0
-- ALTER TABLE                             45
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           6
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          4
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
