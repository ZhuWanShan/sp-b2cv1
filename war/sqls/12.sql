alter table shop_order add column customerMsg varchar(800);
alter table shop_country add column adDePrice float;
update shop_country set adDePrice = 0;
