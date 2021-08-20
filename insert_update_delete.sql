SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER superheroes_tr
BEFORE UPDATE OR DELETE OR INSERT ON superheroes
FOR EACH ROW
ENABLE 
DECLARE
v_user varchar2(10);
BEGIN
SELECT user INTO v_user FROM dual;
IF INSERTING THEN
DBMS_OUTPUT.PUT_LINE('A row have been inserted by user'||' '||v_user);
ELSIF UPDATING THEN
DBMS_OUTPUT.PUT_LINE('A row have been updated by user'||' '||v_user);
ELSE 
DBMS_OUTPUT.PUT_LINE('A row have been deleted by user'||' '||v_user);
END IF;
END;
/