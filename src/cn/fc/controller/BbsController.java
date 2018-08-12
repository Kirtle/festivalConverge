package cn.fc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.fc.entity.Article;
import cn.fc.entity.Bbs;
import cn.fc.entity.Comment;
import cn.fc.entity.Sys_category;
import cn.fc.mapper.ArticleMapper;
import cn.fc.mapper.BbsMapper;
import cn.fc.mapper.Sys_categoryMapper;
import cn.fc.mapper.UserMapper;

@Controller
@RequestMapping("")
public class BbsController {
	private BbsMapper bbsMapper;
	private UserMapper userMapper;
	private Sys_categoryMapper sys_categoryMapper; 
	private ArticleMapper articleMapper;
	
	@Autowired
	public void setBbsMapper(BbsMapper bbsMapper){
		this.bbsMapper = bbsMapper;
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
	@RequestMapping("/bbs")
	public String bbs(ModelMap map){

		List<Sys_category> sys_category = sys_categoryMapper.findSc();
		map.addAttribute("sys_category", sys_category);
		List<Bbs> bbs = bbsMapper.findAllBbs();
		map.addAttribute("bbs", bbs);
		List<Article> articleTop = articleMapper.findArticleByCount2();
		map.addAttribute("articleTop", articleTop);
		
		return "bbs";
	}
	
	@RequestMapping("/addBbs.do")
	@ResponseBody
	public void addBbs(HttpServletRequest request,Bbs bbs){
		try {
			System.out.println(bbs.getUser_id());
			System.out.println(bbs.getContent());
			bbsMapper.addBbs(bbs.getUser_id(),bbs.getContent());
			int id = Integer.parseInt(request.getParameter("user_id"));
			userMapper.addUserIntegral(5, id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
	}
}
