SET SERVEROUTPUT ON;

DECLARE
--Variável
v_contador NUMBER(10) := 1;
v_fim NUMBER(10) := &qtd;

BEGIN
LOOP
    DBMS_OUTPUT.PUT_LINE(v_contador);
    v_contador := v_contador + 1;
    EXIT WHEN v_contador > v_fim;
END LOOP;

EXCEPTION WHEN OTHERS THEN 
    DBMS_OUTPUT.PUT_LINE('Ocorreu um erro:'||SQLERRM);

END;
/