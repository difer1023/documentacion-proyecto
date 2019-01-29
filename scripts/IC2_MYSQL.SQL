SET FOREIGN_KEY_CHECKS=0;



DROP TABLE IF EXISTS apoyo_prog_f
;
DROP TABLE IF EXISTS area_conocimiento
;
DROP TABLE IF EXISTS articulo
;
DROP TABLE IF EXISTS articulo_autor
;
DROP TABLE IF EXISTS BCI
;
DROP TABLE IF EXISTS boletin
;
DROP TABLE IF EXISTS boletin_autor
;
DROP TABLE IF EXISTS cap_libro_autor
;
DROP TABLE IF EXISTS cap_libro_investigacion
;
DROP TABLE IF EXISTS categoria
;
DROP TABLE IF EXISTS categoria_investigador
;
DROP TABLE IF EXISTS categoriaJCR
;
DROP TABLE IF EXISTS categoriaSJR
;
DROP TABLE IF EXISTS citacion
;
DROP TABLE IF EXISTS clasificacion_JCR
;
DROP TABLE IF EXISTS clasificacion_SJR
;
DROP TABLE IF EXISTS consultoria
;
DROP TABLE IF EXISTS consultoria_autor
;
DROP TABLE IF EXISTS departamento
;
DROP TABLE IF EXISTS diseno_industrial
;
DROP TABLE IF EXISTS diseno_industrial_titular
;
DROP TABLE IF EXISTS doc_trabajo
;
DROP TABLE IF EXISTS doc_trabajo_autor
;
DROP TABLE IF EXISTS doc_trabajo_entidad
;
DROP TABLE IF EXISTS edicion
;
DROP TABLE IF EXISTS editorial
;
DROP TABLE IF EXISTS emp_base_tec
;
DROP TABLE IF EXISTS emp_base_tec_autor
;
DROP TABLE IF EXISTS entidad
;
DROP TABLE IF EXISTS espacio_part_proyecto_CTI
;
DROP TABLE IF EXISTS espacio_part_proyecto_CTI_autor
;
DROP TABLE IF EXISTS espacio_part_proyecto_CTI_entidad
;
DROP TABLE IF EXISTS esq_circuito
;
DROP TABLE IF EXISTS esq_circuito_titular
;
DROP TABLE IF EXISTS est_comunicacion_conocimiento
;
DROP TABLE IF EXISTS est_comunicacion_conocimiento_entidad
;
DROP TABLE IF EXISTS est_comunicacion_conocimiento_investigador
;
DROP TABLE IF EXISTS est_fomento_CTI
;
DROP TABLE IF EXISTS est_fomento_CTI_entidad
;
DROP TABLE IF EXISTS evento_cientifico
;
DROP TABLE IF EXISTS evento_cientifico_entidad
;
DROP TABLE IF EXISTS evento_cientifico_investigador
;
DROP TABLE IF EXISTS financiacion_proyecto
;
DROP TABLE IF EXISTS gen_cont_impreso
;
DROP TABLE IF EXISTS gen_cont_impreso_autor
;
DROP TABLE IF EXISTS gen_cont_multimedia
;
DROP TABLE IF EXISTS gen_cont_multimedia_entidad
;
DROP TABLE IF EXISTS gen_cont_multimedia_participante
;
DROP TABLE IF EXISTS gen_cont_virtual
;
DROP TABLE IF EXISTS gen_cont_virtual_autor
;
DROP TABLE IF EXISTS gen_cont_virtual_entidad
;
DROP TABLE IF EXISTS grupo_investigacion
;
DROP TABLE IF EXISTS informe_final
;
DROP TABLE IF EXISTS informe_final_autor
;
DROP TABLE IF EXISTS informe_tec
;
DROP TABLE IF EXISTS informe_tec_autor
;
DROP TABLE IF EXISTS innovacion_ps
;
DROP TABLE IF EXISTS innovacion_ps_autor
;
DROP TABLE IF EXISTS integrante_grupo
;
DROP TABLE IF EXISTS investigador
;
DROP TABLE IF EXISTS libro
;
DROP TABLE IF EXISTS libro_autor
;
DROP TABLE IF EXISTS libro_investigacion
;
DROP TABLE IF EXISTS municipio
;
DROP TABLE IF EXISTS pais
;
DROP TABLE IF EXISTS part_ciud_proyecto_CTI
;
DROP TABLE IF EXISTS part_proy_CTI_entidad
;
DROP TABLE IF EXISTS patente
;
DROP TABLE IF EXISTS patente_contrato
;
DROP TABLE IF EXISTS patente_grupo_inv
;
DROP TABLE IF EXISTS patente_pais
;
DROP TABLE IF EXISTS planta_piloto
;
DROP TABLE IF EXISTS planta_piloto_autor
;
DROP TABLE IF EXISTS programa_ondas
;
DROP TABLE IF EXISTS prototipo_ind
;
DROP TABLE IF EXISTS prototipo_ind_autor
;
DROP TABLE IF EXISTS proyecto
;
DROP TABLE IF EXISTS proyecto_ext_CTI
;
DROP TABLE IF EXISTS proyecto_ext_CTI_entidad
;
DROP TABLE IF EXISTS proyecto_ext_CTI_investigador
;
DROP TABLE IF EXISTS proyecto_investigador
;
DROP TABLE IF EXISTS reconocimiento_trabajo_grado
;
DROP TABLE IF EXISTS red_conocimiento
;
DROP TABLE IF EXISTS red_conocimiento_entidad
;
DROP TABLE IF EXISTS revista
;
DROP TABLE IF EXISTS secreto_emp
;
DROP TABLE IF EXISTS secreto_emp_autor
;
DROP TABLE IF EXISTS signos_dis
;
DROP TABLE IF EXISTS signos_dis_titular
;
DROP TABLE IF EXISTS software
;
DROP TABLE IF EXISTS software_autor
;
DROP TABLE IF EXISTS tipo_apoyo
;
DROP TABLE IF EXISTS tipo_empresa
;
DROP TABLE IF EXISTS tipo_identificacion_empresa
;
DROP TABLE IF EXISTS tipo_participacion_evento
;
DROP TABLE IF EXISTS tipo_proyecto
;
DROP TABLE IF EXISTS tipo_trabajo
;
DROP TABLE IF EXISTS trabajo_grado
;
DROP TABLE IF EXISTS trabajo_grado_director
;
DROP TABLE IF EXISTS via_obtencion
;

