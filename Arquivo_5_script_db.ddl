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
    'Tabela mantenedora das informa��es de atendimento SAC realizados.

cd_chamado -> C�digo identificador do chamado, composto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

cd_produto -> C�digo identificador do produto, composto por 10 dgitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

cd_cliente -> C�digo identificador do cliente, composto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

cd_func -> C�digo identificador do funcin�rio. Composto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

cd_depto -> C�digo identificador do departamento, composto por 5 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

ds_chamado -> Descri��o do chamado prodvida pelo cliente, compsta por at� 4000 caract�res diversos. Informa��o de acesso interno, sem m�scara de dados. Dados armazenados no padr�o InitCap.

dt_aber_chamado -> Data de abertura do chamado no formato DateTime. Informa��o de acesso interno, sem m�scara de dados.

dt_atend_chamado -> Date de atendimento do chamado no formato DateTime. Informa��o de acesso interno, sem m�scara de dados.

dur_atend_chamado -> Dura��o de atendimento do chamado em minutos, composto por 5 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

ds_ret_chamado -> Descri��o do retorno do chamado provida pelo funcion�rio, composta por at� 4000 car�cteres diversos. Informa��o de acesso interno, sem m�scara de dados. Dados armazenados no padr�o InitCap.

tp_chamado -> Tipo do chamado, podendo ser ''Sugest�o'' ou ''Reclama��o'', composto por at� 10 caract�res. Informa��o de acesso interno, sem m�scara de dados.

st_chamado -> Situa��o do chamado, podendo ser ''A''  (Aberto), ''E'' (Em andamento), ''C'' (Cancelado), ''F'' (Fechado com sucesso) ou ''X'' (Fechado com instisfa��o do cliente).

idx_satisf_chamado -> �ndice de satisfa��o do cliente com o atendimento prestado. Composto por um n�mero inteiro entre 1 e 10.Informa��o de acesso interno, sem m�scara de dados.

tmp_atend_chamado -> Tempo entre a abertura do chamado e o atendimento do mesmo, computado em horas. Composto por at� 4 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_atend_sac.cd_chamado IS
    'cd_chamado -> C�digo identificador do chamado, composto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_atend_sac.cd_produto IS
    'cd_produto -> C�digo identificador do produto, composto por 10 dgitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_atend_sac.cd_cliente IS
    'cd_cliente -> C�digo identificador do cliente, composto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_atend_sac.cd_func IS
    'cd_func -> C�digo identificador do funcin�rio. Composto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_atend_sac.ds_chamado IS
    'ds_chamado -> Descri��o do chamado prodvida pelo cliente, compsta por at� 4000 caract�res diversos. Informa��o de acesso interno, sem m�scara de dados. Dados armazenados no padr�o InitCap.'
    ;

COMMENT ON COLUMN t_sgv_atend_sac.dt_aber_chamado IS
    'dt_aber_chamado -> Data de abertura do chamado no formato DateTime. Informa��o de acesso interno, sem m�scara de dados.';

COMMENT ON COLUMN t_sgv_atend_sac.dt_atend_chamado IS
    'dt_atend_chamado -> Date de atendimento do chamado no formato DateTime. Informa��o de acesso interno, sem m�scara de dados.';

COMMENT ON COLUMN t_sgv_atend_sac.dur_atend_chamado IS
    'dur_atend_chamado -> Dura��o de atendimento do chamado em minutos, composto por 5 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_atend_sac.ds_ret_chamado IS
    'ds_ret_chamado -> Descri��o do retorno do chamado provida pelo funcion�rio, composta por at� 4000 car�cteres diversos. Informa��o de acesso interno, sem m�scara de dados. Dados armazenados no padr�o InitCap.
';

COMMENT ON COLUMN t_sgv_atend_sac.tp_chamado IS
    'tp_chamado -> Tipo do chamado, podendo ser ''Sugest�o'' ou ''Reclama��o'', composto por at� 10 caract�res. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_atend_sac.st_chamado IS
    'st_chamado -> Situa��o do chamado, podendo ser ''A''  (Aberto), ''E'' (Em andamento), ''C'' (Cancelado), ''F'' (Fechado com sucesso) ou ''X'' (Fechado com instisfa��o do cliente).
