DECLARE

goat VARCHAR2(20):= '';

BEGIN
    CASE
    WHEN goat = 'THALAPATHY'
    THEN
        dbms_output.put_line('The Real GOAT is ' || goat);
    WHEN goat = 'do no'
    THEN
        dbms_output.put_line('The Real GOAT is ' || goat);
    ELSE
        dbms_output.put_line('The Real GOAT is ' || goat);
    END CASE;
END;