package com.shouhou.controller;

import com.shouhou.pojo.TbUser;
import com.shouhou.service.UserService;
import com.shouhou.util.ResponseInfoUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 用户注册登录业务的控制器
 *
 * @author Alexs
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/register")
    @ResponseBody
    public ResponseInfoUtil registerUser(TbUser user) {
        ResponseInfoUtil responseInfo = new ResponseInfoUtil();
        if (StringUtils.isBlank(user.getUsername()) || StringUtils.isBlank(user.getPwd())) {
            responseInfo.setMessage("用户名或密码输入不正确，请重新输入！");
            responseInfo.setCode(0);
            return responseInfo;
        }
        Boolean registerResult = userService.registerUser(user);
        if (registerResult) {
            responseInfo.setMessage("注册成功！");
            responseInfo.setCode(1);
        } else {
            responseInfo.setMessage("账号已注册，请更换其他账号！");
            responseInfo.setCode(0);
        }
        return responseInfo;
    }

	@RequestMapping("/login")
    @ResponseBody
	public ResponseInfoUtil loginUser(TbUser user) {
		ResponseInfoUtil responseInfo = new ResponseInfoUtil();
		TbUser user2 = userService.loginUser(user);
		if(null!=user2) {
			responseInfo.setMessage("登陆成功！");
			responseInfo.setCode(1);
		}else {
			responseInfo.setMessage("账号或密码错误，请重新尝试！");
			responseInfo.setCode(0);
		}
		return responseInfo;
	}
}