';

COMMENT ON COLUMN t_sgv_atend_sac.idx_satisf_chamado IS
    'idx_satisf_chamado -> �ndice de satisfa��o do cliente com o atendimento prestado. Composto por um n�mero inteiro entre 1 e 10.Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_atend_sac.tmp_atend_chamado IS
    'tmp_atend_chamado -> Tempo entre a abertura do chamado e o atendimento do mesmo, computado em horas. Composto por at� 4 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

ALTER TABLE t_sgv_atend_sac
    ADD CONSTRAINT t_atend_sac_ck_st_chamado CHECK ( st_chamado IN ( 'A', 'E', 'C', 'F', 'X' ) );

ALTER TABLE t_sgv_atend_sac
    ADD CONSTRAINT t_atend_sac_ck_idx_satisf CHECK ( idx_satisf_chamado BETWEEN 1 AND 10 );

ALTER TABLE t_sgv_atend_sac
    ADD CONSTRAINT t_atend_sac_ck_tp_chamado CHECK ( tp_chamado IN ( 'Sugest�o', 'Reclama��o' ) );

ALTER TABLE t_sgv_atend_sac ADD CONSTRAINT t_sgv_atend_sac_pk PRIMARY KEY ( cd_chamado );

CREATE TABLE t_sgv_categ_prod (
    cd_categoria     NUMBER(5) NOT NULL,
    ds_categoria     VARCHAR2(50) NOT NULL,
    st_categoria     CHAR(1) NOT NULL,
    dt_ini_categoria DATE NOT NULL,
    dt_fim_categoria DATE
);

COMMENT ON TABLE t_sgv_categ_prod IS
    'Tabela mantenedora das informa��es sobre as categorias de produto existentes.

Composi��o:

cd_categoria -> C�digo identificador da categoria. Composto por 5 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

ds_categoria -> Descri��o da categoria. Composto por at� 20 caracteres diversos. Informa��o de acesso interno, sem m�scara de dados. Dados armazenados no padr�o InitCap.

st_categoria -> Status da categoria. Indica se a categoria esta ativa ou n�o. Recebe os valroes ''A'' (ativo) e ''I'' (inativo). Composto por uma letra.

dt_ini_categoria -> Data de inicio da categoria. Formato Date. Informa��o de acesso interno, sem m�scara de dados.

dt_fim_categoria -> Data fim da categoria. Formato Date. Informa��o de acesso interno, sem m�scara de dados.';

COMMENT ON COLUMN t_sgv_categ_prod.cd_categoria IS
    'cd_categoria -> C�digo identificador da categoria. Composto por 5 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_categ_prod.ds_categoria IS
    'ds_categoria -> Descri��o da categoria. Composto por at� 20 caracteres diversos. Informa��o de acesso interno, sem m�scara de dados. Dados armazenados no padr�o InitCap.'
    ;

COMMENT ON COLUMN t_sgv_categ_prod.st_categoria IS
    'st_categoria -> Status da categoria. Indica se a categoria esta ativa ou n�o. Recebe os valroes ''A'' (ativo) e ''I'' (inativo). Composto por uma letra.'
    ;

COMMENT ON COLUMN t_sgv_categ_prod.dt_ini_categoria IS
    'dt_ini_categoria -> Data de inicio da categoria. Formato Date. Informa��o de acesso interno, sem m�scara de dados.
';

COMMENT ON COLUMN t_sgv_categ_prod.dt_fim_categoria IS
    'dt_fim_categoria -> Data fim da categoria. Formato Date. Informa��o de acesso interno, sem m�scara de dados.';

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
    'Tabela mantenedora das informa��es sobre as categorias de v�deos.

Composi��o:

cd_categ_video -> C�digo identificador da categoria do video. Composto por 5 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

