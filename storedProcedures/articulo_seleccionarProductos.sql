CREATE PROCEDURE `articulo_seleccionarProductos` (IN codigoGrupo integer,IN anoInicio integer,IN anoFin integer)
BEGIN
	
    select a.k_codigo,a.c_categoria,sum(au.i_integrante_grupo) cohesion,sum(au.i_grupos_colaboracion) colaboracion from articulo a, 
	articulo_autor au 
	where a.k_codigo=au.i_cod_articulo
	and au.i_cod_grupo_investigacion=codigoGrupo
	and a.c_categoria not like "ART_D"
	and i_ano between anoInicio and anoFin
	and a.c_categoria is not null
	group by a.k_codigo

	UNION ALL

	select a.k_codigo,a.c_categoria,sum(au.i_integrante_grupo) cohesion,sum(au.i_grupos_colaboracion) colaboracion from articulo a, 
	articulo_autor au 
	where a.k_codigo=au.i_cod_articulo
	and au.i_cod_grupo_investigacion=codigoGrupo
	and a.c_categoria like "ART_D"
	and i_ano between anoInicio and anoFin
	group by a.k_codigo;
    
END
