CREATE OR REPLACE FUNCTION came."F_SESION_COMP" ( Codigos VARCHAR2 ) RETURN VARCHAR2 IS
    Competencias VARCHAR2(500);
BEGIN
declare
Compet VARCHAR2(250);
cursor Lista is
      select regexp_substr(Codigos,'[^,]+', 1, level) as codigo from dual connect by regexp_substr(Codigos, '[^,]+', 1, level) is not null;
begin
for item in Lista loop
Select NOMCOM into Compet from COMPETENCIA where CODCOM like item.codigo;
Competencias := ( Competencias || Compet || ' - ');
end loop;
EXCEPTION
    WHEN OTHERS
        THEN
        dbms_output.put_line(SQLERRM);
end;
Competencias := SUBSTR(Competencias, 1, length(Competencias) - 3 );
return Competencias;
END F_SESION_COMP;
/