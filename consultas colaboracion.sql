use ic2;

select sum(integrantes) integrantes_grupo,sum(grupos) grupos_colaboracion from(

select a.k_codigo,a.c_categoria,sum(au.i_integrante_grupo) integrantes,sum(au.i_grupos_colaboracion) grupos from articulo a, 
articulo_autor au 
where a.k_codigo=au.i_cod_articulo
and au.i_cod_grupo_investigacion=1
and a.c_categoria not like "ART_D"
and i_ano between 2012 and 2016
and a.c_categoria is not null
and a.k_codigo not in (SELECT t1.k_codigo FROM articulo t1
		INNER JOIN articulo t2 
		WHERE t1.k_codigo > t2.k_codigo AND t1.n_titulo = t2.n_titulo)
group by a.k_codigo

UNION ALL

select a.k_codigo,a.c_categoria,sum(au.i_integrante_grupo) integrantes,sum(au.i_grupos_colaboracion) grupos from articulo a, 
articulo_autor au 
where a.k_codigo=au.i_cod_articulo
and au.i_cod_grupo_investigacion=1
and a.c_categoria like "ART_D"
and i_ano between 2012 and 2016
and a.k_codigo not in (SELECT t1.k_codigo FROM articulo t1
		INNER JOIN articulo t2 
		WHERE t1.k_codigo > t2.k_codigo AND t1.n_titulo = t2.n_titulo)
group by a.k_codigo


UNION ALL

select cli.k_codigo,cli.c_categoria,sum(cla.i_integrante_grupo) integrantes,sum(cla.i_grupos_colaboracion) grupos from cap_libro_investigacion cli, 
cap_libro_autor cla 
where cli.k_codigo=cla.i_cod_cap_libro
and cla.i_cod_grupo_investigacion=1
and cli.i_ano_publicacion between 2012 and 2016
and cli.k_codigo not in (SELECT t1.k_codigo FROM cap_libro_investigacion t1
		INNER JOIN cap_libro_investigacion t2 
		WHERE t1.k_codigo > t2.k_codigo AND t1.n_titulo_cap = t2.n_titulo_cap)
group by cli.k_codigo

UNION ALL


select c.k_codigo,c.c_categoria,sum(ca.i_integrante_grupo) integrantes,sum(ca.i_grupos_colaboracion) grupos from consultoria c, 
consultoria_autor ca 
where c.k_codigo=ca.i_cod_consultoria
and ca.i_cod_grupo_investigacion=1
and c.i_ano between 2012 and 2016
and c.k_codigo not in (SELECT t1.k_codigo FROM consultoria t1
		INNER JOIN consultoria t2 
		WHERE t1.k_codigo > t2.k_codigo AND t1.n_titulo = t2.n_titulo)
group by c.k_codigo

UNION ALL

select di.k_codigo,di.c_categoria,sum(dit.i_integrante_grupo) integrantes,sum(dit.i_grupos_colaboracion) grupos from diseno_industrial di, 
diseno_industrial_titular dit 
where di.k_codigo=dit.i_cod_diseno_industrial
and dit.i_cod_grupo_investigacion=1
and di.i_ano_obtencion between 2012 and 2016
and di.k_codigo not in (SELECT t1.k_codigo FROM diseno_industrial t1
		INNER JOIN diseno_industrial t2 
		WHERE t1.k_codigo > t2.k_codigo AND t1.n_titulo_reg = t2.n_titulo_reg)
group by di.k_codigo

UNION ALL


select ebt.k_codigo,ebt.c_categoria,sum(ebta.i_integrante_grupo) integrantes,sum(ebta.i_grupos_colaboracion) grupos from emp_base_tec ebt, 
emp_base_tec_autor ebta 
where ebt.k_codigo=ebta.i_cod_emp_base_tec
and ebt.c_categoria is not null
and ebta.i_cod_grupo_investigacion=1
and i_ano between 2012 and 2016
and ebt.k_codigo not in (SELECT t1.k_codigo FROM emp_base_tec t1
		INNER JOIN emp_base_tec t2 
		WHERE t1.k_codigo > t2.k_codigo AND t1.n_nombre = t2.n_nombre)
group by ebt.k_codigo

UNION ALL


select ec.k_codigo,ec.c_categoria,sum(ect.i_integrante_grupo) integrantes,sum(ect.i_grupos_colaboracion) grupos from esq_circuito ec, 
esq_circuito_titular ect 
where ec.k_codigo=ect.i_cod_esq_circuito
and ect.i_cod_grupo_investigacion=1
and ec.i_ano_obtencion between 2012 and 2016
and ec.k_codigo not in (SELECT t1.k_codigo FROM esq_circuito t1
		INNER JOIN esq_circuito t2 
		WHERE t1.k_codigo > t2.k_codigo AND t1.n_titulo_registro = t2.n_titulo_registro)
group by ec.k_codigo


UNION ALL

select it.k_codigo,it.c_categoria,sum(ita.i_integrante_grupo) integrantes,sum(ita.i_grupos_colaboracion) grupos from informe_tec it, 
informe_tec_autor ita
where it.k_codigo=ita.i_cod_informe
and ita.i_cod_grupo_investigacion=1
and it.i_ano between 2012 and 2016
and it.k_codigo not in (SELECT t1.k_codigo FROM informe_tec t1
		INNER JOIN informe_tec t2 
		WHERE t1.k_codigo > t2.k_codigo AND t1.n_titulo = t2.n_titulo)
group by it.k_codigo

UNION ALL

select ip.k_codigo,ip.c_categoria,sum(ipa.i_integrante_grupo) integrantes,sum(ipa.i_grupos_colaboracion) grupos from innovacion_ps ip, 
innovacion_ps_autor ipa
where ip.k_codigo=ipa.i_cod_innovacion_ps
and ipa.i_cod_grupo_investigacion=1
and ip.i_ano between 2012 and 2016
and ip.k_codigo not in (SELECT t1.k_codigo FROM innovacion_ps t1
		INNER JOIN innovacion_ps t2 
		WHERE t1.k_codigo > t2.k_codigo AND t1.n_nombre = t2.n_nombre)
group by ip.k_codigo

UNION ALL

select li.k_codigo,li.c_categoria,sum(la.i_integrante_grupo) integrantes,sum(la.i_grupos_colaboracion) grupos from libro_investigacion li, 
libro_autor la 
where li.k_codigo=la.i_cod_libro
and la.i_cod_grupo_investigacion=1
and li.i_ano_publicacion between 2012 and 2016
#and li.k_codigo not in (SELECT t1.k_codigo FROM libro_investigacion t1
#		INNER JOIN libro_investigacion t2 
#		WHERE t1.k_codigo > t2.k_codigo AND t1.n_titulo = t2.n_titulo)
group by li.k_codigo

UNION ALL

select pp.k_codigo,pp.c_categoria,sum(ppa.i_integrante_grupo) integrantes,sum(ppa.i_grupos_colaboracion) grupos from planta_piloto pp, 
planta_piloto_autor ppa
where pp.k_codigo=ppa.i_cod_planta_piloto
and ppa.i_cod_grupo_investigacion=1
and pp.i_ano between 2012 and 2016
and pp.k_codigo not in (SELECT t1.k_codigo FROM planta_piloto t1
		INNER JOIN planta_piloto t2 
		WHERE t1.k_codigo > t2.k_codigo AND t1.n_nombre = t2.n_nombre)
group by pp.k_codigo

UNION ALL

select pi.k_codigo,pi.c_categoria,sum(pia.i_integrante_grupo) integrantes,sum(pia.i_grupos_colaboracion) grupos from prototipo_ind pi, 
prototipo_ind_autor pia
where pi.k_codigo=pia.i_cod_prototipo_ind
and pia.i_cod_grupo_investigacion=1
and pi.i_ano between 2012 and 2016
and pi.k_codigo not in (SELECT t1.k_codigo FROM prototipo_ind t1
		INNER JOIN prototipo_ind t2 
		WHERE t1.k_codigo > t2.k_codigo AND t1.n_nombre = t2.n_nombre)
group by pi.k_codigo

UNION ALL

select se.k_codigo,se.c_categoria,sum(sea.i_integrante_grupo) integrantes,sum(sea.i_grupos_colaboracion) grupos from secreto_emp se, 
secreto_emp_autor sea
where se.k_codigo=sea.i_cod_secreto_emp
and sea.i_cod_grupo_investigacion=1
and se.i_ano between 2012 and 2016
and se.k_codigo not in (SELECT t1.k_codigo FROM secreto_emp t1
		INNER JOIN secreto_emp t2 
		WHERE t1.k_codigo > t2.k_codigo AND t1.n_nombre = t2.n_nombre)
group by se.k_codigo

UNION ALL

select sd.k_codigo,sd.c_categoria,sum(sdt.i_integrante_grupo) integrantes,sum(sdt.i_grupos_colaboracion) grupos from signos_dis sd, 
signos_dis_titular sdt
where sd.k_codigo=sdt.i_cod_signos_dis
and sdt.i_cod_grupo_investigacion=1
and sd.i_ano between 2012 and 2016
and sd.k_codigo not in (SELECT t1.k_codigo FROM signos_dis t1
		INNER JOIN signos_dis t2 
		WHERE t1.k_codigo > t2.k_codigo AND t1.n_titulo = t2.n_titulo)
group by sd.k_codigo

UNION ALL

select sf.k_codigo,sf.c_categoria,sum(sfa.i_integrante_grupo) integrantes,sum(sfa.i_grupos_colaboracion) grupos from software sf, 
software_autor sfa
where sf.k_codigo=sfa.i_cod_software
and sfa.i_cod_grupo_investigacion=1
and sf.i_ano between 2012 and 2016
and sf.k_codigo not in (SELECT t1.k_codigo FROM software t1
		INNER JOIN software t2 
		WHERE t1.k_codigo > t2.k_codigo AND t1.n_titulo = t2.n_titulo)
group by sf.k_codigo

) as clasificaciones_grupo
where c_categoria is not null;



select i.k_codigo, i.n_nombre,i.c_categoria, ig.b_lider_grupo,ig.f_inicio_vinculacion,ig.f_fin_vinculacion
from investigador i,integrante_grupo ig
where i.k_codigo=ig.i_cod_investigador
and ig.i_cod_grupo_investigacion=1;
