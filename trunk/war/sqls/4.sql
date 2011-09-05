alter table shop_Product ADD (showComments int);
alter table shop_Product ADD (showlikeButton int);
alter table shop_Product ADD (tabProductKey long);
alter table shop_Product ADD (price double);
alter table shop_Product ADD (actualPrice double);
alter table shop_Product ADD (manualKey long);
update shop_Product set showComments = 0;
update shop_Product set showlikeButton = 0;

update shop_Product set tabProductKey = 0;
update shop_Product set price = 0;
update shop_Product set actualPrice = 0;
update shop_Product set manualKey = 0;