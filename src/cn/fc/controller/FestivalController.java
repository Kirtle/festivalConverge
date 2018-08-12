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
import cn.fc.entity.Festival;
import cn.fc.entity.Page;
import cn.fc.entity.Sys_category;
import cn.fc.mapper.ArticleMapper;
import cn.fc.mapper.FestivalMapper;
import cn.fc.mapper.Sys_categoryMapper;

@Controller
@RequestMapping("")
public class FestivalController {
	
	private FestivalMapper festivalMapper;
	private ArticleMapper articleMapper;
	private Sys_categoryMapper sys_categoryMapper; 
	@Autowired
	public void setFestivalMapper(FestivalMapper festivalMapper) {
		this.festivalMapper = festivalMapper;
	}
	@Autowired
	public void setArticleMapper(ArticleMapper articleMapper){
		this.articleMapper = articleMapper;
	}
	@Autowired
	public void setSys_categoryMapper(Sys_categoryMapper sys_categoryMapper){
		this.sys_categoryMapper = sys_categoryMapper;
	}
	@RequestMapping("/festival")	
	public String findFestivalById(ModelMap map,Page page,HttpServletRequest request){
		String Id = request.getParameter("id");
		if (Id!=null) {
			Integer id = Integer.parseInt(Id);
			Festival festival = festivalMapper.findFestival(id);
			map.addAttribute("festival",festival);
			if(page == null)
				page = new Page();
			String pageNo = request.getParameter("pageNo");
			if(pageNo != null){
				Integer pageno = Integer.parseInt(pageNo);
				page.setPageNo(pageno);
			}
			List<Article> articles = articleMapper.findArticleByScid(id,page.getStart(),page.getPageSize());
			map.addAttribute("articles", articles);
//			List<Comment> comment = commentMapper.findCommentById(id);
//			map.addAttribute("comment", comment);
			articleMapper.updateArticleCountById(id);

			List<Sys_category> sys_category = sys_categoryMapper.findSc();
			map.addAttribute("sys_category", sys_category);
			List<Article> articleTop = articleMapper.findArticleByCount2();
			map.addAttribute("articleTop", articleTop);
			
		}
		return "festival";
	}
	
}
