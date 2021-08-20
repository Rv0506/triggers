set serveroutput on;
create or replace trigger bi_superheroes
before insert on superheroes
for each row
ENABLE
DECLARE 
v_user varchar2(10);
BEGIN
SELECT user into v_user FROM dual;
DBMS_OUTPUT.PUT_LINE('A row has been inserted by'||' '||v_user);
END;
/
