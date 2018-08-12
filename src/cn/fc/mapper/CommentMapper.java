package cn.fc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.fc.annotation.MyBatisRepository;
import cn.fc.entity.Comment;
import cn.fc.entity.Page;

@MyBatisRepository
public interface CommentMapper {
	
	public List<Comment> findCommentById(Integer articleid);
	
	public void addComment(@Param("user_id")Integer user_id,@Param("article_id")Integer article_id,@Param("content")String content);
	
	public void delCom(@Param("id")Integer id);
	
	public List<Comment> findAllComment(Page page);
	
	public Long getCount();
}
