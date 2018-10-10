package com.shouhou.service;

import com.shouhou.pojo.TbUser;

/**
 * 用户的登录注册接口
 * @author Alexs
 *
 */
public interface UserService {
	/**
	 * 用户注册
	 * @param user
	 * @return
	 */
	Boolean registerUser(TbUser user);
	/**
	 * 用户登陆
	 * @param user
	 * @return
	 */
	TbUser loginUser(TbUser user);
}
