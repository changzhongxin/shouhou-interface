package com.shouhou.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import com.shouhou.enums.BooleanEnum;
import com.shouhou.mapper.TbUserMapper;
import com.shouhou.pojo.TbUser;
import com.shouhou.pojo.TbUserExample;
import com.shouhou.pojo.TbUserExample.Criteria;
import com.shouhou.service.UserService;
/**
 * 用户的登陆注册功能实现业务
 * @author Alexs
 *
 */
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private TbUserMapper userMapper;
	@Override
	public Boolean registerUser(TbUser user) {
		TbUser user2 = this.getUser(user);
		if(null==user2) {
			user.setCreatetime(new Date());
			user.setIslogout(BooleanEnum.F.getName());
			byte[] bytes = user.getPwd().getBytes();
			//md5加密
			String md5Pwd = DigestUtils.md5DigestAsHex(bytes);
			user.setPwd(md5Pwd);
			int result = userMapper.insert(user);
			if(result>0) {
				return true;
			}
		}
		//销毁对象
		user2=null;
		return false;
	}

	@Override
	public TbUser loginUser(TbUser user) {
		TbUser user2 = this.getUser(user);
		if(user2!=null){
			//进行密码比对
			String requestPwd = DigestUtils.md5DigestAsHex(user.getPwd().getBytes());
			if(!requestPwd.equals(user2.getPwd())) {
				return null;
			}
			//比较成功，保存对象信息，清除密码信息
			user2.setPwd(null);
		}
		return user2;
	}
	/**
	 * 用户登录和注册时都要先查询是否存在该用户
	 * @param user
	 * @return
	 */
	private TbUser getUser(TbUser user) {
		//创建查询条件
		TbUserExample userExample = new TbUserExample();
		Criteria criteria = userExample.createCriteria();
		criteria.andUsernameEqualTo(user.getUsername());
		//执行查询
		List<TbUser> userList = userMapper.selectByExample(userExample);
		if(null==userList||userList.size()==0) {
			return null;
		}
		return userList.get(0);
	}
}
