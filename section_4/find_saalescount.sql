
CREATE FUNCTION find_salecount
(
    p_sales_in_date IN DATE
) RETURN NUMBER
AS
 num_of_sales NUMBER:=0;
BEGIN
    SELECT 
        COUNT(*) INTO num_of_sales
    FROM 
        sales
    WHERE 
       sales_date = p_sales_in_date;
       
    RETURN num_of_sales;
END;