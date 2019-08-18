CREATE OR REPLACE PROCEDURE came."SP_INSERT_PROM_FASESV2" (
    CodDetalleProg IN NUMBER
)
AS
BEGIN
declare
Validacion NUMBER; --Variable de Validacion (0,1)
cursor Lista is
      Select CODASIG,CODDETPROG from Asignacion where CODDETPROG = CodDetalleProg;
begin
    for item in Lista loop
        --dbms_output.put_line(item.CODASIG || ' - ' || item.CODDETPROG);
        declare cursor ListaPersons is
            --SELECT CODASIG,CODFASE,PROM_FAS FROM VW_PROMEDIO_FASES WHERE CODDETPROG = item.CODDETPROG and CODASIG = item.CODASIG;
              SELECT  
         prog_det.GENDETPROG, programa.codprog, fase.codfase,ASIGNACION.CODASIG,    
         ROUND((F_PROM_CASOS(ASIGNACION.CODASIG,FASE.CODFASE) + F_PROM_PARTICIPACIONES(ASIGNACION.CODASIG,FASE.CODFASE) +
         F_PROM_PARCIALES(ASIGNACION.CODASIG,FASE.CODFASE) + F_PROM_FINALES(ASIGNACION.CODASIG,FASE.CODFASE)+
         F_PROM_TRABAJOS(ASIGNACION.CODASIG,FASE.CODFASE))/ (F_PESO_CASOS_F(FASE.CODFASE) + F_PESO_TRABAJOS_F(FASE.CODFASE) + 
         F_PESO_FINALES_F(FASE.CODFASE) + F_PESO_PARCIALES_F(FASE.CODFASE) + F_PESO_PARTICIPACIONES_F(FASE.CODFASE)),2) AS PROM_FAS
        FROM prog_det
        INNER JOIN programa ON prog_det.codprog = programa.codprog
        INNER JOIN fase ON prog_det.coddetprog = fase.coddetprog
        INNER JOIN asignacion ON fase.coddetprog = asignacion.coddetprog 
                WHERE PROG_DET.CODDETPROG = item.CODDETPROG and ASIGNACION.CODASIG = item.CODASIG;
            begin
                for itemPerson in ListaPersons loop
                    --Validacion si existe o no el Registro
                    begin
                        -- Si hay registros asi que Negaativo(0)
                        SELECT (CASE WHEN CODASIG IS NULL THEN 1 ELSE 0 END) INTO Validacion FROM FASE_DET WHERE CODASIG = itemPerson.CODASIG AND CODFASE = itemPerson.CODFASE;
                        exception
                            when others then
                                Validacion:=1; -- No hay registros asi que Positivos(1)
                    end;
                    --Ingreso o Actualiza segun el caso
                    IF Validacion = 1 THEN
                        INSERT INTO FASE_DET (PROMFAS,CODFASE,CODASIG) VALUES(itemPerson.PROM_FAS,itemPerson.CODFASE,itemPerson.CODASIG);
                        --dbms_output.put_line('INSERT -> ' || itemPerson.PROM_FAS || ' - ' || itemPerson.CODFASE || ' - ' || itemPerson.CODASIG);
                    ELSE
                        UPDATE FASE_DET SET PROMFAS = itemPerson.PROM_FAS WHERE CODASIG = itemPerson.CODASIG AND CODFASE = itemPerson.CODFASE;
                        --dbms_output.put_line('UPDATE -> ' || itemPerson.PROM_FAS || ' - ' || itemPerson.CODASIG || ' - ' || itemPerson.CODFASE);
                    END IF;
                end loop;
            end;
    end loop;
EXCEPTION
    WHEN OTHERS
        THEN
        dbms_output.put_line(SQLERRM);
end;
END SP_INSERT_PROM_FASESv2;
/