ds_categ_video -> Descri��o da categoria do v�deo. Composto por at� 50 caracteres diversos. Informa��o de acesso interno, sem m�scara de dados. Dados armzenados no formato InitCap.

st_categ_video -> Status da categoria do v�deo. Informa se um a categoria esta ativa ou n�o. Recebe ''A'' (ativa) e ''I'' (inativa). Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_categ_video.cd_categoria_video IS
    'cd_categ_video -> C�digo identificador da categoria do video. Composto por 5 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_categ_video.ds_categ_video IS
    'ds_categ_video -> Descri��o da categoria do v�deo. Composto por at� 50 caracteres diversos. Informa��o de acesso interno, sem m�scara de dados. Dados armzenados no formato InitCap.
';

COMMENT ON COLUMN t_sgv_categ_video.st_categ_video IS
    'st_categ_video -> Status da categoria do v�deo. Informa se um a categoria esta ativa ou n�o. Recebe ''A'' (ativa) e ''I'' (inativa). Informa��o de acesso interno, sem m�scara de dados.'
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
    'Tabela mantenedora de infoma��es de clientes.

cd_cliente -> C�digo identificador do cliente. Composto por 10 d�gitos n�mericos. Informa��o de acesso interno, sem m�scara de dados.

nm_cliente -> Nome do cliente. Composto por at� 50 caract�res diversos. Informa��o de acesso interno, sem m�scara de dados. Dado armazenado no padr�o InitCap.

qtd_estrelas -> Quantidade de estrleas de um cliente. Indica o ranking de um cliente frente aos crit�rios estabelecidos pela Melhores Compras. Composto por 2 d�gtos num�ricos, com uma casa decimal.Informa��o de acesso interno, sem m�scara de dados.

st_cliente -> Status do cliente. Indica se o mesmo � ativo ou n�o. Compsoto por 1 letra, podendo ser ''A'' (Ativo) ou ''I'' (Inativo). Informa��o de acesso interno, sem m�scara de dados.

login_cliente -> Login do cliente. Composto por at� 50 caract�res diversos. Infoma��o de uso restrito, aplicar m�scara sobre todos os caract�res n�o especiais e num�ricos, com exece��o do primero.
Ex: a*************60@*****.***.**

senha_cliente -> Senah de acesso do cliente. Composto por at� 30 caract�res diversos. Informa��o de uso restrito, aplicar m�scara de dados em todo o valor.
Ex: *************

tp_cliente -> Tipo do cliente. Indica se o cliente � Pessoa F�sica ou Jur�dica e pode receber apenas os valores ''F'' ou ''J''. Composto por uma letra. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_cliente.cd_cliente IS
    'cd_cliente -> C�digo identificador do cliente. Composto por 10 d�gitos n�mericos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_cliente.nm_cliente IS
    'nm_cliente -> Nome do cliente. Composto por at� 50 caract�res diversos. Informa��o de acesso interno, sem m�scara de dados. Dado armazenado no padr�o InitCap.'
    ;

COMMENT ON COLUMN t_sgv_cliente.qtd_estrlas IS
    'qtd_estrelas -> Quantidade de estrleas de um cliente. Indica o ranking de um cliente frente aos crit�rios estabelecidos pela Melhores Compras. Composto por 2 d�gtos num�ricos, com uma casa decimal.Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_cliente.st_cliente IS
    'st_cliente -> Status do cliente. Indica se o mesmo � ativo ou n�o. Compsoto por 1 letra, podendo ser ''A'' (Ativo) ou ''I'' (Inativo). Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_cliente.login_cliente IS
    'login_cliente -> Login do cliente. Composto por at� 50 caract�res diversos. Infoma��o de uso restrito, aplicar m�scara sobre todos os caract�res n�o especiais e num�ricos, com exece��o do primero.
Ex: a*************60@*****.***.**';

