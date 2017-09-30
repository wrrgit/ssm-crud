package com.copasso.crud.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.copasso.crud.bean.Msg;
import com.copasso.crud.bean.User;
import com.copasso.crud.service.UserService;

/**
 * 处理用户登陆注册
 * @author zhouas666
 *
 */
@Controller
@RequestMapping(value="/user")
public class UserController {

	@Autowired
	UserService userService;

	@RequestMapping(value="")
	public String login(){
		return "user/login";
	}
	
	/**
	 * 用户登陆验证
	 * @param username
	 * @param password
	 * @return
	 */
	@RequestMapping(value="/login")
	@ResponseBody
	public Msg login(@Param("username") String username,@Param("password") String password){

		//		System.out.println(username+":"+password);

		User user=userService.userLogin(new User(username,password));

		if(user==null){
			return Msg.fail();
		}

		return Msg.success().add("user", user);
	}

	@RequestMapping(value = "/loginValidate",method = RequestMethod.POST)
	public String loginValidate(@RequestParam("username") String username,@RequestParam("password") String password,HttpSession httpSession) {

		if(username==null || password==null)
			return "user/login";
		else {
			User user = userService.getUserByName(username);

			if(user!=null&&user.getPassword().equals(password)) {
				httpSession.setAttribute("username", username);
				return "redirect:/list";
			} else  {
				return "user/login";
			}
		}
	}
	
	
	/**
	 * 用户登出
	 * @param httpSession
	 * @return
	 */
	@RequestMapping(value = "/logout")
	public String logout(HttpSession httpSession) {
		httpSession.removeAttribute("username");
		return "redirect:/user";
	}


	/**
	 * 通过id查询用户
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/userById/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getUserById(@PathVariable("id")Integer id){

		User user = userService.getUserById(id);
		return Msg.success().add("user", user);
	}

	/**
	 * 通过name查询用户
	 * @param name
	 * @return
	 */
	@RequestMapping(value="/userByName/{name}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getUserByName(@PathVariable("name")String name){

		User user = userService.getUserByName(name);
		return Msg.success().add("user", user);
	}


}
