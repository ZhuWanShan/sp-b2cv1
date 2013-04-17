alter table SHOP_ProductOptionItem add column(priceChange float);
update SHOP_ProductOptionItem set priceChange = 0;
alter table SHOP_UserOption add column(priceChange float);
update SHOP_UserOption set priceChange = 0;

update SHOP_ProductOptionItem set priceChange = 10.99 where value='Customized';

