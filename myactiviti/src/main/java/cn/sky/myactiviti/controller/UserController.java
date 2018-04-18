package cn.sky.myactiviti.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.sky.myactiviti.bean.User;
import cn.sky.myactiviti.dao.UserDao;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserDao userDao;
	
	@RequestMapping("/loginview")
	public String loginview(Model m) {
		List<User> list = userDao.getAll();
		m.addAttribute("userList",list);
		return "login";
	}
	
	@RequestMapping("/login")
	public String login(Model m,@RequestParam String name,HttpServletRequest request) {
		User user = userDao.getByName(name);
		if(user!=null) {
			request.getSession().setAttribute("user", user);
			return "index";
		}else {
			m.addAttribute("msg", "用户名错误");
			return "loginview";
		}
	}
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		request.getSession().removeAttribute("user");
		return "loginview";
	}
	
	@RequestMapping("/index")
	public String index(Model m) {
		return "index";
	}
}
