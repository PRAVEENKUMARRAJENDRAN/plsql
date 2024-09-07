DECLARE
    cid NUMBER:= 10;
    customer_firstname VARCHAR2(20);
    Customer_city VARCHAR2(20);
    
BEGIN
    SELECT 
        first_name, city INTO customer_firstname, Customer_city
    FROM
        customer
    WHERE
        customer_id = cid;
        
    dbms_output.put_line(customer_firstname || ' ' || Customer_city);

END;
    