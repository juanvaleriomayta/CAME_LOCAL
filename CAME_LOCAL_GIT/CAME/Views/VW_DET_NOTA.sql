CREATE OR REPLACE FORCE VIEW came.vw_det_nota (codfase,codasig,coddetprog,peso_caso,prom_caso,peso_part,prom_part,peso_trab,prom_trab,peso_parc,prom_parc,peso_fina,prom_fina) AS
SELECT
    fase.codfase,
    asignacion.CODASIG,
    asignacion.CODDETPROG,
    f_peso_casos_f(fase.codfase) as peso_caso,
    ROUND(f_prom_casos_f(asignacion.CODASIG,fase.CODFASE),2) as prom_caso,
    f_peso_participaciones_f(fase.codfase) as peso_part,
    ROUND(F_PROM_PARTICIPACIONES_F(asignacion.CODASIG,fase.CODFASE),2) as prom_part,
    f_peso_trabajos_f(fase.codfase) as peso_trab,
    ROUND(F_PROM_TRABAJOS_F(asignacion.CODASIG,fase.CODFASE),2) as prom_trab ,
    f_peso_parciales_f(fase.codfase) as peso_parc,
    ROUND(F_PROM_PARCIALES_F(asignacion.CODASIG,fase.CODFASE),2) as prom_parc,
    f_peso_finales_f(fase.codfase) as peso_fina,
    ROUND(F_PROM_FINALES_F(asignacion.CODASIG,fase.CODFASE),2) as prom_fina
FROM  
    fase
    INNER JOIN asignacion ON fase.coddetprog = asignacion.coddetprog;