COMMENT ON COLUMN t_sgv_cliente.senha_cliente IS
    'senha_cliente -> Senah de acesso do cliente. Composto por at� 30 caract�res diversos. Informa��o de uso restrito, aplicar m�scara de dados em todo o valor.
Ex: *************';

COMMENT ON COLUMN t_sgv_cliente.tp_cliente IS
    'tp_cliente -> Tipo do cliente. Indica se o cliente � Pessoa F�sica ou Jur�dica e pode receber apenas os valores ''F'' ou ''J''. Composto por uma letra. Informa��o de acesso interno, sem m�scara de dados.'
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
    'Tabela mantenedora das informa��es dos cliente PF.

Composi��o:

cd_cliente -> C�digo identificador do cliente. Atributo herdado. Composto por at� 10 d�gitos n�mericos. Informa��o de acesso interno, sem m�scara de dados.

cpf_cliente _pf -> N�mero do CPF do cliente. Composto por at� 11 d�gitos num�ricos. Informa��o de acesso restrito, aplicar m�scara de dados sobre os 8 d�gitos posteriores.
Ex: 123xxxxxxxx

dt_nasc_cliente_pf -> Data de nascimento do cliente. Formato Date. Informa��o de acesso interno, sem m�scara de dados.

sexo_cliente_pf -> Sexo biol�gico do cliente. Composto por 1 letra, sendo ''M'' (masculino) e ''F'' (feminino). Informa��o de acesso interno, sem m�scara de dados.

gen_cliente_pf -> G�nero de identifica��o do cliente, provido pelo mesmo. Composto por at� 20 caract�res diversos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_cliente_pf.cd_cliente IS
    'cd_cliente -> C�digo identificador do cliente. Atributo herdado. Composto por at� 10 d�gitos n�mericos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_cliente_pf.cpf_cliente_pf IS
    'cpf_cliente _pf -> N�mero do CPF do cliente. Composto por at� 11 d�gitos num�ricos. Informa��o de acesso restrito, aplicar m�scara de dados sobre os 8 d�gitos posteriores.
Ex: 123xxxxxxxx';

COMMENT ON COLUMN t_sgv_cliente_pf.dt_nasc_clliente_pf IS
    'dt_nasc_cliente_pf -> Data de nascimento do cliente. Formato Date. Informa��o de acesso interno, sem m�scara de dados.';

COMMENT ON COLUMN t_sgv_cliente_pf.sexo_cliente_pf IS
    'sexo_cliente_pf -> Sexo biol�gico do cliente. Composto por 1 letra, sendo ''M'' (masculino) e ''F'' (feminino). Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_cliente_pf.gen_cliente_pf IS
    'gen_cliente_pf -> G�nero de identifica��o do cliente, provido pelo mesmo. Composto por at� 20 caract�res diversos. Informa��o de acesso interno, sem m�scara de dados.'
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
    'Tabela Mantenedora das informa��es de cliente PJ.

Composi��o:

cd_cliente -> C�digo de identifica��o do cliente. Atributo herdado.Composto por at� 10 digitos n�mericos. Informa��o de acesso interno, sem m�scara de dados.

dt_fundacao_pj -> Data de funda��o da PJ. Formato Date. Informa��o de acesso interno, sem m�scara de dados.

cnpj_cliente_pp -> CNPJ do cliente PJ. Composto por 14 digitos num�ricos. Informa��o de acesso restrito, aplocar m�scara de dados sobre os 11 digitos posteriores.
Ex: 123***********

nr_ins_estadual_pj -> Inscri��o estadual do cliente PJ. Composto por at� 9 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_cliente_pj.cd_cliente IS
    'cd_cliente -> C�digo de identifica��o do cliente. Atributo herdado.Composto por at� 10 digitos n�mericos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_cliente_pj.dt_fundacao_pj IS
    'dt_fundacao_pj -> Data de funda��o da PJ. Formato Date. Informa��o de acesso interno, sem m�scara de dados.';

