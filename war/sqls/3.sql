alter table shop_Category ADD (market_only int);
update shop_Category set market_only = 0;