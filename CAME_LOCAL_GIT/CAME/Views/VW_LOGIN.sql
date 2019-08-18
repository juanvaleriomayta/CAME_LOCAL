CREATE OR REPLACE FORCE VIEW came.vw_login (codper,dniper,nomper,apeper,tipoper,codasig,coddetprog,userper,passper,inasistencias,tardanza,promedio,colorheader,colorimagen) AS
SELECT
    persona.CODPER,
    persona.DNIPER,
    persona.nomper,
    persona.apeper,
    persona.tipoper,
    asignacion.codasig,
    asignacion.coddetprog,
    persona.userper,
    persona.passper,
    f_reporte_inasistencia(asignacion.codasig,asignacion.coddetprog) as Inasistencias,
    f_reporte_tardanza(asignacion.codasig,asignacion.coddetprog) as Tardanza,
    F_PROMFINAL_PROGRAMA(asignacion.codasig,asignacion.coddetprog) as Promedio,
    CASE WHEN persona.tipoper = 'CO' THEN '1e9680' 
    WHEN persona.tipoper = 'PR' THEN '1e9680' 
    WHEN persona.tipoper = 'DP' THEN '1e9680' 
    WHEN persona.tipoper = 'MO' THEN '1e9680' 
    ELSE 'd90000'
    END AS colorheader,
    CASE WHEN persona.tipoper = 'CO' THEN '1e9680' 
    WHEN persona.tipoper = 'PR' THEN 'rgba(30, 150, 128, .5)' 
    WHEN persona.tipoper = 'DP' THEN 'rgba(30, 150, 128, .5)' 
    WHEN persona.tipoper = 'MO' THEN 'rgba(30, 150, 128, .5)' 
    ELSE 'rgba(216,67,21,.5)'
    END AS colorimagen
FROM
    persona
    LEFT JOIN asignacion ON persona.codper = asignacion.codper
WHERE
        estper LIKE 'A';