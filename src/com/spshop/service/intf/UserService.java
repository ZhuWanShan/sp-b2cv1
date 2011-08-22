package com.spshop.service.intf;

import com.spshop.dao.intf.UserDAO;
import com.spshop.model.User;

public interface UserService extends BaseService<User, UserDAO, Long>{

	Boolean validateUserByEmail(String email);

	Boolean validateUser(User user);

	User queryUserByEmail(String email);

}
