CREATE PROCEDURE get_customer
(
    c_id IN NUMBER
)
AS
 cust_firstname customer.first_name%TYPE;
 c_customer_exception EXCEPTION;
BEGIN
IF c_id < 0 THEN
    RAISE c_customer_exception;
END IF;
    
    SELECT 
        first_name INTO cust_firstname
    FROM
        customer
    WHERE
        customer_id = c_id;
        
    dbms_output.put_line(cust_firstname);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('No data Found');
    WHEN TOO_MANY_ROWS THEN
        dbms_output.put_line('No data Found');
    WHEN c_customer_exception THEN
        dbms_output.put_line('ENTER Value greater than 0');

END;