CREATE OR REPLACE FORCE VIEW came.vw_promedio_de_fases (persona,gendetprog,codprog,codfase,nomfase,codasig,coddetprog,prom_caso,prom_participacion,prom_trabajo,prom_parcial,prom_final,promedio_fases_f) AS
SELECT  
        PERSONA.NOMPER || PERSONA.APEPER AS PERSONA, prog_det.GENDETPROG, programa.codprog, fase.codfase, fase.nomfase,asignacion.CODASIG, PROG_DET.CODDETPROG,
        
        (CASE WHEN F_PESO_CASOS_F(FASE.CODFASE) LIKE '0' THEN '-'
        ELSE TO_CHAR(ROUND(F_PROM_CASOS_F(ASIGNACION.CODASIG,FASE.CODFASE),2)) END)  AS PROM_CASO,
        
        (CASE WHEN F_PESO_PARTICIPACIONES_F(FASE.CODFASE) LIKE '0' THEN '-'
        ELSE  TO_CHAR(ROUND(F_PROM_PARTICIPACIONES_F(ASIGNACION.CODASIG,FASE.CODFASE),2))END) AS PROM_PARTICIPACION,
        
        (CASE WHEN F_PESO_TRABAJOS_F(FASE.CODFASE) LIKE '0' THEN '-'
        ELSE TO_CHAR(ROUND(F_PROM_TRABAJOS_F(ASIGNACION.CODASIG,FASE.CODFASE),2))END) AS PROM_TRABAJO,
        
        (CASE WHEN F_PESO_PARCIALES_F(FASE.CODFASE) LIKE '0' THEN '-'
        ELSE TO_CHAR(ROUND(F_PROM_PARCIALES_F(ASIGNACION.CODASIG,FASE.CODFASE),2))END)AS PROM_PARCIAL,
        
        (CASE WHEN F_PESO_FINALES_F(FASE.CODFASE) LIKE '0' THEN '-' 
        ELSE TO_CHAR(ROUND(F_PROM_FINALES_F(ASIGNACION.CODASIG,FASE.CODFASE),2)) END) AS PROM_FINAL,
        
        ROUND((F_PROM_CASOS(ASIGNACION.CODASIG,FASE.CODFASE) + F_PROM_PARTICIPACIONES(ASIGNACION.CODASIG,FASE.CODFASE) +
         F_PROM_PARCIALES(ASIGNACION.CODASIG,FASE.CODFASE) + F_PROM_FINALES(ASIGNACION.CODASIG,FASE.CODFASE)+
         F_PROM_TRABAJOS(ASIGNACION.CODASIG,FASE.CODFASE))/ (F_PESO_CASOS_F(FASE.CODFASE) + F_PESO_TRABAJOS_F(FASE.CODFASE) + 
         F_PESO_FINALES_F(FASE.CODFASE) + F_PESO_PARCIALES_F(FASE.CODFASE) + F_PESO_PARTICIPACIONES_F(FASE.CODFASE)),2) AS PROMEDIO_FASES_F

    FROM prog_det
    INNER JOIN programa ON prog_det.codprog = programa.codprog
    INNER JOIN fase ON prog_det.coddetprog = fase.coddetprog
    INNER JOIN asignacion ON fase.coddetprog = asignacion.coddetprog
    INNER JOIN persona ON persona.codper = asignacion.codper;