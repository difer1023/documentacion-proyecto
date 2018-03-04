
DROP TABLE IF EXISTS apoyo_prog_f CASCADE
;
DROP TABLE IF EXISTS apoyo_prog_f_autor CASCADE
;
DROP TABLE IF EXISTS area_conocimiento CASCADE
;
DROP TABLE IF EXISTS area_conocimiento_categoria CASCADE
;
DROP TABLE IF EXISTS articulo CASCADE
;
DROP TABLE IF EXISTS articulo_autor CASCADE
;
DROP TABLE IF EXISTS BCI CASCADE
;
DROP TABLE IF EXISTS boletin CASCADE
;
DROP TABLE IF EXISTS boletin_autor CASCADE
;
DROP TABLE IF EXISTS cap_libro_autor CASCADE
;
DROP TABLE IF EXISTS cap_libro_investigacion CASCADE
;
DROP TABLE IF EXISTS categoria CASCADE
;
DROP TABLE IF EXISTS categoria_investigador CASCADE
;
DROP TABLE IF EXISTS categoriaJCR CASCADE
;
DROP TABLE IF EXISTS categoriaSJR CASCADE
;
DROP TABLE IF EXISTS citacion CASCADE
;
DROP TABLE IF EXISTS clasificacion_JCR CASCADE
;
DROP TABLE IF EXISTS clasificacion_SJR CASCADE
;
DROP TABLE IF EXISTS consultoria CASCADE
;
DROP TABLE IF EXISTS consultoria_autor CASCADE
;
DROP TABLE IF EXISTS departamento CASCADE
;
DROP TABLE IF EXISTS diseno_industrial CASCADE
;
DROP TABLE IF EXISTS diseno_industrial_titular CASCADE
;
DROP TABLE IF EXISTS distincion_trabajo_grado CASCADE
;
DROP TABLE IF EXISTS doc_trabajo CASCADE
;
DROP TABLE IF EXISTS doc_trabajo_autor CASCADE
;
DROP TABLE IF EXISTS doc_trabajo_entidad CASCADE
;
DROP TABLE IF EXISTS edicion CASCADE
;
DROP TABLE IF EXISTS editorial CASCADE
;
DROP TABLE IF EXISTS emp_base_tec CASCADE
;
DROP TABLE IF EXISTS emp_base_tec_autor CASCADE
;
DROP TABLE IF EXISTS entidad CASCADE
;
DROP TABLE IF EXISTS espacio_part_proyecto_CTI CASCADE
;
DROP TABLE IF EXISTS espacio_part_proyecto_CTI_autor CASCADE
;
DROP TABLE IF EXISTS espacio_part_proyecto_CTI_entidad CASCADE
;
DROP TABLE IF EXISTS esq_circuito CASCADE
;
DROP TABLE IF EXISTS esq_circuito_titular CASCADE
;
DROP TABLE IF EXISTS est_comunicacion_conocimiento CASCADE
;
DROP TABLE IF EXISTS est_comunicacion_conocimiento_entidad CASCADE
;
DROP TABLE IF EXISTS est_comunicacion_conocimiento_investigador CASCADE
;
DROP TABLE IF EXISTS est_fomento_CTI CASCADE
;
DROP TABLE IF EXISTS est_fomento_CTI_entidad CASCADE
;
DROP TABLE IF EXISTS evento_cientifico CASCADE
;
DROP TABLE IF EXISTS evento_cientifico_entidad CASCADE
;
DROP TABLE IF EXISTS evento_cientifico_investigador CASCADE
;
DROP TABLE IF EXISTS financiacion_proyecto CASCADE
;
DROP TABLE IF EXISTS gen_cont_impreso CASCADE
;
DROP TABLE IF EXISTS gen_cont_multimedia CASCADE
;
DROP TABLE IF EXISTS gen_cont_multimedia_entidad CASCADE
;
DROP TABLE IF EXISTS gen_cont_multimedia_participante CASCADE
;
DROP TABLE IF EXISTS gen_cont_participacion CASCADE
;
DROP TABLE IF EXISTS gen_cont_virtual CASCADE
;
DROP TABLE IF EXISTS gen_cont_virtual_autor CASCADE
;
DROP TABLE IF EXISTS gen_cont_virtual_entidad CASCADE
;
DROP TABLE IF EXISTS gen_contenido_autor CASCADE
;
DROP TABLE IF EXISTS grupo_investigacion CASCADE
;
DROP TABLE IF EXISTS informe_final CASCADE
;
DROP TABLE IF EXISTS informe_final_autor CASCADE
;
DROP TABLE IF EXISTS informe_tec CASCADE
;
DROP TABLE IF EXISTS informe_tec_autor CASCADE
;
DROP TABLE IF EXISTS innovacion_ps CASCADE
;
DROP TABLE IF EXISTS innovacion_ps_autor CASCADE
;
DROP TABLE IF EXISTS integrante_grupo CASCADE
;
DROP TABLE IF EXISTS investigador CASCADE
;
DROP TABLE IF EXISTS libro CASCADE
;
DROP TABLE IF EXISTS libro_autor CASCADE
;
DROP TABLE IF EXISTS libro_investigacion CASCADE
;
DROP TABLE IF EXISTS municipio CASCADE
;
DROP TABLE IF EXISTS pais CASCADE
;
DROP TABLE IF EXISTS part_ciud_proyecto_CTI CASCADE
;
DROP TABLE IF EXISTS part_proy_CTI_entidad CASCADE
;
DROP TABLE IF EXISTS patente CASCADE
;
DROP TABLE IF EXISTS patente_contrato CASCADE
;
DROP TABLE IF EXISTS patente_pais CASCADE
;
DROP TABLE IF EXISTS patente_titular CASCADE
;
DROP TABLE IF EXISTS planta_piloto CASCADE
;
DROP TABLE IF EXISTS planta_piloto_autor CASCADE
;
DROP TABLE IF EXISTS programa_ondas CASCADE
;
DROP TABLE IF EXISTS programa_ondas_autor CASCADE
;
DROP TABLE IF EXISTS prototipo_ind CASCADE
;
DROP TABLE IF EXISTS prototipo_ind_autor CASCADE
;
DROP TABLE IF EXISTS proyecto CASCADE
;
DROP TABLE IF EXISTS proyecto_ext_CTI CASCADE
;
DROP TABLE IF EXISTS proyecto_ext_CTI_entidad CASCADE
;
DROP TABLE IF EXISTS proyecto_ext_CTI_investigador CASCADE
;
DROP TABLE IF EXISTS proyecto_investigador CASCADE
;
DROP TABLE IF EXISTS red_conocimiento CASCADE
;
DROP TABLE IF EXISTS red_conocimiento_entidad CASCADE
;
DROP TABLE IF EXISTS revista CASCADE
;
DROP TABLE IF EXISTS secreto_emp CASCADE
;
DROP TABLE IF EXISTS secreto_emp_autor CASCADE
;
DROP TABLE IF EXISTS signos_dis CASCADE
;
DROP TABLE IF EXISTS signos_dis_titular CASCADE
;
DROP TABLE IF EXISTS software CASCADE
;
DROP TABLE IF EXISTS software_autor CASCADE
;
DROP TABLE IF EXISTS tipo_apoyo CASCADE
;
DROP TABLE IF EXISTS tipo_empresa CASCADE
;
DROP TABLE IF EXISTS tipo_identificacion_empresa CASCADE
;
DROP TABLE IF EXISTS tipo_participacion_evento CASCADE
;
DROP TABLE IF EXISTS tipo_proyecto CASCADE
;
DROP TABLE IF EXISTS tipo_trabajo CASCADE
;
DROP TABLE IF EXISTS trabajo_grado CASCADE
;
DROP TABLE IF EXISTS trabajo_grado_director CASCADE
;
DROP TABLE IF EXISTS via_obtencion CASCADE
;

