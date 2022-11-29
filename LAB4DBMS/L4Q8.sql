select cus_name, cus_gender from customer where customer.cus_name like 'A%A';

select cus_name, cus_gender from customer where (customer.cus_name like 'A%' OR 
customer.cus_name like '%A');