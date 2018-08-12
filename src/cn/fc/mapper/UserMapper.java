package cn.fc.mapper;

import org.apache.ibatis.annotations.Param;

import cn.fc.annotation.MyBatisRepository;
import cn.fc.entity.User;
@MyBatisRepository
public interface UserMapper {
	public User login(@Param("username")String username,@Param("userpwd")String userpwd);
	
	public void register(@Param("username")String username,@Param("userpwd")String userpwd);
	
	public void upUserInfo(User user);

	public User findUserInfo(Integer id);
	
	public User findUserByName(@Param("username")String username);
	
	public void addUserIntegral(@Param("integral")Integer integral,@Param("id")Integer id);
}