--  Create Tables 
CREATE TABLE apoyo_prog_f ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(300) NOT NULL,
	n_institucion varchar(50) NOT NULL,
	n_facultad varchar(50) NOT NULL,
	n_departamento varchar(50) NOT NULL,
	n_id_acto_admin varchar(50) NOT NULL,
	n_num_acto_admin varchar(50) NOT NULL,
	f_fecha date NOT NULL,
	i_tipo_apoyo integer,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE apoyo_prog_f_autor ( 
	i_cod_apoyo_prog_f integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE area_conocimiento ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(200) NOT NULL,
	c_descripcion varchar(300)
)
;

CREATE TABLE area_conocimiento_categoria ( 
	i_area_conocimiento integer,
	c_categoria varchar(10)
)
;

CREATE TABLE articulo ( 
	k_codigo serial NOT NULL,
	n_titulo varchar(200) NOT NULL,
	i_ano integer NOT NULL,
	i_mes integer,
	i_volumen integer,
	i_pagina_inicial integer,
	i_pagina_final integer,
	i_ISSN_revista varchar(15) NOT NULL,
	c_pag_web varchar(200),
	c_DOI varchar(200),
	i_pais_publicacion integer,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE articulo_autor ( 
	i_cod_articulo integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE BCI ( 
	k_codigo serial NOT NULL,
	c_ISBN varchar(19) NOT NULL,
	n_titulo varchar(300) NOT NULL
)
;

CREATE TABLE boletin ( 
	k_codigo serial NOT NULL,
	n_titulo varchar(300) NOT NULL,
	f_fecha_elaboracion date NOT NULL,
	i_editor integer NOT NULL,
	n_institucion varchar(300) NOT NULL,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE boletin_autor ( 
	i_cod_boletin integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE cap_libro_autor ( 
	i_cod_cap_libro integer,
	i_cod_integrante integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE cap_libro_investigacion ( 
	k_codigo serial NOT NULL,
	c_ISBN_libro varchar(19) NOT NULL,
	n_titulo_cap varchar(300) NOT NULL,
	f_fecha_publicacion timestamp NOT NULL,
	b_validacion_inv_an5 boolean,
	c_categoria varchar(10),
	b_clasificado boolean,
	b_certificado_validacion boolean
)
;

CREATE TABLE categoria ( 
	k_codigo varchar(10) NOT NULL,
	n_nombre varchar(100) NOT NULL
)
;

CREATE TABLE categoria_investigador ( 
	k_codigo varchar(4) NOT NULL,
	n_nombre varchar(30) NOT NULL,
	c_descripcion varchar(200)
)
;

CREATE TABLE categoriaJCR ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(200) NOT NULL
)
;

CREATE TABLE categoriaSJR ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(200) NOT NULL
)
;

CREATE TABLE citacion ( 
	k_codigo serial NOT NULL,
	c_ISSN varchar(15),
	c_ISBN varchar(19),
	i_libro_investigacion integer
)
;

CREATE TABLE clasificacion_JCR ( 
	i_ISSN varchar(15) NOT NULL,
	i_ano integer NOT NULL,
	c_cuartil varchar(2) NOT NULL,
	i_categoria integer
)
;

CREATE TABLE clasificacion_SJR ( 
	i_ISSN varchar(15) NOT NULL,
	i_ano integer NOT NULL,
	c_cuartil varchar(2) NOT NULL,
	i_categoria integer
)
;

CREATE TABLE consultoria ( 
	k_codigo serial NOT NULL,
	n_titulo varchar(300) NOT NULL,
	n_numero_contrato varchar(50) NOT NULL,
	f_fecha date NOT NULL,
	b_certificacion_empresa boolean NOT NULL,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE consultoria_autor ( 
	i_cod_consultoria integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE departamento ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(50) NOT NULL
)
;

CREATE TABLE diseno_industrial ( 
	k_codigo serial NOT NULL,
	c_numero_reg varchar(50) NOT NULL,
	n_titulo_reg varchar(300) NOT NULL,
	i_ano_obtencion integer NOT NULL,
	b_gaceta boolean NOT NULL,
	i_pais_obtencion integer NOT NULL,
	b_contrato boolean NOT NULL,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE diseno_industrial_titular ( 
	i_cod_diseno_industrial integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE distincion_trabajo_grado ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(100) NOT NULL
)
;

CREATE TABLE doc_trabajo ( 
	k_codigo serial NOT NULL,
	n_titulo varchar(300) NOT NULL,
	i_ano integer NOT NULL,
	n_pag_web varchar(300),
	n_doi varchar(300),
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE doc_trabajo_autor ( 
	i_cod_doc_trabajo integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE doc_trabajo_entidad ( 
	i_cod_doc_trabajo integer,
	i_cod_entidad integer
)
;

CREATE TABLE edicion ( 
	k_codigo serial NOT NULL,
	n_titulo varchar(300) NOT NULL,
	n_isbn varchar(50) NOT NULL,
	n_issn varchar(50),
	i_editor integer NOT NULL,
	f_fecha_editor date NOT NULL,
	i_ano integer NOT NULL,
	n_pag_web varchar(300),
	c_categoria varchar(10),
	b_clasificado boolean,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE editorial ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(300) NOT NULL
)
;

CREATE TABLE emp_base_tec ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(300) NOT NULL,
	b_certificado_camara boolean NOT NULL,
	n_num_tributario varchar(15) NOT NULL,
	b_certificacion_institucional boolean NOT NULL,
	i_tipo_identificacion integer NOT NULL,
	i_tipo_empresa integer NOT NULL,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE emp_base_tec_autor ( 
	i_cod_emp_base_tec integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE entidad ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(200) NOT NULL,
	b_institucion boolean NOT NULL
)
;

CREATE TABLE espacio_part_proyecto_CTI ( 
	k_codigo serial NOT NULL,
	n_nombre_espacio varchar(300) NOT NULL,
	f_fecha_inicio date NOT NULL,
	n_nombre_comunidad varchar(300),
	n_constancia_participacion boolean,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE espacio_part_proyecto_CTI_autor ( 
	i_cod_espacio_part_proyecto_CTI integer,
	i_cod_investigador integer,
	b_lider boolean,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE espacio_part_proyecto_CTI_entidad ( 
	i_cod_proy_participacion integer,
	i_cod_entidad integer
)
;

CREATE TABLE esq_circuito ( 
	k_codigo serial NOT NULL,
	c_num_registro varchar(50) NOT NULL,
	n_titulo_registro varchar(300) NOT NULL,
	i_ano_obtencion integer NOT NULL,
	i_pais_obtencion integer NOT NULL,
	b_contrato boolean,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE esq_circuito_titular ( 
	i_cod_esq_circuito integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE est_comunicacion_conocimiento ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(300) NOT NULL,
	f_fecha_inicio date NOT NULL,
	i_lider integer NOT NULL,
	n_nombre_comunidad varchar(300) NOT NULL,
	b_certificacion boolean,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE est_comunicacion_conocimiento_entidad ( 
	k_cod_est_comunicacion integer,
	k_cod_entidad integer
)
;

CREATE TABLE est_comunicacion_conocimiento_investigador ( 
	i_cod_est_comunicacion_conocimiento integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE est_fomento_CTI ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(300) NOT NULL,
	f_fecha_inicio date NOT NULL,
	i_investigador_principal integer NOT NULL,
	b_certificado boolean,
	c_categoria varchar(10),
	b_clasificado boolean,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE est_fomento_CTI_entidad ( 
	i_cod_est_fomento_ integer,
	i_cod_entidad integer
)
;

CREATE TABLE evento_cientifico ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(300) NOT NULL,
	f_fecha_inicio date NOT NULL,
	f_fecha_fin date NOT NULL,
	n_entidad_patrocinadora varchar(30),
	i_tipo_participacion integer
)
;

CREATE TABLE evento_cientifico_entidad ( 
	k_cod_evento_cientifico integer,
	k_cod_entidad integer
)
;

CREATE TABLE evento_cientifico_investigador ( 
	k_codigo bigint NOT NULL,
	i_cod_evento_cientifico integer,
	i_cod_investigador integer,
	i_tipo_participacion integer NOT NULL,
	c_categoria varchar(10),
	b_clasificado boolean,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE financiacion_proyecto ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(50) NOT NULL,
	n_descripcion varchar(100)
)
;

CREATE TABLE gen_cont_impreso ( 
	k_codigo serial NOT NULL,
	n_titulo varchar(200) NOT NULL,
	f_fecha_publicacion date NOT NULL,
	n_medio_circulacion varchar(50) NOT NULL,
	n_ambito varchar(50) NOT NULL,
	i_lugar_publicacion integer NOT NULL,
	b_certificacion boolean,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE gen_cont_multimedia ( 
	k_codigo serial NOT NULL,
	n_titulo varchar(200) NOT NULL,
	n_ambito varchar(50) NOT NULL,
	n_comunidades varchar(300) NOT NULL,
	n_resumen varchar(300) NOT NULL,
	f_fecha date NOT NULL,
	n_medio_circulacion varchar(50) NOT NULL,
	b_certificacion boolean,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE gen_cont_multimedia_entidad ( 
	i_cod_gen_cont_multimedia integer,
	i_cod_entidad integer
)
;

CREATE TABLE gen_cont_multimedia_participante ( 
	i_cod_gen_cont_multimedia integer,
	i_cod_investigador integer,
	i_tipo_participacion integer NOT NULL,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE gen_cont_participacion ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(50)
)
;

CREATE TABLE gen_cont_virtual ( 
	k_codigo serial NOT NULL,
	n_titulo varchar(200) NOT NULL,
	n_comunidad varchar(300) NOT NULL,
	n_resumen varchar(300) NOT NULL,
	f_fecha date NOT NULL,
	n_medio_circulacion varchar(50) NOT NULL,
	n_pag_web varchar(300),
	b_certificacion boolean,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE gen_cont_virtual_autor ( 
	i_cod_gen_cont_virtual integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE gen_cont_virtual_entidad ( 
	i_cod_gen_cont_virtual integer,
	i_cod_entidad integer
)
;

CREATE TABLE gen_contenido_autor ( 
	i_cod_gen_contenido integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE grupo_investigacion ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(200)
)
;

CREATE TABLE informe_final ( 
	k_codigo serial NOT NULL,
	n_titulo varchar(300) NOT NULL,
	n_nombre_proyecto varchar(300) NOT NULL,
	f_fecha_elaboracion date NOT NULL,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE informe_final_autor ( 
	i_cod_informe_final integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE informe_tec ( 
	k_codigo serial NOT NULL,
	n_titulo varchar(300) NOT NULL,
	n_titulo_inv varchar(300) NOT NULL,
	f_fecha date NOT NULL,
	n_certificacion_entidad boolean NOT NULL,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE informe_tec_autor ( 
	i_cod_informe integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE innovacion_ps ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(300) NOT NULL,
	f_fecha date NOT NULL,
	n_nombre_empresa varchar(300) NOT NULL,
	n_nit varchar(50) NOT NULL,
	b_certificado_imp_peq boolean NOT NULL,
	b_certificado_imp_med boolean NOT NULL,
	b_certificado_imp_gran boolean NOT NULL,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE innovacion_ps_autor ( 
	i_cod_innovacion_ps integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE integrante_grupo ( 
	i_cod_grupo_investigacion integer,
	i_cod_investigador integer,
	b_lider_grupo boolean
)
;

CREATE TABLE investigador ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(200) NOT NULL,
	c_categoria varchar(4)
)
;

CREATE TABLE libro ( 
	k_ISBN varchar(19) NOT NULL,
	n_titulo varchar(300) NOT NULL,
	i_editorial integer NOT NULL,
	i_pais_publicacion integer NOT NULL
)
;

CREATE TABLE libro_autor ( 
	i_cod_libro integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE libro_investigacion ( 
	k_codigo serial NOT NULL,
	c_ISBN_libro varchar(10) NOT NULL,
	f_fecha_publicacion date NOT NULL,
	b_validacion_inv_an5 boolean,
	c_categoria varchar(10),
	b_clasificado boolean,
	b_certificado_validacion boolean
)
;

CREATE TABLE municipio ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(50) NOT NULL,
	i_departamento integer NOT NULL
)
;

CREATE TABLE pais ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(50) NOT NULL
)
;

CREATE TABLE part_ciud_proyecto_CTI ( 
	k_codigo serial NOT NULL,
	n_titulo varchar(300) NOT NULL,
	f_fecha_inicio date NOT NULL,
	n_nombre_comunidad varchar(300) NOT NULL,
	i_investigador_principal integer NOT NULL,
	n_constancia_participacion boolean,
	c_categoria varchar(10),
	b_clasificado boolean,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE part_proy_CTI_entidad ( 
	i_cod_part_proyecto_CTI integer,
	i_cod_entidad integer
)
;

CREATE TABLE patente ( 
	k_codigo serial NOT NULL,
	n_numero_patente varchar(50) NOT NULL,
	b_certificado_patente boolean NOT NULL,
	i_ano_obtencion integer NOT NULL,
	n_gaceta varchar(50) NOT NULL,
	c_categoria varchar(10),
	b_clasificado boolean,
	i_via_obtencion integer,
	b_examen_preliminar boolean,
	b_examen_fondo boolean
)
;

CREATE TABLE patente_contrato ( 
	k_codigo serial NOT NULL,
	c_numero_contrato varchar(20) NOT NULL,
	c_NIT_empresa varchar(20) NOT NULL,
	n_nombre_empresa varchar(50) NOT NULL,
	b_certificado_existencia boolean NOT NULL,
	i_codigo_patente integer NOT NULL
)
;

CREATE TABLE patente_pais ( 
	i_cod_patente integer,
	i_cod_pais integer
)
;

CREATE TABLE patente_titular ( 
	i_cod_patente integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE planta_piloto ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(300) NOT NULL,
	f_fecha date NOT NULL,
	i_institucion_financiadora integer NOT NULL,
	b_copia_contrato boolean,
	i_pais_elaboracion integer NOT NULL,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE planta_piloto_autor ( 
	i_cod_planta_piloto integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE programa_ondas ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(150) NOT NULL,
	b_registro_BD boolean NOT NULL,
	n_institucion varchar(200) NOT NULL,
	i_municipio integer,
	i_departamento integer,
	b_resultados boolean NOT NULL,
	b_reconocido boolean,
	b_participacion_ferias boolean,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE programa_ondas_autor ( 
	i_cod_programa_ondas integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE prototipo_ind ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(300) NOT NULL,
	f_fecha date NOT NULL,
	i_institucion_financiadora integer NOT NULL,
	i_pais_obtencion integer NOT NULL,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE prototipo_ind_autor ( 
	i_cod_prototipo_ind integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE proyecto ( 
	k_codigo serial NOT NULL,
	n_titulo varchar(300) NOT NULL,
	n_intitucion varchar(300) NOT NULL,
	n_entidad_financiadora varchar(300) NOT NULL,
	i_financiacion integer NOT NULL,
	b_acto_admin boolean NOT NULL,
	i_ano integer NOT NULL,
	n_numero_contrato varchar(50),
	i_tipo_proyecto integer,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE proyecto_ext_CTI ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(300) NOT NULL,
	f_fecha_inicio date NOT NULL,
	f_fecha_fin date,
	n_nombre_comunidad varchar(300) NOT NULL,
	n_resumen_ctel varchar(300) NOT NULL,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE proyecto_ext_CTI_entidad ( 
	i_cod_proyecto_ext_CTI integer,
	i_cod_entidad integer
)
;

CREATE TABLE proyecto_ext_CTI_investigador ( 
	i_cod_proyecto_ext integer,
	i_cod_investigador integer,
	b_investigador_principal boolean,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE proyecto_investigador ( 
	i_cod_proyecto integer,
	i_cod_investigador integer,
	b_investigador_principal boolean,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE red_conocimiento ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(300) NOT NULL,
	i_pais integer NOT NULL,
	f_fecha_inicio date NOT NULL,
	i_investigador_principal integer NOT NULL,
	n_nombre_comunidad varchar(300) NOT NULL,
	n_pag_web varchar(300),
	b_lider_red boolean,
	c_categoria varchar(10),
	b_clasificado boolean,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE red_conocimiento_entidad ( 
	i_cod_red_conocimiento integer,
	i_cod_entidad integer
)
;

CREATE TABLE revista ( 
	k_ISSN varchar(15) NOT NULL,
	n_nombre varchar(200) NOT NULL
)
;

CREATE TABLE secreto_emp ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(300) NOT NULL,
	i_valor_contrato integer NOT NULL,
	b_certificacion boolean NOT NULL,
	n_numero_contrato varchar(50) NOT NULL,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE secreto_emp_autor ( 
	i_cod_secreto_emp integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE signos_dis ( 
	k_codigo serial NOT NULL,
	c_numero_reg varchar(50) NOT NULL,
	n_titulo varchar(300) NOT NULL,
	i_ano integer NOT NULL,
	i_mes integer NOT NULL,
	b_certificado_reg boolean,
	n_condiciones_uso varchar(300),
	i_pais_obtencion integer NOT NULL,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE signos_dis_titular ( 
	i_cod_signos_dis integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE software ( 
	k_codigo serial NOT NULL,
	n_titulo varchar(300) NOT NULL,
	c_num_reg_derechos_autor varchar(50) NOT NULL,
	i_ano integer NOT NULL,
	n_descripcion varchar(800) NOT NULL,
	c_cod_proy_colciencias varchar(20),
	b_certificacion boolean,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE software_autor ( 
	i_cod_software integer,
	i_cod_investigador integer,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE tipo_apoyo ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(100) NOT NULL
)
;

CREATE TABLE tipo_empresa ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(50) NOT NULL
)
;

CREATE TABLE tipo_identificacion_empresa ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(50) NOT NULL
)
;

CREATE TABLE tipo_participacion_evento ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(50) NOT NULL
)
;

CREATE TABLE tipo_proyecto ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(50) NOT NULL
)
;

CREATE TABLE tipo_trabajo ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(50) NOT NULL
)
;

CREATE TABLE trabajo_grado ( 
	k_codigo serial NOT NULL,
	n_titulo varchar(300) NOT NULL,
	n_autor varchar(300) NOT NULL,
	n_institucion varchar(300) NOT NULL,
	i_ano integer NOT NULL,
	b_aprobado boolean NOT NULL,
	i_distincion integer,
	i_tipo_trabajo integer,
	c_categoria varchar(10),
	b_clasificado boolean
)
;

CREATE TABLE trabajo_grado_director ( 
	i_cod_trabajo_grado integer,
	i_cod_investigador integer,
	b_director boolean,
	i_cod_grupo_investigacion integer
)
;

CREATE TABLE via_obtencion ( 
	k_codigo serial NOT NULL,
	n_nombre varchar(30) NOT NULL
)
;


--  Create Primary Key Constraints 
ALTER TABLE apoyo_prog_f ADD CONSTRAINT PK_apoyo_programa 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE area_conocimiento ADD CONSTRAINT PK_area_conocimiento 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE articulo ADD CONSTRAINT PK_articulo 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE BCI ADD CONSTRAINT PK_clasificación_BCI 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE boletin ADD CONSTRAINT PK_boletin 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE cap_libro_investigacion ADD CONSTRAINT PK_cap_libro_investigacion 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE categoria ADD CONSTRAINT PK_categoria 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE categoria_investigador ADD CONSTRAINT PK_categoria_investigador 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE categoriaJCR ADD CONSTRAINT PK_categoriaJCR 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE categoriaSJR ADD CONSTRAINT PK_categoriaSJR 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE citacion ADD CONSTRAINT PK_citacion 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE clasificacion_JCR ADD CONSTRAINT PK_clasificacion_JCR 
	PRIMARY KEY (i_ISSN, i_ano)
;


ALTER TABLE clasificacion_SJR ADD CONSTRAINT PK_clasificacion_SJR 
	PRIMARY KEY (i_ISSN, i_ano)
;


ALTER TABLE consultoria ADD CONSTRAINT PK_consultorias_ifi 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE departamento ADD CONSTRAINT PK_departamento 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE diseno_industrial ADD CONSTRAINT PK_diseno_industrial 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE distincion_trabajo_grado ADD CONSTRAINT PK_distincion_trabajo_grado 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE doc_trabajo ADD CONSTRAINT PK_documento_trabajo 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE edicion ADD CONSTRAINT PK_edicion_libro 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE editorial ADD CONSTRAINT PK_editorial 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE emp_base_tec ADD CONSTRAINT PK_emp_base_tec 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE entidad ADD CONSTRAINT PK_entidad 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE espacio_part_proyecto_CTI ADD CONSTRAINT PK_espacio_part_proyecto_CTI 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE esq_circuito ADD CONSTRAINT PK_esq_circuito 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE est_comunicacion_conocimiento ADD CONSTRAINT PK_est_comunicacion_conocimiento 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE est_fomento_CTI ADD CONSTRAINT PK_est_fomento_CTI 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE evento_cientifico ADD CONSTRAINT PK_evento_cientifico 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE evento_cientifico_investigador ADD CONSTRAINT PK_evento_cientifico_investigador 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE financiacion_proyecto ADD CONSTRAINT PK_financiacion_proyecto 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE gen_cont_impreso ADD CONSTRAINT PK_gen_cont_impreso 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE gen_cont_multimedia ADD CONSTRAINT PK_gen_cont_multimedia 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE gen_cont_participacion ADD CONSTRAINT PK_gen_cont_participacion 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE gen_cont_virtual ADD CONSTRAINT PK_gen_cont_virtual 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE grupo_investigacion ADD CONSTRAINT PK_grupo_investigacion 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE informe_final ADD CONSTRAINT PK_informe_final 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE informe_tec ADD CONSTRAINT PK_informe_tec 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE innovacion_ps ADD CONSTRAINT PK_innovacion_ps 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE investigador ADD CONSTRAINT PK_investigador 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE libro ADD CONSTRAINT PK_libro 
	PRIMARY KEY (k_ISBN)
;


ALTER TABLE libro_investigacion ADD CONSTRAINT PK_libro_investigacion 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE municipio ADD CONSTRAINT PK_municipio 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE pais ADD CONSTRAINT PK_pais 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE part_ciud_proyecto_CTI ADD CONSTRAINT PK_part_proyecto_CTI 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE patente ADD CONSTRAINT PK_patente 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE patente_contrato ADD CONSTRAINT PK_patente_contrato 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE planta_piloto ADD CONSTRAINT PK_planta_piloto 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE programa_ondas ADD CONSTRAINT PK_programa_ondas 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE prototipo_ind ADD CONSTRAINT PK_prototipo_ind 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE proyecto ADD CONSTRAINT PK_proyecto 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE proyecto_ext_CTI ADD CONSTRAINT PK_proyecto_ext 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE red_conocimiento ADD CONSTRAINT PK_red_conocimiento 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE revista ADD CONSTRAINT PK_revista 
	PRIMARY KEY (k_ISSN)
;


ALTER TABLE secreto_emp ADD CONSTRAINT PK_secreto_emp 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE signos_dis ADD CONSTRAINT PK_signos_dis 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE software ADD CONSTRAINT PK_software 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE tipo_apoyo ADD CONSTRAINT PK_tipo_apoyo 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE tipo_empresa ADD CONSTRAINT PK_tipo_empresa 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE tipo_identificacion_empresa ADD CONSTRAINT PK_tipo_identificacion_empresa 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE tipo_participacion_evento ADD CONSTRAINT PK_tipo_participacion_evento 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE tipo_proyecto ADD CONSTRAINT PK_tipo_proyecto 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE tipo_trabajo ADD CONSTRAINT PK_tipo_trabajo 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE trabajo_grado ADD CONSTRAINT PK_trabajo_grado 
	PRIMARY KEY (k_codigo)
;


ALTER TABLE via_obtencion ADD CONSTRAINT PK_via_obtencion 
	PRIMARY KEY (k_codigo)
;




--  Create Foreign Key Constraints 
ALTER TABLE apoyo_prog_f ADD CONSTRAINT FK_apoyo_prog_f_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE apoyo_prog_f ADD CONSTRAINT FK_apoyo_prog_f_tipo_apoyo 
	FOREIGN KEY (i_tipo_apoyo) REFERENCES tipo_apoyo (k_codigo)
;

ALTER TABLE apoyo_prog_f_autor ADD CONSTRAINT FK_apoyo_prog_f_autor_apoyo_prog_f 
	FOREIGN KEY (i_cod_apoyo_prog_f) REFERENCES apoyo_prog_f (k_codigo)
;

ALTER TABLE apoyo_prog_f_autor ADD CONSTRAINT FK_apoyo_prog_f_autor_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE apoyo_prog_f_autor ADD CONSTRAINT FK_apoyo_prog_f_autor_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE area_conocimiento_categoria ADD CONSTRAINT FK_area_conocimiento_categoria_area_conocimiento 
	FOREIGN KEY (i_area_conocimiento) REFERENCES area_conocimiento (k_codigo)
;

ALTER TABLE area_conocimiento_categoria ADD CONSTRAINT FK_area_conocimiento_categoria_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE articulo ADD CONSTRAINT FK_articulo_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE articulo ADD CONSTRAINT FK_articulo_pais 
	FOREIGN KEY (i_pais_publicacion) REFERENCES pais (k_codigo)
;

ALTER TABLE articulo ADD CONSTRAINT FK_articulo_revista 
	FOREIGN KEY (i_ISSN_revista) REFERENCES revista (k_ISSN)
;

ALTER TABLE articulo_autor ADD CONSTRAINT FK_articulo_autor_articulo 
	FOREIGN KEY (i_cod_articulo) REFERENCES articulo (k_codigo)
;

ALTER TABLE articulo_autor ADD CONSTRAINT FK_articulo_autor_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE articulo_autor ADD CONSTRAINT FK_articulo_autor_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE BCI ADD CONSTRAINT FK_BCI_libro 
	FOREIGN KEY (c_ISBN) REFERENCES libro (k_ISBN)
;

ALTER TABLE boletin ADD CONSTRAINT FK_boletin_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE boletin_autor ADD CONSTRAINT FK_boletin_autor_boletin 
	FOREIGN KEY (i_cod_boletin) REFERENCES boletin (k_codigo)
;

ALTER TABLE boletin_autor ADD CONSTRAINT FK_boletin_autor_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE boletin_autor ADD CONSTRAINT FK_boletin_autor_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE cap_libro_autor ADD CONSTRAINT FK_cap_libro_autor_cap_libro_investigacion 
	FOREIGN KEY (i_cod_cap_libro) REFERENCES cap_libro_investigacion (k_codigo)
;

ALTER TABLE cap_libro_autor ADD CONSTRAINT FK_cap_libro_autor_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE cap_libro_autor ADD CONSTRAINT FK_cap_libro_autor_investigador 
	FOREIGN KEY (i_cod_integrante) REFERENCES investigador (k_codigo)
;

ALTER TABLE cap_libro_investigacion ADD CONSTRAINT FK_cap_libro_investigacion_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE cap_libro_investigacion ADD CONSTRAINT FK_cap_libro_investigacion_libro 
	FOREIGN KEY (c_ISBN_libro) REFERENCES libro (k_ISBN)
;

ALTER TABLE citacion ADD CONSTRAINT FK_citacion_libro 
	FOREIGN KEY (c_ISBN) REFERENCES libro (k_ISBN)
;

ALTER TABLE citacion ADD CONSTRAINT FK_citacion_libro_investigacion 
	FOREIGN KEY (i_libro_investigacion) REFERENCES libro_investigacion (k_codigo)
;

ALTER TABLE citacion ADD CONSTRAINT FK_citacion_revista 
	FOREIGN KEY (c_ISSN) REFERENCES revista (k_ISSN)
;

ALTER TABLE clasificacion_JCR ADD CONSTRAINT FK_clasificacion_JCR_categoriaJCR 
	FOREIGN KEY (i_categoria) REFERENCES categoriaJCR (k_codigo)
;

ALTER TABLE clasificacion_JCR ADD CONSTRAINT FK_clasificacion_JCR_revista 
	FOREIGN KEY (i_ISSN) REFERENCES revista (k_ISSN)
;

ALTER TABLE clasificacion_SJR ADD CONSTRAINT FK_clasificacion_SJR_categoriaSJR 
	FOREIGN KEY (i_categoria) REFERENCES categoriaSJR (k_codigo)
;

ALTER TABLE clasificacion_SJR ADD CONSTRAINT FK_clasificacion_SJR_revista 
	FOREIGN KEY (i_ISSN) REFERENCES revista (k_ISSN)
;

ALTER TABLE consultoria ADD CONSTRAINT FK_consultoria_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE consultoria_autor ADD CONSTRAINT FK_consultoria_autor_consultoria 
	FOREIGN KEY (i_cod_consultoria) REFERENCES consultoria (k_codigo)
;

ALTER TABLE consultoria_autor ADD CONSTRAINT FK_consultoria_autor_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE consultoria_autor ADD CONSTRAINT FK_consultoria_autor_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE diseno_industrial ADD CONSTRAINT FK_diseno_industrial_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE diseno_industrial ADD CONSTRAINT FK_diseno_industrial_pais 
	FOREIGN KEY (i_pais_obtencion) REFERENCES pais (k_codigo)
;

ALTER TABLE diseno_industrial_titular ADD CONSTRAINT FK_diseno_industrial_titular_diseno_industrial 
	FOREIGN KEY (i_cod_diseno_industrial) REFERENCES diseno_industrial (k_codigo)
;

ALTER TABLE diseno_industrial_titular ADD CONSTRAINT FK_diseno_industrial_titular_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE diseno_industrial_titular ADD CONSTRAINT FK_diseno_industrial_titular_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE doc_trabajo ADD CONSTRAINT FK_doc_trabajo_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE doc_trabajo_autor ADD CONSTRAINT FK_doc_trabajo_autor_doc_trabajo 
	FOREIGN KEY (i_cod_doc_trabajo) REFERENCES doc_trabajo (k_codigo)
;

ALTER TABLE doc_trabajo_autor ADD CONSTRAINT FK_doc_trabajo_autor_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE doc_trabajo_autor ADD CONSTRAINT FK_doc_trabajo_autor_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE doc_trabajo_entidad ADD CONSTRAINT FK_doc_trabajo_entidad_doc_trabajo 
	FOREIGN KEY (i_cod_doc_trabajo) REFERENCES doc_trabajo (k_codigo)
;

ALTER TABLE doc_trabajo_entidad ADD CONSTRAINT FK_doc_trabajo_entidad_entidad 
	FOREIGN KEY (i_cod_entidad) REFERENCES entidad (k_codigo)
;

ALTER TABLE edicion ADD CONSTRAINT FK_edicion_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE edicion ADD CONSTRAINT FK_edicion_libro_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE edicion ADD CONSTRAINT FK_edicion_libro_investigador 
	FOREIGN KEY (i_editor) REFERENCES investigador (k_codigo)
;

ALTER TABLE emp_base_tec ADD CONSTRAINT FK_emp_base_tec_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE emp_base_tec ADD CONSTRAINT FK_emp_base_tec_tipo_empresa 
	FOREIGN KEY (i_tipo_empresa) REFERENCES tipo_empresa (k_codigo)
;

ALTER TABLE emp_base_tec ADD CONSTRAINT FK_emp_base_tec_tipo_identificacion_empresa 
	FOREIGN KEY (i_tipo_identificacion) REFERENCES tipo_identificacion_empresa (k_codigo)
;

ALTER TABLE emp_base_tec_autor ADD CONSTRAINT FK_emp_base_tec_autor_emp_base_tec 
	FOREIGN KEY (i_cod_emp_base_tec) REFERENCES emp_base_tec (k_codigo)
;

ALTER TABLE emp_base_tec_autor ADD CONSTRAINT FK_emp_base_tec_autor_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE emp_base_tec_autor ADD CONSTRAINT FK_emp_base_tec_autor_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE espacio_part_proyecto_CTI ADD CONSTRAINT FK_espacio_part_proyecto_CTI_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE espacio_part_proyecto_CTI_autor ADD CONSTRAINT FK_espacio_part_proyecto_CTI_autor_espacio_part_proyecto_CTI 
	FOREIGN KEY (i_cod_espacio_part_proyecto_CTI) REFERENCES espacio_part_proyecto_CTI (k_codigo)
;

ALTER TABLE espacio_part_proyecto_CTI_autor ADD CONSTRAINT FK_espacio_part_proyecto_CTI_autor_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE espacio_part_proyecto_CTI_autor ADD CONSTRAINT FK_espacio_part_proyecto_CTI_autor_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE espacio_part_proyecto_CTI_entidad ADD CONSTRAINT FK_espacio_part_proyecto_CTI_entidad_entidad 
	FOREIGN KEY (i_cod_entidad) REFERENCES entidad (k_codigo)
;

ALTER TABLE espacio_part_proyecto_CTI_entidad ADD CONSTRAINT FK_espacio_part_proyecto_CTI_entidad_espacio_part_proyecto_CTI 
	FOREIGN KEY (i_cod_proy_participacion) REFERENCES espacio_part_proyecto_CTI (k_codigo)
;

ALTER TABLE esq_circuito ADD CONSTRAINT FK_esq_circuito_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE esq_circuito ADD CONSTRAINT FK_esq_circuito_pais 
	FOREIGN KEY (i_pais_obtencion) REFERENCES pais (k_codigo)
;

ALTER TABLE esq_circuito_titular ADD CONSTRAINT FK_esq_circuito_titular_esq_circuito 
	FOREIGN KEY (i_cod_esq_circuito) REFERENCES esq_circuito (k_codigo)
;

ALTER TABLE esq_circuito_titular ADD CONSTRAINT FK_esq_circuito_titular_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE esq_circuito_titular ADD CONSTRAINT FK_esq_circuito_titular_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE est_comunicacion_conocimiento ADD CONSTRAINT FK_est_comunicacion_conocimiento_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE est_comunicacion_conocimiento_entidad ADD CONSTRAINT FK_est_comunicacion_conocimiento_entidad 
	FOREIGN KEY (k_cod_entidad) REFERENCES entidad (k_codigo)
;

ALTER TABLE est_comunicacion_conocimiento_entidad ADD CONSTRAINT FK_est_comunicacion_conocimiento_est_comunicacion_conocimiento 
	FOREIGN KEY (k_cod_est_comunicacion) REFERENCES est_comunicacion_conocimiento (k_codigo)
;

ALTER TABLE est_comunicacion_conocimiento_investigador ADD CONSTRAINT FK_est_comunicacion_conocimiento_investigador_est_comunicacion_conocimiento 
	FOREIGN KEY (i_cod_est_comunicacion_conocimiento) REFERENCES est_comunicacion_conocimiento (k_codigo)
;

ALTER TABLE est_comunicacion_conocimiento_investigador ADD CONSTRAINT FK_est_comunicacion_conocimiento_investigador_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE est_fomento_CTI ADD CONSTRAINT FK_est_fomento_CTI_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE est_fomento_CTI ADD CONSTRAINT FK_est_fomento_CTI_investigador 
	FOREIGN KEY (i_investigador_principal) REFERENCES investigador (k_codigo)
;

ALTER TABLE est_fomento_CTI_entidad ADD CONSTRAINT FK_est_fomento_CTI_entidad_entidad 
	FOREIGN KEY (i_cod_entidad) REFERENCES entidad (k_codigo)
;

ALTER TABLE est_fomento_CTI_entidad ADD CONSTRAINT FK_est_fomento_CTI_entidad_est_fomento_CTI 
	FOREIGN KEY (i_cod_est_fomento_) REFERENCES est_fomento_CTI (k_codigo)
;

ALTER TABLE evento_cientifico_entidad ADD CONSTRAINT FK_evento_cientifico_entidad_entidad 
	FOREIGN KEY (k_cod_entidad) REFERENCES entidad (k_codigo)
;

ALTER TABLE evento_cientifico_entidad ADD CONSTRAINT FK_evento_cientifico_entidad_evento_cientifico 
	FOREIGN KEY (k_cod_evento_cientifico) REFERENCES evento_cientifico (k_codigo)
;

ALTER TABLE evento_cientifico_investigador ADD CONSTRAINT FK_evento_cientifico_investigador_evento_cientifico 
	FOREIGN KEY (i_cod_evento_cientifico) REFERENCES evento_cientifico (k_codigo)
;

ALTER TABLE evento_cientifico_investigador ADD CONSTRAINT FK_evento_cientifico_investigador_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE evento_cientifico_investigador ADD CONSTRAINT FK_evento_cientifico_investigador_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE evento_cientifico_investigador ADD CONSTRAINT FK_evento_cientifico_investigador_tipo_participacion_evento 
	FOREIGN KEY (i_tipo_participacion) REFERENCES tipo_participacion_evento (k_codigo)
;

ALTER TABLE gen_cont_impreso ADD CONSTRAINT FK_gen_cont_impreso_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE gen_cont_impreso ADD CONSTRAINT FK_gen_cont_impreso_pais 
	FOREIGN KEY (i_lugar_publicacion) REFERENCES pais (k_codigo)
;

ALTER TABLE gen_cont_multimedia ADD CONSTRAINT FK_gen_cont_multimedia_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE gen_cont_multimedia_entidad ADD CONSTRAINT FK_gen_cont_multimedia_entidad_entidad 
	FOREIGN KEY (i_cod_entidad) REFERENCES entidad (k_codigo)
;

ALTER TABLE gen_cont_multimedia_entidad ADD CONSTRAINT FK_gen_cont_multimedia_entidad_gen_cont_multimedia 
	FOREIGN KEY (i_cod_gen_cont_multimedia) REFERENCES gen_cont_multimedia (k_codigo)
;

ALTER TABLE gen_cont_multimedia_participante ADD CONSTRAINT FK_gen_cont_multimedia_participante_gen_cont_multimedia 
	FOREIGN KEY (i_cod_gen_cont_multimedia) REFERENCES gen_cont_multimedia (k_codigo)
;

ALTER TABLE gen_cont_multimedia_participante ADD CONSTRAINT FK_gen_cont_multimedia_participante_gen_cont_participacion 
	FOREIGN KEY (i_tipo_participacion) REFERENCES gen_cont_participacion (k_codigo)
;

ALTER TABLE gen_cont_multimedia_participante ADD CONSTRAINT FK_gen_cont_multimedia_participante_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE gen_cont_multimedia_participante ADD CONSTRAINT FK_gen_cont_multimedia_participante_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE gen_cont_virtual_autor ADD CONSTRAINT FK_gen_cont_virtual_autor_gen_cont_virtual 
	FOREIGN KEY (i_cod_gen_cont_virtual) REFERENCES gen_cont_virtual (k_codigo)
;

ALTER TABLE gen_cont_virtual_autor ADD CONSTRAINT FK_gen_cont_virtual_autor_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE gen_cont_virtual_autor ADD CONSTRAINT FK_gen_cont_virtual_autor_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE gen_cont_virtual_entidad ADD CONSTRAINT FK_gen_cont_virtual_entidad_entidad 
	FOREIGN KEY (i_cod_entidad) REFERENCES entidad (k_codigo)
;

ALTER TABLE gen_cont_virtual_entidad ADD CONSTRAINT FK_gen_cont_virtual_entidad_gen_cont_virtual 
	FOREIGN KEY (i_cod_gen_cont_virtual) REFERENCES gen_cont_virtual (k_codigo)
;

ALTER TABLE gen_contenido_autor ADD CONSTRAINT FK_gen_contenido_autor_gen_cont_impreso 
	FOREIGN KEY (i_cod_gen_contenido) REFERENCES gen_cont_impreso (k_codigo)
;

ALTER TABLE gen_contenido_autor ADD CONSTRAINT FK_gen_contenido_autor_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE informe_final ADD CONSTRAINT FK_informe_final_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE informe_final_autor ADD CONSTRAINT FK_informe_final_autor_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE informe_final_autor ADD CONSTRAINT FK_informe_final_autor_informe_final 
	FOREIGN KEY (i_cod_informe_final) REFERENCES informe_final (k_codigo)
;

ALTER TABLE informe_final_autor ADD CONSTRAINT FK_informe_final_autor_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE informe_tec ADD CONSTRAINT FK_informe_tec_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE informe_tec_autor ADD CONSTRAINT FK_informe_tec_autor_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE informe_tec_autor ADD CONSTRAINT FK_informe_tec_autor_informe_tec 
	FOREIGN KEY (i_cod_informe) REFERENCES informe_tec (k_codigo)
;

ALTER TABLE informe_tec_autor ADD CONSTRAINT FK_informe_tec_autor_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE innovacion_ps ADD CONSTRAINT FK_innovacion_ps_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE innovacion_ps_autor ADD CONSTRAINT FK_innovacion_ps_autor_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE innovacion_ps_autor ADD CONSTRAINT FK_innovacion_ps_autor_innovacion_ps 
	FOREIGN KEY (i_cod_innovacion_ps) REFERENCES innovacion_ps (k_codigo)
;

ALTER TABLE innovacion_ps_autor ADD CONSTRAINT FK_innovacion_ps_autor_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE integrante_grupo ADD CONSTRAINT FK_integrante_grupo_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE integrante_grupo ADD CONSTRAINT FK_integrante_grupo_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE investigador ADD CONSTRAINT FK_investigador_categoria_investigador 
	FOREIGN KEY (c_categoria) REFERENCES categoria_investigador (k_codigo)
;

ALTER TABLE libro ADD CONSTRAINT FK_libro_editorial 
	FOREIGN KEY (i_editorial) REFERENCES editorial (k_codigo)
;

ALTER TABLE libro ADD CONSTRAINT FK_libro_pais 
	FOREIGN KEY (i_pais_publicacion) REFERENCES pais (k_codigo)
;

ALTER TABLE libro_autor ADD CONSTRAINT FK_libro_autor_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE libro_autor ADD CONSTRAINT FK_libro_autor_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE libro_autor ADD CONSTRAINT FK_libro_autor_libro_investigacion 
	FOREIGN KEY (i_cod_libro) REFERENCES libro_investigacion (k_codigo)
;

ALTER TABLE libro_investigacion ADD CONSTRAINT FK_libro_investigacion_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE libro_investigacion ADD CONSTRAINT FK_libro_investigacion_libro 
	FOREIGN KEY (c_ISBN_libro) REFERENCES libro (k_ISBN)
;

ALTER TABLE municipio ADD CONSTRAINT FK_municipio_departamento 
	FOREIGN KEY (i_departamento) REFERENCES departamento (k_codigo)
;

ALTER TABLE part_ciud_proyecto_CTI ADD CONSTRAINT FK_part_ciud_proyecto_CTI_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE part_ciud_proyecto_CTI ADD CONSTRAINT FK_part_ciud_proyecto_CTI_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE part_ciud_proyecto_CTI ADD CONSTRAINT FK_part_ciud_proyecto_CTI_investigador 
	FOREIGN KEY (i_investigador_principal) REFERENCES investigador (k_codigo)
;

ALTER TABLE part_proy_CTI_entidad ADD CONSTRAINT FK_part_proy_CTI_entidad_entidad 
	FOREIGN KEY (i_cod_entidad) REFERENCES entidad (k_codigo)
;

ALTER TABLE part_proy_CTI_entidad ADD CONSTRAINT FK_part_proy_CTI_entidad_part_ciud_proyecto_CTI 
	FOREIGN KEY (i_cod_part_proyecto_CTI) REFERENCES part_ciud_proyecto_CTI (k_codigo)
;

ALTER TABLE patente ADD CONSTRAINT FK_patente_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE patente ADD CONSTRAINT FK_patente_via_obtencion 
	FOREIGN KEY (i_via_obtencion) REFERENCES via_obtencion (k_codigo)
;

ALTER TABLE patente_contrato ADD CONSTRAINT FK_patente_contrato_patente 
	FOREIGN KEY (i_codigo_patente) REFERENCES patente (k_codigo)
;

ALTER TABLE patente_pais ADD CONSTRAINT FK_patente_pais_pais 
	FOREIGN KEY (i_cod_pais) REFERENCES pais (k_codigo)
;

ALTER TABLE patente_pais ADD CONSTRAINT FK_patente_pais_patente 
	FOREIGN KEY (i_cod_patente) REFERENCES patente (k_codigo)
;

ALTER TABLE patente_titular ADD CONSTRAINT FK_patente_titular_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE patente_titular ADD CONSTRAINT FK_patente_titular_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE patente_titular ADD CONSTRAINT FK_patente_titular_patente 
	FOREIGN KEY (i_cod_patente) REFERENCES patente (k_codigo)
;

ALTER TABLE planta_piloto ADD CONSTRAINT FK_planta_piloto_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE planta_piloto ADD CONSTRAINT FK_planta_piloto_entidad 
	FOREIGN KEY (i_institucion_financiadora) REFERENCES entidad (k_codigo)
;

ALTER TABLE planta_piloto ADD CONSTRAINT FK_planta_piloto_pais 
	FOREIGN KEY (i_pais_elaboracion) REFERENCES pais (k_codigo)
;

ALTER TABLE planta_piloto_autor ADD CONSTRAINT FK_planta_piloto_autor_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE planta_piloto_autor ADD CONSTRAINT FK_planta_piloto_autor_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE planta_piloto_autor ADD CONSTRAINT FK_planta_piloto_autor_planta_piloto 
	FOREIGN KEY (i_cod_planta_piloto) REFERENCES planta_piloto (k_codigo)
;

ALTER TABLE programa_ondas ADD CONSTRAINT FK_programa_ondas_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE programa_ondas ADD CONSTRAINT FK_programa_ondas_departamento 
	FOREIGN KEY (i_departamento) REFERENCES departamento (k_codigo)
;

ALTER TABLE programa_ondas ADD CONSTRAINT FK_programa_ondas_municipio 
	FOREIGN KEY (i_municipio) REFERENCES municipio (k_codigo)
;

ALTER TABLE programa_ondas_autor ADD CONSTRAINT FK_programa_ondas_autor_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE programa_ondas_autor ADD CONSTRAINT FK_programa_ondas_autor_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE programa_ondas_autor ADD CONSTRAINT FK_programa_ondas_autor_programa_ondas 
	FOREIGN KEY (i_cod_programa_ondas) REFERENCES programa_ondas (k_codigo)
;

ALTER TABLE prototipo_ind ADD CONSTRAINT FK_prototipo_ind_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE prototipo_ind ADD CONSTRAINT FK_prototipo_ind_entidad 
	FOREIGN KEY (i_institucion_financiadora) REFERENCES entidad (k_codigo)
;

ALTER TABLE prototipo_ind ADD CONSTRAINT FK_prototipo_ind_pais 
	FOREIGN KEY (i_pais_obtencion) REFERENCES pais (k_codigo)
;

ALTER TABLE prototipo_ind_autor ADD CONSTRAINT FK_prototipo_ind_autor_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE prototipo_ind_autor ADD CONSTRAINT FK_prototipo_ind_autor_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE prototipo_ind_autor ADD CONSTRAINT FK_prototipo_ind_autor_prototipo_ind 
	FOREIGN KEY (i_cod_prototipo_ind) REFERENCES prototipo_ind (k_codigo)
;

ALTER TABLE proyecto ADD CONSTRAINT FK_proyecto_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE proyecto ADD CONSTRAINT FK_proyecto_financiacion_proyecto 
	FOREIGN KEY (i_financiacion) REFERENCES financiacion_proyecto (k_codigo)
;

ALTER TABLE proyecto ADD CONSTRAINT FK_proyecto_tipo_proyecto 
	FOREIGN KEY (i_tipo_proyecto) REFERENCES tipo_proyecto (k_codigo)
;

ALTER TABLE proyecto_ext_CTI ADD CONSTRAINT FK_proyecto_ext_CTI_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE proyecto_ext_CTI_entidad ADD CONSTRAINT FK_proyecto_ext_CTI_entidad_entidad 
	FOREIGN KEY (i_cod_entidad) REFERENCES entidad (k_codigo)
;

ALTER TABLE proyecto_ext_CTI_entidad ADD CONSTRAINT FK_proyecto_ext_CTI_entidad_proyecto_ext_CTI 
	FOREIGN KEY (i_cod_proyecto_ext_CTI) REFERENCES proyecto_ext_CTI (k_codigo)
;

ALTER TABLE proyecto_ext_CTI_investigador ADD CONSTRAINT FK_proyecto_ext_CTI_investigador_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE proyecto_ext_CTI_investigador ADD CONSTRAINT FK_proyecto_ext_CTI_investigador_proyecto_ext_CTI 
	FOREIGN KEY (i_cod_proyecto_ext) REFERENCES proyecto_ext_CTI (k_codigo)
;

ALTER TABLE proyecto_investigador ADD CONSTRAINT FK_proyecto_investigador_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE proyecto_investigador ADD CONSTRAINT FK_proyecto_investigador_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE proyecto_investigador ADD CONSTRAINT FK_proyecto_investigador_proyecto 
	FOREIGN KEY (i_cod_proyecto) REFERENCES proyecto (k_codigo)
;

ALTER TABLE red_conocimiento ADD CONSTRAINT FK_red_conocimiento_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE red_conocimiento ADD CONSTRAINT FK_red_conocimiento_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE red_conocimiento ADD CONSTRAINT FK_red_conocimiento_investigador 
	FOREIGN KEY (i_investigador_principal) REFERENCES investigador (k_codigo)
;

ALTER TABLE red_conocimiento_entidad ADD CONSTRAINT FK_red_conocimiento_entidad_red_conocimiento 
	FOREIGN KEY (i_cod_red_conocimiento) REFERENCES red_conocimiento (k_codigo)
;

ALTER TABLE secreto_emp ADD CONSTRAINT FK_secreto_emp_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE secreto_emp_autor ADD CONSTRAINT FK_secreto_emp_autor_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE secreto_emp_autor ADD CONSTRAINT FK_secreto_emp_autor_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE secreto_emp_autor ADD CONSTRAINT FK_secreto_emp_autor_secreto_emp 
	FOREIGN KEY (i_cod_secreto_emp) REFERENCES secreto_emp (k_codigo)
;

ALTER TABLE signos_dis ADD CONSTRAINT FK_signos_dis_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE signos_dis ADD CONSTRAINT FK_signos_dis_pais 
	FOREIGN KEY (i_pais_obtencion) REFERENCES pais (k_codigo)
;

ALTER TABLE signos_dis_titular ADD CONSTRAINT FK_signos_dis_titular_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE signos_dis_titular ADD CONSTRAINT FK_signos_dis_titular_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE signos_dis_titular ADD CONSTRAINT FK_signos_dis_titular_signos_dis 
	FOREIGN KEY (i_cod_signos_dis) REFERENCES signos_dis (k_codigo)
;

ALTER TABLE software ADD CONSTRAINT FK_software_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE software_autor ADD CONSTRAINT FK_software_autor_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE software_autor ADD CONSTRAINT FK_software_autor_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE software_autor ADD CONSTRAINT FK_software_autor_software 
	FOREIGN KEY (i_cod_software) REFERENCES software (k_codigo)
;

ALTER TABLE trabajo_grado ADD CONSTRAINT FK_trabajo_grado_categoria 
	FOREIGN KEY (c_categoria) REFERENCES categoria (k_codigo)
;

ALTER TABLE trabajo_grado ADD CONSTRAINT FK_trabajo_grado_distincion_trabajo_grado 
	FOREIGN KEY (i_distincion) REFERENCES distincion_trabajo_grado (k_codigo)
;

ALTER TABLE trabajo_grado ADD CONSTRAINT FK_trabajo_grado_tipo_trabajo 
	FOREIGN KEY (i_tipo_trabajo) REFERENCES tipo_trabajo (k_codigo)
;

ALTER TABLE trabajo_grado_director ADD CONSTRAINT FK_trabajo_grado_director_grupo_investigacion 
	FOREIGN KEY (i_cod_grupo_investigacion) REFERENCES grupo_investigacion (k_codigo)
;

ALTER TABLE trabajo_grado_director ADD CONSTRAINT FK_trabajo_grado_director_investigador 
	FOREIGN KEY (i_cod_investigador) REFERENCES investigador (k_codigo)
;

ALTER TABLE trabajo_grado_director ADD CONSTRAINT FK_trabajo_grado_director_trabajo_grado 
	FOREIGN KEY (i_cod_trabajo_grado) REFERENCES trabajo_grado (k_codigo)
;
