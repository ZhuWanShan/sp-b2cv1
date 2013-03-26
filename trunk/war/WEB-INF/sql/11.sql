alter table shop_product add column(deleted bit(1)); 
update shop_product set deleted = 0;