COMMENT ON COLUMN t_sgv_cliente_pj.cnpj_cliente_pj IS
    'cnpj_cliente_pp -> CNPJ do cliente PJ. Composto por 14 digitos num�ricos. Informa��o de acesso restrito, aplocar m�scara de dados sobre os 11 digitos posteriores.
Ex: 123***********';

COMMENT ON COLUMN t_sgv_cliente_pj.nr_ins_estad_pj IS
    'nr_ins_estadual_pj -> Inscri��o estadual do cliente PJ. Composto por at� 9 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

ALTER TABLE t_sgv_cliente_pj ADD CONSTRAINT t_sgv_cliente_pj_pk PRIMARY KEY ( cd_cliente );

CREATE TABLE t_sgv_depto (
    cd_depto NUMBER(5) NOT NULL,
    nm_depto VARCHAR2(50) NOT NULL,
    sg_depto CHAR(3) NOT NULL,
    st_depto CHAR(1) NOT NULL
);

COMMENT ON TABLE t_sgv_depto IS
    'Tabela mantenedora de informa��es departamentais.

Composi��o:

cd_depto -> C�digo do departamento, composto por 5 d�gitos n�mericos. Informa��o de acesso interno, sem m�scara de dados.

nm_depto -> Nome do departamento, compsoto por at� 50 caract�res diversos. Informa��o de acesos interno, sem m�scara de dados.

sg_depto -> Sigla do departamento, composto por 3 letras. Infoma��o de acesso interno, sem m�scara de dados.

st_depto -> Status do departamento, composto por 1 letra, indica se o departamento esta ativo ou n�o. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_depto.cd_depto IS
    'cd_depto -> C�digo do departamento, composto por 5 d�gitos n�mericos. Informa��o de acesso interno, sem m�scara de dados.';

COMMENT ON COLUMN t_sgv_depto.nm_depto IS
    'nm_depto -> Nome do departamento, compsoto por at� 50 caract�res diversos. Informa��o de acesos interno, sem m�scara de dados.';

COMMENT ON COLUMN t_sgv_depto.sg_depto IS
    'sg_depto -> Sigla do departamento, composto por 3 letras. Infoma��o de acesso interno, sem m�scara de dados.';

COMMENT ON COLUMN t_sgv_depto.st_depto IS
    'st_depto -> Status do departamento, composto por 1 letra, indica se o departamento esta ativo ou n�o. Informa��o de acesso interno, sem m�scara de dados.'
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
    'Tebela mantenedora das informa��es pessoais dos funcion�rios.

Composi��o:

cd_depto -> C�digo do departamento, composto por 5 d�gitos num�ricos. Infoma��o de acesso interno, sem m�scara de dados.

cd_func -> C�digo identificador do funcion�rio, composto 5 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

nm_func -> Nome do funcion�rio, composto por at� 50 caract�res. Informa��o de acesso interno, sem m�scara de dados.

cpf_func -> N�mero do CPF do funcion�rio, composto por 11  digitos num�ricos. Infoma��o de acesso restrito, aplicar m�scara de dados sbore os 8 d�gitos posteriores.
Ex: 123xxxxxxxx

dt_nasc_func -> Data de nascimento do funcion�rio em formato Date. Informa��o de acesso interno, sem m�scara de dados.

email_func -> Email do funcion�rio, composto por at� 50 caract�res diversos. Informa��o de acesso interno, sem m�scara de dados.

cargo_func -> Cargo do funcion�rio, composto por at� 20 caract�res diversos. Informa��o de acesso interno, sem m�scara de dados.';

COMMENT ON COLUMN t_sgv_func.cd_func IS
    'cd_func -> C�digo identificador do funcion�rio, composto 5 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_func.cd_depto IS
    'cd_depto -> C�digo do departamento, composto por 5 d�gitos num�ricos. Infoma��o de acesso interno, sem m�scara de dados.';

COMMENT ON COLUMN t_sgv_func.nm_func IS
    'nm_func -> Nome do funcion�rio, composto por at� 50 caract�res. Informa��o de acesso interno, sem m�scara de dados.';

