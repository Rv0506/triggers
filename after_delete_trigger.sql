SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER ad_superheroes
AFTER DELETE ON superheroes
FOR EACH ROW
ENABLE 
DECLARE 
v_user varchar2(10);
BEGIN
SELECT user INTO v_user FROM dual;
DBMS_OUTPUT.PUT_LINE('The row has been deleted by the user'||' '||v_user);
END;
/