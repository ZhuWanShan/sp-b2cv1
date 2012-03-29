
alter table shop_user ADD(billingSameAsPrimary boolean);

update shop_user set  billingSameAsPrimary = 1 ;