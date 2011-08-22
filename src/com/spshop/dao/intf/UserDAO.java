package com.spshop.dao.intf;

import com.spshop.model.User;

public interface UserDAO extends BaseDAO<User, Long>{

	int queryUserCountByName(String email);

	int queryUserByEmailAndPassword(User user);

	User queryUserByName(String email);
	
}
