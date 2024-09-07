DECLARE
    total_amount NUMBER:= 100;
    total_amount_pay NUMBER default 0;
    
BEGIN

    IF total_amount > 200
    THEN
        total_amount_pay:= total_amount * 0.2;
    ELSIF total_amount >= 100 and total_amount <= 200
    THEN 
        total_amount_pay:= total_amount * 0.1;
    ELSE
        total_amount_pay:= total_amount * 0.05;
    END IF;
    
    dbms_output.put_line('The total amount to pay after discount ' || total_amount_pay);
    
END;