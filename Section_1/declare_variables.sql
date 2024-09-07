DECLARE

ordernumber number:=1;
oderid number default 1002;
customername varchar2(20):= 'john';
inital constant VARCHAR2(20):= 'Rajendran';
fullname varchar(40);


BEGIN
    
    
    dbms_output.put_line(ordernumber);
    dbms_output.put_line(oderid);
    dbms_output.put_line(customername);
    
    customername := 'praveen';
    
    /* 
    How to prin the number with the string and how to concantenate two strings
    */
    
    dbms_output.put_line('The order number is ' || ordernumber);
    
    fullname := customername || ' ' || inital;
    dbms_output.put_line('My fullname is ' || fullname);
    
    
END;