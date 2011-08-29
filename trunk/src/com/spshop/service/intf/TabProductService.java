package com.spshop.service.intf;

import com.spshop.dao.intf.TabProductDAO;
import com.spshop.model.TabProduct;

public interface TabProductService extends BaseService<TabProduct, TabProductDAO, Long>{
	TabProduct getTopSelling();
	TabProduct saveTopSelling(TabProduct product);
}
