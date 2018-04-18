package cn.sky.myactiviti.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.sky.myactiviti.bean.User;
import cn.sky.myactiviti.dao.UserDao;

@Controller
@RequestMapping("/test")
public class TestController {
	@Autowired
	private UserDao userDao;
	
	
	
	@ResponseBody
	@RequestMapping("/add")
	public String add(@RequestParam String name) {
		User user = new User();
		user.setName(name);
		userDao.add(user );
		return "ok";
	}
	@ResponseBody
	@RequestMapping("/getall")
	public List<User> getall() {
		List<User> list = userDao.getAll();
		return list;
	}
	@ResponseBody
	@RequestMapping("/getbyid")
	public User getall(@RequestParam int id) {
		User u = userDao.getById(id);
		return u;
	}
	@ResponseBody
	@RequestMapping("/getbyname")
	public User getbyname(@RequestParam String name) {
		User u = userDao.getByName(name);
		return u;
	}
}
