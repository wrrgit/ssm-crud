package com.copasso.crud.test;

import java.util.UUID;

import javax.swing.Spring;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.copasso.crud.bean.Department;
import com.copasso.crud.bean.Employee;
import com.copasso.crud.dao.DepartmentMapper;
import com.copasso.crud.dao.EmployeeMapper;
/**
 * 测试dao层的工作
 * @author zhouas666
 *推荐使用Spring的单元测试
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
//@ContextConfiguration(locations = {"classpath:applicationContext.xml", "file:src/main/webapp/WEB-INF/dispatcherServlet-servlet.xml"})
public class MapperTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	}

	/**
	 * 测试DepartmentMapper
	 */
	@Autowired
	DepartmentMapper departmentMapper;
	@Autowired
	EmployeeMapper emploveeMapper;
	@Autowired
	SqlSession sqlSession;
	@Test
	public void testCRUD(){
		/*	//1.创建SpringIOC容器
		ApplicationContext ioc=new ClassPathXmlApplicationContext("applicationContext.xml");
		//2.从容器中获取mapper
		DepartmentMapper bean=ioc.getBean(DepartmentMapper.class);*/

		//1.测试部门，插入几个部门
		System.out.println(departmentMapper);
		//	    departmentMapper.insert(new Department(null,"开发部"));
		//	    departmentMapper.insert(new Department(null,"测试部"));

		//2.测试员工，插入员工
		System.out.println(emploveeMapper);
		//	    emploveeMapper.insert(new Emplovee(null, "Jerry", "M", "Jerry@copasso.com", 1));

		//3.批量插入员工
		/*for(int i=0;i<10;i++){
	    	emploveeMapper.insert(new Emplovee(null, "Jerry", "M", "Jerry@copasso.com", 1));
	    }*/

		/*EmploveeMapper mapper=sqlSession.getMapper(EmploveeMapper.class);
		for(int i=0;i<100;i++){
			String uid=UUID.randomUUID().toString().substring(0,5)+i;
			mapper.insertSelective(new Emplovee(null, uid, "M", uid+"@copasso.com", 1));
		}*/

	}

}
