ALTER table shop_product MODIFY COLUMN manualKey VARCHAR(255);

update shop_product SET manualKey = NULL;