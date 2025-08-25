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

SET SERVEROUTPUT ON;

DECLARE
-- Variável
v_rm ALUNO.rm%type := 1;
v_nome ALUNO.nome%type;
v_qtd_alunos number(10);

BEGIN
SELECT COUNT(*)INTO v_qtd_alunos FROM ALUNO;
    LOOP
        SELECT NOME INTO v_nome FROM ALUNO WHERE RM = v_rm;
         DBMS_OUTPUT.PUT_LINE(v_rm || '° Aluno: ' || v_nome);
         v_rm := v_rm + 1;
         EXIT WHEN v_rm > v_qtd_alunos;
    END LOOP;
        
EXCEPTION WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Ocorreu um erro:'||SQLERRM);

END;
/