COMMENT ON COLUMN t_sgv_func.cpf_func IS
    'cpf_func -> N�mero do CPF do funcion�rio, composto por 11  digitos num�ricos. Infoma��o de acesso restrito, aplicar m�scara de dados sbore os 8 d�gitos posteriores.
Ex: 123xxxxxxxx';

COMMENT ON COLUMN t_sgv_func.dt_nasc_func IS
    'dt_nasc_func -> Data de nascimento do funcion�rio em formato Date. Informa��o de acesso interno, sem m�scara de dados.';

COMMENT ON COLUMN t_sgv_func.email_func IS
    'email_func -> Email do funcion�rio, composto por at� 50 caract�res diversos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_func.cargo_func IS
    'cargo_func -> Cargo do funcion�rio, composto por at� 20 caract�res diversos. Informa��o de acesso interno, sem m�scara de dados.'
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
    'Tabela mantenedora de informa��es sobre itens pedidos.

Composi��o:

cd_item_produto -> C�digo identificador do conjunto de itens pedidos. Compsoto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

cd_produto -> C�digo identificador do produto. Composto por at� 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

cd_pedido -> C�digo de identifica��o do pedido. Composto por at� 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

qtd_itens -> Quantidade dos produtos solicitados. Formato Integer. Informa��o de acesso interno, sem m�scara de dados.';

COMMENT ON COLUMN t_sgv_item_pedido.cd_item_pedido IS
    'cd_item_produto -> C�digo identificador do conjunto de itens pedidos. Compsoto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_item_pedido.cd_produto IS
    'cd_produto -> C�digo identificador do produto. Composto por at� 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_item_pedido.cd_pedido IS
    'cd_pedido -> C�digo de identifica��o do pedido. Composto por at� 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_item_pedido.qtd_itens IS
    'qtd_itens -> Quantidade dos produtos solicitados. Formato Integer. Informa��o de acesso interno, sem m�scara de dados.';

ALTER TABLE t_sgv_item_pedido ADD CONSTRAINT t_sgv_item_pedido_pk PRIMARY KEY ( cd_item_pedido );

CREATE TABLE t_sgv_pedido (
    cd_pedido  NUMBER(10) NOT NULL,
    cd_cliente NUMBER(10) NOT NULL,
    dt_pedido  DATE NOT NULL,
    st_pedido  CHAR(1) NOT NULL
);

COMMENT ON TABLE t_sgv_pedido IS
    'Tabela mantenedora das informa�es de pedidos realizados por clientes.

Composi��o:

cd_pedido -> C�digo identificador do pedido. Composto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

cd_cliente -> C�digo identificador do cliente. Composto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

dt_pedido -> Data e hora do pedido. Formato DateTime. Informa��o de acesso interno, sem m�scara de dados.

st_pedido -> Situa��o do pedido, podendo ser ''A'' (Aguardando Pagamento), ''E'' (Em prepara��o), ''V'' (Enviado), ''R'' (Recebido), ''D'' (Devolvido), ''X'' (Extraviado). Composto por 1 letra. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_pedido.cd_pedido IS
    'cd_pedido -> C�digo identificador do pedido. Composto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_pedido.cd_cliente IS
    'cd_cliente -> C�digo identificador do cliente. Composto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_pedido.dt_pedido IS
    'dt_pedido -> Data e hora do pedido. Formato DateTime. Informa��o de acesso interno, sem m�scara de dados.';

COMMENT ON COLUMN t_sgv_pedido.st_pedido IS
    'st_pedido -> Situa��o do pedido, podendo ser ''A'' (Aguardando Pagamento), ''E'' (Em prepara��o), ''V'' (Enviado), ''R'' (Recebido), ''D'' (Devolvido), ''X'' (Extraviado). Composto por 1 letra. Informa��o de acesso interno, sem m�scara de dados.'
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
    'Tabela mantenedora das informa��es sobre os produtos comercializados.

Composi��o:

cd_produto -> C�digo de identifica��o do produto. Composto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

