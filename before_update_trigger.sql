SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER bu_superheroes
BEFORE UPDATE ON superheroes
FOR EACH ROW
ENABLE
DECLARE 
v_user varchar2(10);
BEGIN
SELECT user INTO v_user FROM dual;
DBMS_OUTPUT.PUT_LINE('A row have been updated by the user'||' '||v_user);
END;
/