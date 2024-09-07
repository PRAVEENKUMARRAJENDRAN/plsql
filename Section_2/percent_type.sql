DECLARE
cust_id customer.customer_id%TYPE:= 10;
cust_firstname customer.first_name%TYPE;
cust_city customer.city%TYPE;

BEGIN
    SELECT  
        first_name, last_name INTO cust_firstname, cust_city
    FROM 
        customer
    WHERE
        customer_id = cust_id;
        
    dbms_output.put_line(cust_firstname || 'is from the ' || cust_city || ' city');

END;

