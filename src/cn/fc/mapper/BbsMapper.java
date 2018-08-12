package cn.fc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.fc.annotation.MyBatisRepository;
import cn.fc.entity.Bbs;
import cn.fc.entity.Comment;

@MyBatisRepository
public interface BbsMapper {
	
	public List<Bbs> findAllBbs();
	
	public void addBbs(@Param("user_id")Integer user_id,@Param("content")String content);
}
