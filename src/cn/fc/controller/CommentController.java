package cn.fc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.fc.entity.Article;
import cn.fc.entity.Comment;
import cn.fc.entity.Page;
import cn.fc.entity.Sys_category;
import cn.fc.mapper.ArticleMapper;
import cn.fc.mapper.CommentMapper;
import cn.fc.mapper.Sys_categoryMapper;
import cn.fc.mapper.UserMapper;

@Controller
@RequestMapping("/comment")
public class CommentController {
	private ArticleMapper articleMapper;
	private CommentMapper commentMapper;
	private UserMapper userMapper;
	private Sys_categoryMapper sys_categoryMapper; 
	@Autowired
	public void setCommentMapper(CommentMapper commentMapper){
		this.commentMapper = commentMapper;
	}
	@Autowired
	public void setUserMapper(UserMapper userMapper){
		this.userMapper = userMapper;
	}
	@Autowired
	public void setSys_categoryMapper(Sys_categoryMapper sys_categoryMapper){
		this.sys_categoryMapper = sys_categoryMapper;
	}
	@Autowired
	public void setArticleMapper(ArticleMapper articleMapper){
		this.articleMapper = articleMapper;
	}
	
	@RequestMapping("/addComment.do")
	@ResponseBody
	public void addComment(HttpServletRequest request,Comment comment){
		try {
			System.out.println(comment.getUser_id());
			System.out.println(comment.getArticle_id());
			System.out.println(comment.getContent());
			commentMapper.addComment(comment.getUser_id(),comment.getArticle_id(),comment.getContent());
			int id = Integer.parseInt(request.getParameter("user_id"));
			userMapper.addUserIntegral(5, id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@RequestMapping("/CommentManage")
	public String CommentManage(ModelMap map,Page page,HttpServletRequest request){
		if(page == null)
			page = new Page();
			page.setPageSize(10);
		String pageNo = request.getParameter("pageNo");
		if(pageNo != null){
			Integer pageno = Integer.parseInt(pageNo);
			page.setPageNo(pageno);
			
		}
		List<Comment> comments = commentMapper.findAllComment(page);
		System.out.println(comments.toString());
		Long totalPage = commentMapper.getCount();
		//将数据带到页面
		map.addAttribute("comments", comments);
		map.addAttribute("totalPage", totalPage);
		map.addAttribute("page", page);

		List<Sys_category> sys_category = sys_categoryMapper.findSc();
		map.addAttribute("sys_category", sys_category);
		List<Article> articleTop = articleMapper.findArticleByCount2();
		map.addAttribute("articleTop", articleTop);
		
		return "commentManage";
		
	}
	
	@RequestMapping("/delCom")
	@ResponseBody
	public void delCom(Comment comment){
		try {
			commentMapper.delCom(comment.getId());
				} catch (Exception e) {
					e.printStackTrace();
				}
	}
	
}