CREATE TABLE apoyo_prog_f
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(255) NOT NULL,
	i_institucion INTEGER,
	n_facultad VARCHAR(50),
	n_departamento VARCHAR(50),
	n_id_acto_admin VARCHAR(50),
	n_num_acto_admin VARCHAR(50),
	i_ano INTEGER,
	i_tipo_apoyo INTEGER,
	i_cod_grupo_investigacion INTEGER,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	n_programa_seleccionado VARCHAR(200),
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE area_conocimiento
(
	k_codigo VARCHAR(4) NOT NULL,
	n_nombre VARCHAR(200) NOT NULL,
	c_descripcion VARCHAR(300),
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE articulo
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_titulo VARCHAR(255) NOT NULL,
	i_ano INTEGER,
	i_mes INTEGER,
	i_volumen INTEGER,
	i_pagina_inicial INTEGER,
	i_pagina_final INTEGER,
	i_ISSN_revista VARCHAR(15),
	c_pag_web TEXT,
	c_DOI VARCHAR(200),
	i_pais_publicacion INTEGER,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE articulo_autor
(
	i_cod_articulo INTEGER,
	i_cod_investigador INTEGER,
	i_cod_grupo_investigacion INTEGER,
	i_integrante_grupo INTEGER,
	i_grupos_colaboracion INTEGER
) 
;


CREATE TABLE BCI
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	c_ISBN VARCHAR(19) NOT NULL,
	n_titulo VARCHAR(300) NOT NULL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE boletin
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_titulo VARCHAR(255) NOT NULL,
	i_ano_elaboracion INTEGER,
	i_editor INTEGER,
	n_institucion VARCHAR(255),
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE boletin_autor
(
	i_cod_boletin INTEGER,
	i_cod_investigador INTEGER,
	i_cod_grupo_investigacion INTEGER
) 
;


CREATE TABLE cap_libro_autor
(
	i_cod_cap_libro INTEGER,
	i_cod_integrante INTEGER,
	i_cod_grupo_investigacion INTEGER,
	i_integrante_grupo INTEGER,
	i_grupos_colaboracion INTEGER
) 
;


CREATE TABLE cap_libro_investigacion
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	c_ISBN_libro VARCHAR(19) NOT NULL,
	n_titulo_cap VARCHAR(300) NOT NULL,
	i_ano_publicacion INTEGER,
	b_validacion_inv_an5 BOOL,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	b_certificado_validacion BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE categoria
(
	k_codigo VARCHAR(10) NOT NULL,
	n_nombre VARCHAR(100) NOT NULL,
	c_area_conocimiento VARCHAR(4),
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE categoria_investigador
(
	k_codigo VARCHAR(4) NOT NULL,
	n_nombre VARCHAR(100) NOT NULL,
	c_descripcion VARCHAR(200),
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE categoriaJCR
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(200) NOT NULL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE categoriaSJR
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(200) NOT NULL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE citacion
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	c_ISSN VARCHAR(15),
	c_ISBN VARCHAR(19),
	i_libro_investigacion INTEGER,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE clasificacion_JCR
(
	i_ISSN VARCHAR(15) NOT NULL,
	i_ano INTEGER NOT NULL,
	c_cuartil VARCHAR(2) NOT NULL,
	i_categoria INTEGER,
	PRIMARY KEY (i_ISSN, i_ano)
) 
;


CREATE TABLE clasificacion_SJR
(
	i_ISSN VARCHAR(15) NOT NULL,
	i_ano INTEGER NOT NULL,
	c_cuartil VARCHAR(2) NOT NULL,
	i_categoria INTEGER,
	PRIMARY KEY (i_ISSN, i_ano)
) 
;


CREATE TABLE consultoria
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_titulo VARCHAR(300) NOT NULL,
	n_numero_contrato VARCHAR(50),
	i_ano INTEGER,
	b_certificacion_empresa BOOL,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE consultoria_autor
(
	i_cod_consultoria INTEGER,
	i_cod_investigador INTEGER,
	i_cod_grupo_investigacion INTEGER,
	i_integrante_grupo INTEGER,
	i_grupos_colaboracion INTEGER
) 
;


CREATE TABLE departamento
(
	k_codigo INTEGER NOT NULL,
	n_nombre VARCHAR(50) NOT NULL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE diseno_industrial
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	c_numero_reg VARCHAR(50),
	n_titulo_reg VARCHAR(300) NOT NULL,
	i_ano_obtencion INTEGER,
	b_gaceta BOOL,
	i_pais_obtencion INTEGER,
	b_contrato BOOL,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE diseno_industrial_titular
(
	i_cod_diseno_industrial INTEGER,
	i_cod_investigador INTEGER,
	i_cod_grupo_investigacion INTEGER,
	i_integrante_grupo INTEGER,
	i_grupos_colaboracion INTEGER
) 
;


CREATE TABLE doc_trabajo
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_titulo VARCHAR(300) NOT NULL,
	i_ano INTEGER,
	n_pag_web VARCHAR(300),
	n_doi VARCHAR(300),
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE doc_trabajo_autor
(
	i_cod_doc_trabajo INTEGER,
	i_cod_investigador INTEGER,
	i_cod_grupo_investigacion INTEGER
) 
;


CREATE TABLE doc_trabajo_entidad
(
	i_cod_doc_trabajo INTEGER,
	i_cod_entidad INTEGER
) 
;


CREATE TABLE edicion
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_titulo VARCHAR(300) NOT NULL,
	n_issn_isbn VARCHAR(50),
	i_editor INTEGER,
	f_fecha_editor DATE,
	i_ano INTEGER,
	n_pag_web VARCHAR(300),
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	i_cod_grupo_investigacion INTEGER,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE editorial
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(300) NOT NULL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE emp_base_tec
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(300) NOT NULL,
	i_ano INTEGER,
	b_certificado_camara BOOL,
	n_num_tributario VARCHAR(15),
	b_certificacion_institucional BOOL,
	i_tipo_identificacion INTEGER,
	i_tipo_empresa INTEGER,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE emp_base_tec_autor
(
	i_cod_emp_base_tec INTEGER,
	i_cod_investigador INTEGER,
	i_cod_grupo_investigacion INTEGER,
	i_integrante_grupo INTEGER,
	i_grupos_colaboracion INTEGER
) 
;


CREATE TABLE entidad
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(200) NOT NULL,
	b_institucion BOOL NOT NULL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE espacio_part_proyecto_CTI
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre_espacio VARCHAR(300) NOT NULL,
	i_ano_inicio INTEGER,
	n_nombre_comunidad VARCHAR(300),
	b_constancia_participacion BOOL,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE espacio_part_proyecto_CTI_autor
(
	i_cod_espacio_part_proyecto_CTI INTEGER,
	i_cod_investigador INTEGER,
	b_lider BOOL,
	i_cod_grupo_investigacion INTEGER
) 
;


CREATE TABLE espacio_part_proyecto_CTI_entidad
(
	i_cod_proy_participacion INTEGER,
	i_cod_entidad INTEGER
) 
;


CREATE TABLE esq_circuito
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	c_num_registro VARCHAR(50),
	n_titulo_registro VARCHAR(300) NOT NULL,
	i_ano_obtencion INTEGER,
	i_pais_obtencion INTEGER,
	b_contrato BOOL,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE esq_circuito_titular
(
	i_cod_esq_circuito INTEGER,
	i_cod_investigador INTEGER,
	i_cod_grupo_investigacion INTEGER,
	i_integrante_grupo INTEGER,
	i_grupos_colaboracion INTEGER
) 
;


CREATE TABLE est_comunicacion_conocimiento
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(300) NOT NULL,
	i_ano_inicio INTEGER NOT NULL,
	i_lider INTEGER,
	n_nombre_comunidad VARCHAR(255),
	b_certificacion BOOL,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE est_comunicacion_conocimiento_entidad
(
	k_cod_est_comunicacion INTEGER,
	k_cod_entidad INTEGER
) 
;


CREATE TABLE est_comunicacion_conocimiento_investigador
(
	i_cod_est_comunicacion_conocimiento INTEGER,
	i_cod_investigador INTEGER,
	i_cod_grupo_investigacion INTEGER
) 
;


CREATE TABLE est_fomento_CTI
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(300) NOT NULL,
	i_ano_inicio INTEGER,
	i_investigador_principal INTEGER,
	b_certificado BOOL,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	i_cod_grupo_investigacion INTEGER,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE est_fomento_CTI_entidad
(
	i_cod_est_fomento_ INTEGER,
	i_cod_entidad INTEGER
) 
;


CREATE TABLE evento_cientifico
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(300) NOT NULL,
	i_ano_inicio INTEGER,
	f_fecha_fin DATE,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE evento_cientifico_entidad
(
	i_cod_evento_cientifico INTEGER,
	i_cod_entidad INTEGER
) 
;


CREATE TABLE evento_cientifico_investigador
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	i_cod_evento_cientifico INTEGER,
	i_cod_investigador INTEGER,
	i_tipo_participacion INTEGER NOT NULL,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	i_cod_grupo_investigacion INTEGER,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE financiacion_proyecto
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(50) NOT NULL,
	n_descripcion VARCHAR(100),
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE gen_cont_impreso
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_titulo VARCHAR(200) NOT NULL,
	i_ano_publicacion INTEGER,
	n_medio_circulacion VARCHAR(50),
	n_ambito VARCHAR(50),
	n_lugar_publicacion VARCHAR(255),
	b_certificacion BOOL,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE gen_cont_impreso_autor
(
	i_cod_gen_contenido INTEGER,
	i_cod_investigador INTEGER,
	i_cod_grupo_investigacion INTEGER
) 
;


CREATE TABLE gen_cont_multimedia
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_titulo VARCHAR(200) NOT NULL,
	n_ambito VARCHAR(50),
	n_comunidades VARCHAR(255),
	n_resumen VARCHAR(255),
	i_ano INTEGER,
	n_medio_circulacion VARCHAR(50),
	b_certificacion BOOL,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE gen_cont_multimedia_entidad
(
	i_cod_gen_cont_multimedia INTEGER,
	i_cod_entidad INTEGER
) 
;


CREATE TABLE gen_cont_multimedia_participante
(
	i_cod_gen_cont_multimedia INTEGER,
	i_cod_investigador INTEGER,
	i_cod_grupo_investigacion INTEGER
) 
;


CREATE TABLE gen_cont_virtual
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_titulo VARCHAR(200) NOT NULL,
	n_comunidad VARCHAR(255),
	n_resumen VARCHAR(255),
	i_ano INTEGER,
	n_medio_circulacion VARCHAR(50),
	n_pag_web VARCHAR(300),
	b_certificacion BOOL,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE gen_cont_virtual_autor
(
	i_cod_gen_cont_virtual INTEGER,
	i_cod_investigador INTEGER,
	i_cod_grupo_investigacion INTEGER
) 
;


CREATE TABLE gen_cont_virtual_entidad
(
	i_cod_gen_cont_virtual INTEGER,
	i_cod_entidad INTEGER
) 
;


CREATE TABLE grupo_investigacion
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(200) NOT NULL,
	i_ano_creacion INTEGER,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE informe_final
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_titulo VARCHAR(300) NOT NULL,
	n_nombre_proyecto VARCHAR(255),
	i_ano_elaboracion INTEGER,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE informe_final_autor
(
	i_cod_informe_final INTEGER,
	i_cod_investigador INTEGER,
	i_cod_grupo_investigacion INTEGER
) 
;


CREATE TABLE informe_tec
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_titulo VARCHAR(300) NOT NULL,
	n_titulo_inv VARCHAR(255),
	i_ano INTEGER,
	b_certificacion_entidad BOOL,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE informe_tec_autor
(
	i_cod_informe INTEGER,
	i_cod_investigador INTEGER,
	i_cod_grupo_investigacion INTEGER,
	i_integrante_grupo INTEGER,
	i_grupos_colaboracion INTEGER
) 
;


CREATE TABLE innovacion_ps
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(300) NOT NULL,
	i_ano INTEGER,
	n_nombre_empresa VARCHAR(255),
	n_nit VARCHAR(50),
	b_certificado_imp_peq BOOL,
	b_certificado_imp_med BOOL,
	b_certificado_imp_gran BOOL,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE innovacion_ps_autor
(
	i_cod_innovacion_ps INTEGER,
	i_cod_investigador INTEGER,
	i_cod_grupo_investigacion INTEGER,
	i_integrante_grupo INTEGER,
	i_grupos_colaboracion INTEGER
) 
;


CREATE TABLE integrante_grupo
(
	i_cod_grupo_investigacion INTEGER,
	i_cod_investigador INTEGER,
	b_lider_grupo BOOL,
	f_inicio_vinculacion DATE,
	f_fin_vinculacion DATE
) 
;


CREATE TABLE investigador
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(200) NOT NULL,
	c_categoria VARCHAR(4),
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE libro
(
	k_ISBN VARCHAR(19) NOT NULL,
	n_titulo VARCHAR(300) NOT NULL,
	i_editorial INTEGER NOT NULL,
	i_pais_publicacion INTEGER,
	PRIMARY KEY (k_ISBN)
) 
;


CREATE TABLE libro_autor
(
	i_cod_libro INTEGER,
	i_cod_investigador INTEGER,
	i_cod_grupo_investigacion INTEGER,
	i_integrante_grupo INTEGER,
	i_grupos_colaboracion INTEGER
) 
;


CREATE TABLE libro_investigacion
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	c_ISBN_libro VARCHAR(19) NOT NULL,
	i_ano_publicacion INTEGER,
	b_validacion_inv_an5 BOOL,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	b_certificado_validacion BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE municipio
(
	k_codigo INTEGER NOT NULL,
	n_nombre VARCHAR(50) NOT NULL,
	i_departamento INTEGER NOT NULL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE pais
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(50) NOT NULL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE part_ciud_proyecto_CTI
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_titulo VARCHAR(300) NOT NULL,
	i_ano_inicio INTEGER,
	n_nombre_comunidad VARCHAR(255),
	i_investigador_principal INTEGER,
	n_constancia_participacion BOOL,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	i_cod_grupo_investigacion INTEGER,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE part_proy_CTI_entidad
(
	i_cod_part_proyecto_CTI INTEGER,
	i_cod_entidad INTEGER
) 
;


CREATE TABLE patente
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_numero_patente VARCHAR(50),
	b_certificado_patente BOOL,
	i_ano_obtencion INTEGER,
	n_gaceta VARCHAR(50),
	i_via_obtencion INTEGER,
	b_examen_preliminar BOOL,
	b_examen_fondo BOOL,
	b_modelo_utilidad BOOL,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE patente_contrato
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	c_numero_contrato VARCHAR(20),
	c_NIT_empresa VARCHAR(20),
	n_nombre_empresa VARCHAR(50),
	b_certificado_existencia BOOL,
	i_codigo_patente INTEGER NOT NULL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE patente_grupo_inv
(
	i_cod_patente INTEGER,
	i_cod_grupo_investigacion INTEGER
) 
;


CREATE TABLE patente_pais
(
	i_cod_patente INTEGER,
	i_cod_pais INTEGER
) 
;


CREATE TABLE planta_piloto
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(300) NOT NULL,
	i_ano INTEGER,
	i_institucion_financiadora INTEGER,
	b_copia_contrato BOOL,
	i_pais_elaboracion INTEGER,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE planta_piloto_autor
(
	i_cod_planta_piloto INTEGER,
	i_cod_investigador INTEGER,
	i_cod_grupo_investigacion INTEGER,
	i_integrante_grupo BIGINT,
	i_grupos_colaboracion INTEGER
) 
;


CREATE TABLE programa_ondas
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(150) NOT NULL,
	b_registro_BD BOOL,
	i_institucion INTEGER,
	i_municipio INTEGER,
	i_departamento INTEGER,
	i_ano INTEGER,
	b_resultados BOOL,
	b_reconocido BOOL,
	b_participacion_ferias BOOL,
	i_cod_grupo_investigacion INTEGER,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE prototipo_ind
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(300) NOT NULL,
	i_ano INTEGER,
	i_institucion_financiadora INTEGER,
	i_pais_obtencion INTEGER,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE prototipo_ind_autor
(
	i_cod_prototipo_ind INTEGER,
	i_cod_investigador INTEGER,
	i_cod_grupo_investigacion INTEGER,
	i_integrante_grupo INTEGER,
	i_grupos_colaboracion INTEGER
) 
;


CREATE TABLE proyecto
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_titulo VARCHAR(300) NOT NULL,
	i_institucion INTEGER,
	i_financiacion INTEGER,
	b_acto_admin BOOL,
	i_ano INTEGER,
	n_numero_contrato VARCHAR(50),
	i_tipo_proyecto INTEGER,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE proyecto_ext_CTI
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(300) NOT NULL,
	i_ano_inicio INTEGER,
	i_ano_fin INTEGER,
	n_nombre_comunidad VARCHAR(255),
	n_resumen_ctel VARCHAR(255),
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE proyecto_ext_CTI_entidad
(
	i_cod_proyecto_ext_CTI INTEGER,
	i_cod_entidad INTEGER
) 
;


CREATE TABLE proyecto_ext_CTI_investigador
(
	i_cod_proyecto_ext INTEGER,
	i_cod_investigador INTEGER,
	b_investigador_principal BOOL,
	i_cod_grupo_investigacion INTEGER
) 
;


CREATE TABLE proyecto_investigador
(
	i_cod_proyecto INTEGER,
	i_cod_investigador INTEGER,
	b_investigador_principal BOOL,
	i_cod_grupo_investigacion INTEGER
) 
;


CREATE TABLE reconocimiento_trabajo_grado
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(100) NOT NULL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE red_conocimiento
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(300) NOT NULL,
	c_lugar VARCHAR(100),
	i_ano_inicio INTEGER,
	i_investigador_principal INTEGER,
	n_nombre_comunidad VARCHAR(255),
	n_pag_web VARCHAR(300),
	b_lider_red BOOL,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	i_cod_grupo_investigacion INTEGER,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE red_conocimiento_entidad
(
	i_cod_red_conocimiento INTEGER,
	i_cod_entidad INTEGER
) 
;


CREATE TABLE revista
(
	k_ISSN VARCHAR(15) NOT NULL,
	n_nombre VARCHAR(200) NOT NULL,
	PRIMARY KEY (k_ISSN)
) 
;


CREATE TABLE secreto_emp
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(300) NOT NULL,
	i_ano INTEGER,
	i_valor_contrato INTEGER,
	b_certificacion BOOL,
	n_numero_contrato VARCHAR(50),
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE secreto_emp_autor
(
	i_cod_secreto_emp INTEGER,
	i_cod_investigador INTEGER,
	i_cod_grupo_investigacion INTEGER,
	i_integrante_grupo INTEGER,
	i_grupos_colaboracion INTEGER
) 
;


CREATE TABLE signos_dis
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	c_numero_reg VARCHAR(50),
	n_titulo VARCHAR(300) NOT NULL,
	i_ano INTEGER,
	i_mes INTEGER,
	b_certificado_reg BOOL,
	n_condiciones_uso VARCHAR(300),
	i_pais_obtencion INTEGER,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE signos_dis_titular
(
	i_cod_signos_dis INTEGER,
	i_cod_investigador INTEGER,
	i_cod_grupo_investigacion INTEGER,
	i_integrante_grupo INTEGER,
	i_grupos_colaboracion INTEGER
) 
;


CREATE TABLE software
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_titulo VARCHAR(300) NOT NULL,
	c_num_reg_derechos_autor VARCHAR(50),
	i_ano INTEGER,
	n_descripcion VARCHAR(255),
	c_cod_proy_colciencias VARCHAR(20),
	b_certificacion BOOL,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE software_autor
(
	i_cod_software INTEGER,
	i_cod_investigador INTEGER,
	i_cod_grupo_investigacion INTEGER,
	i_integrante_grupo INTEGER,
	i_grupos_colaboracion BIGINT
) 
;


CREATE TABLE tipo_apoyo
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(100) NOT NULL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE tipo_empresa
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(50) NOT NULL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE tipo_identificacion_empresa
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(50) NOT NULL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE tipo_participacion_evento
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(50) NOT NULL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE tipo_proyecto
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(50) NOT NULL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE tipo_trabajo
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(80) NOT NULL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE trabajo_grado
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_titulo VARCHAR(300) NOT NULL,
	n_autor VARCHAR(255),
	i_institucion INTEGER,
	i_ano INTEGER,
	i_reconocimiento INTEGER,
	i_tipo_trabajo INTEGER,
	c_categoria VARCHAR(10),
	b_clasificado BOOL,
	PRIMARY KEY (k_codigo)
) 
;


CREATE TABLE trabajo_grado_director
(
	i_cod_trabajo_grado INTEGER,
	i_cod_investigador INTEGER,
	b_director BOOL,
	i_cod_grupo_investigacion INTEGER
) 
;


CREATE TABLE via_obtencion
(
	k_codigo INTEGER NOT NULL AUTO_INCREMENT,
	n_nombre VARCHAR(80) NOT NULL,
	PRIMARY KEY (k_codigo)
) 
;



SET FOREIGN_KEY_CHECKS=1;
