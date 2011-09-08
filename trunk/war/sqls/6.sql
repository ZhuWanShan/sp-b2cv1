alter table SHOP_Category add(deleted int);
update SHOP_Category set deleted = 0;