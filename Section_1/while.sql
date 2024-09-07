DECLARE
    CNTR NUMBER:= 10;

BEGIN
    WHILE CNTR < 20
    LOOP
        dbms_output.put_line('THe counter value now ' || CNTR);
        CNTR := CNTR + 1;
    END LOOP;
END;