cd_categoria -> C�digo identificador da categoria. Composto por at� 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

ds_produto -> Descri��o  simplicada do produto. Composto por at� 20 caracteres diversos. Informa��o de acesso interno, sem m�scara de dados. Dado armazenado no formato InitCap.

ds_produto_detalhado -> Descri��o detalhada do produto. Composto por at� 50 caracteres diversos. Informa��o de acesso interno, sem m�scara de dados. Dado armazenado no formato InitCap.

cd_barras_produto -> C�digo de barras do produto. Composto por 13 digitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

pr_unit_produto -> Pre�o unit�rio do produto. Composto por 7 digitos os quais 2 s�o decimais. Informa��o de acesso interno, sem m�scara de dados.

st_produto -> Status do produto. Indica se o mesmo encontra-se ativo ou n�o. Recebe os valores ''A'' (Ativo),  ''I'' (Inativo) ou ''P'' (prospec��o). Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_produtos.cd_produto IS
    'cd_produto -> C�digo de identifica��o do produto. Composto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_produtos.cd_categoria IS
    'cd_categoria -> C�digo identificador da categoria. Composto por at� 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_produtos.ds_produto IS
    'ds_produto -> Descri��o  simplicada do produto. Composto por at� 20 caracteres diversos. Informa��o de acesso interno, sem m�scara de dados. Dado armazenado no formato InitCap.'
    ;

COMMENT ON COLUMN t_sgv_produtos.ds_produto_detalhado IS
    'ds_produto_detalhado -> Descri��o detalhada do produto. Composto por at� 50 caracteres diversos. Informa��o de acesso interno, sem m�scara de dados. Dado armazenado no formato InitCap.'
    ;

COMMENT ON COLUMN t_sgv_produtos.cd_barras_produto IS
    'cd_barras_produto -> C�digo de barras do produto. Composto por 13 digitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_produtos.pr_unit_produto IS
    'pr_unit_produto -> Pre�o unit�rio do produto. Composto por 7 digitos os quais 2 s�o decimais. Informa��o de acesso interno, sem m�scara de dados.
';

COMMENT ON COLUMN t_sgv_produtos.st_produto IS
    'st_produto -> Status do produto. Indica se o mesmo encontra-se ativo ou n�o. Recebe os valores ''A'' (Ativo),  ''I'' (Inativo) ou ''P'' (prospec��o). Informa��o de acesso interno, sem m�scara de dados.'
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
    'Tabela mantenedora das informa��es telefonicas dos clientes.

Composi��o:

cd_cliente -> C�digo identificador do cliente. Composto por at� 10 digitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

cd_telefone -> C�digo identificador do telefone do cliente. Composto por at� 5 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

DDD_telefone -> DDD do telefone do cliente. Composto por 2 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

nr_telefone -> N�mero do telefone do cliente. Composto por 9 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.';

COMMENT ON COLUMN t_sgv_tel_cliente.cd_cliente IS
    'cd_cliente -> C�digo identificador do cliente. Composto por at� 10 digitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_tel_cliente.cd_telefone IS
    'cd_telefone -> C�digo identificador do telefone do cliente. Composto por at� 5 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_tel_cliente.ddd_telefone IS
    'DDD_telefone -> DDD do telefone do cliente. Composto por 2 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_tel_cliente.nr_telefone IS
    'nr_telefone -> N�mero do telefone do cliente. Composto por 9 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
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
    'Tabela mantenedora dos telefones dos funcion�rios da Melhores compras.

Composi��o:

cd_func -> C�digo do funcion�rio composto por 5 d�gitos n�mericos. Infomar��o de acesso interno, sem m�scara de dados.

cd_depto -> C�digo do departamento composto por 5 d�gitos n�mericos. Infoma��o de acesso interno, sem m�scara de dados.

cd_tel_func -> C�digo de identifica��o do telefone do funcion�rio composto por 5 d�gitos n�mericos. Infoma��o de acesso interno, sem m�scara de dados.

