CREATE PROCEDURE ADD_CUSTOMER
(
    c_id IN NUMBER,
    c_fname IN VARCHAR2,
    c_lname IN VARCHAR2,
    c_mname IN VARCHAR2,
    c_add1 IN VARCHAR2,
    c_add2 IN VARCHAR2,
    c_city IN VARCHAR2,
    c_country IN VARCHAR2,
    c_date IN DATE,
    c_region IN VARCHAR2
)
AS 
BEGIN
    INSERT INTO CUSTOMER (
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    MIDDLE_NAME,
    ADDRESS_LINE1,
    ADDRESS_LINE2,
    CITY,
    COUNTRY,
    DATE_ADDED,
    REGION
    ) VALUES (
        c_id,
        c_fname,
        c_lname,
        c_mname,
        c_add1,
        c_add2,
        c_city,
        c_country,
        c_date,
        c_region
    );
    
    COMMIT;
    
    dbms_output.put_line('The Customer is added');
    

END;


