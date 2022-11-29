select PSP.*, c.cat_name from category c 
inner join
(
select PSP.pro_id, PSP.pro_name, PSP.cat_id, PSP.MinProductPrice from product p inner join
(
select pro_id, min(supp_price) as MinProductPrice from supplier_pricing group by pro_id
) as SP
where SP.pro_id = p.pro_id
)
as PSP
where PSP.CAT_ID = c.cat_id;