DDD_telefone_func -> DDD do telefone do funcion�rio composto por dois d�gitos n�mericos. Infoma��o de acesso interno, sem m�scara de dados.

nr_telefone_func -> N�mero de telefone do funcion�rio, composto por 9 d�gitos n�mericos. Informa��o de  acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_tel_func.cd_func IS
    'cd_func -> C�digo do funcion�rio composto por 5 d�gitos n�mericos. Infomar��o de acesso interno, sem m�scara de dados.';

COMMENT ON COLUMN t_sgv_tel_func.cd_tel_func IS
    'cd_tel_func -> C�digo de identifica��o do telefone do funcion�rio composto por 5 d�gitos n�mericos. Infoma��o de acesso interno, sem m�scara de dados.
';

COMMENT ON COLUMN t_sgv_tel_func.ddd_telefone_func IS
    'DDD_telefone_func -> DDD do telefone do funcion�rio composto por dois d�gitos n�mericos. Infoma��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_tel_func.nr_telefone_func IS
    'nr_telefone_func -> N�mero de telefone do funcion�rio, composto por 9 d�gitos n�mericos. Informa��o de  acesso interno, sem m�scara de dados.'
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
    'Tabela mantenedora de informa��es do video do produto.

Composi��o:

cd_produto -> C�digo identificador do produto. Composto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

cd_video -> C�digo identificador do v�deo. Composto por 5 digitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

cd_categoria_video -> C�digo identificador da categoria do v�deo. Composto por 5 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

st_video -> Status  do v�deo. Recebe os valores ''A'' (Ativos), ''I'' (Inativo) e ''P'' (Prospec��o). Composto por 1 letra. Informa��o de acesso interno, sem m�scara de dados.

dt_cadastro_video -> Data de cadastro do v�deo na plataforma. Formato Date. Informa��o de acesso interno, sem m�scara de dados.';

COMMENT ON COLUMN t_sgv_video_produto.cd_produto IS
    'cd_produto -> C�digo identificador do produto. Composto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_video_produto.cd_video IS
    'cd_video -> C�digo identificador do v�deo. Composto por 5 digitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_video_produto.cd_categoria_video IS
    'cd_categoria_video -> C�digo identificador da categoria do v�deo. Composto por 5 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.
';

COMMENT ON COLUMN t_sgv_video_produto.st_video IS
    'st_video -> Status  do v�deo. Recebe os valores ''A'' (Ativos), ''I'' (Inativo) e ''P'' (Prospec��o). Composto por 1 letra. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_video_produto.dt_cadastro_video IS
    'dt_cadastro_video -> Data de cadastro do v�deo na plataforma. Formato Date. Informa��o de acesso interno, sem m�scara de dados.'
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
    'Tabela mantenedora de informa��es sobre os v�deos de produtos.

Composi��o:

cd_visualiza��o -> C�digo identificador da visualiza��o do v�deo. Composto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

cd_produto -> C�digo identificador do produto. Composto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

cd_cliente -> C�digo identificador do cliente. Composto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.

dt_visualiza��o -> Data de visuaiza��o do cliente. Formato DateTime. Informa��o de acesso interno, sem m�scara de dados.';

COMMENT ON COLUMN t_sgv_vis_video.cd_visualizacao IS
    'cd_visualiza��o -> C�digo identificador da visualiza��o do v�deo. Composto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_vis_video.cd_produto IS
    'cd_produto -> C�digo identificador do produto. Composto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_vis_video.cd_cliente IS
    'cd_cliente -> C�digo identificador do cliente. Composto por 10 d�gitos num�ricos. Informa��o de acesso interno, sem m�scara de dados.'
    ;

COMMENT ON COLUMN t_sgv_vis_video.dt_visualizacao IS
    'dt_visualiza��o -> Data de visuaiza��o do cliente. Formato DateTime. Informa��o de acesso interno, sem m�scara de dados.';

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



-- Relat�rio do Resumo do Oracle SQL Developer Data Modeler: 
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
