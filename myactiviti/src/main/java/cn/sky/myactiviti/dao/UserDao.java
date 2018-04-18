package cn.sky.myactiviti.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import cn.sky.myactiviti.bean.User;

@Mapper
public interface UserDao {
	public int add(User user);
	public User getById(int id);
	public List<User> getAll();
	public User getByName(String name);
}
