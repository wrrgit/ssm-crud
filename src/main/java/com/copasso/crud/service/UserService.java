package com.copasso.crud.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.copasso.crud.bean.User;
import com.copasso.crud.dao.UserMapper;

@Service
public class UserService {
	
	@Autowired
	UserMapper userMapper;
	
	/**
	 * 用户登陆验证
	 * @param user
	 * @return
	 */
	public User userLogin(User user) {
		User user2=userMapper.selectByName(user.getName());
		if(user2!=null&&user2.getPassword().equals(user.getPassword()))
		{
			return user2;
		}
		
		return null;
	}
	
	/**
	 * 按照用户id查询用户
	 * @param id
	 * @return
	 */
	public User getUserById(Integer id) {
		// TODO Auto-generated method stub
		User user = userMapper.selectByPrimaryKey(id);
		return user;
	}
	
	/**
	 * 按照用户name查询用户
	 * @param id
	 * @return
	 */
	public User getUserByName(String name) {
		// TODO Auto-generated method stub
		User user = userMapper.selectByName(name);
		return user;
	}
}
